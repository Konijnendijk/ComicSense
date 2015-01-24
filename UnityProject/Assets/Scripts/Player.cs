using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class Player : MonoBehaviour
{
  enum State
  {
    IDLE,
    ATTACKING,
    PLACING_TRAP
  }


  public float m_movementSpeed;
  public float m_attackDelay;
  public float m_swingTime;
  public GameObject m_attackCollider;
  public GameObject[] m_traps;
  public GameObject[] m_trapPreviews;
  float m_lastAttackTime;
  State m_state;
  GameObject m_trapPreview;
  Animator m_animator;

  void Start()
  {
    m_state = State.IDLE;
    m_animator = GetComponentInChildren<Animator>();
  }

  void EnterTrapPlacingMode()
  {
    m_trapPreview = (GameObject)Instantiate(m_trapPreviews[0]);
    m_trapPreview.transform.parent = transform;
    m_trapPreview.transform.localPosition = new Vector3(0, 0, 0);
    m_trapPreview.transform.rotation = Quaternion.identity;

    if(m_trapPreview.GetComponent<CapsuleCollider>())
      m_trapPreview.GetComponent<CapsuleCollider>().radius /= 1.05f;
    if(m_trapPreview.GetComponent<BoxCollider>())
      m_trapPreview.GetComponent<BoxCollider>().size /= 1.05f;
    m_trapPreview.transform.localScale *= 1.01f;
    SetTrapPos(m_trapPreview, new Vector3(0, 0, 1));
    Time.timeScale = 0.3f;
  }
  void ExitTrapPlacingMode()
  {
    Destroy(m_trapPreview);
    Time.timeScale = 1.0f;
  }
  void Attack()
  {
    m_attackCollider.GetComponent<BoxCollider>().enabled = true;
    m_state = State.ATTACKING;
    audio.Play();
  }

  bool IsAttacking()
  {
    return m_lastAttackTime + m_swingTime >= Time.time;
  }

  void SetTrapPos(GameObject trap, Vector3 dir)
  {
    if(dir != Vector3.zero)
    {
      float len = dir.magnitude;
      float newLen = Mathf.Clamp(len, 1.5f, 3.0f);
      dir = dir / len * newLen;

      if(!Globals.IsNaN(dir))
      {
        Quaternion invRot = Quaternion.Inverse(transform.rotation);
        m_trapPreview.transform.localPosition = invRot * dir;
        m_trapPreview.transform.position =
          Globals.GI().SnapPositionToGrid(m_trapPreview.transform.position);

        m_trapPreview.transform.rotation = Quaternion.identity;
      }
    }
  }

  void Update()
  {
    m_animator.SetInteger("State", (int)m_state);
    switch(m_state)
    {
      case State.IDLE:
        if(Input.GetButtonDown("Attack") &&
          m_lastAttackTime + m_attackDelay < Time.time)
        {
          m_lastAttackTime = Time.time;
          Attack();
        }
        if(Input.GetButton("TrapPlacingMode") && !IsAttacking())
        {
          m_state = State.PLACING_TRAP;
          EnterTrapPlacingMode();
        }
        break;
      case State.ATTACKING:
        if(m_attackCollider.GetComponent<BoxCollider>().enabled && !IsAttacking())
        {
          m_attackCollider.GetComponent<BoxCollider>().enabled = false;
          m_state = State.IDLE;
        }
        break;
      case State.PLACING_TRAP:
        if(Input.GetButtonDown("TrapPlacingDown"))
        {
          if(m_trapPreview.GetComponent<TowerPreview>().placable)
          {
            Instantiate(
              m_traps[0],
              m_trapPreview.transform.position,
              m_trapPreview.transform.rotation);
          }
        }
        if(!Input.GetButton("TrapPlacingMode"))
        {
          ExitTrapPlacingMode();
          m_state = State.IDLE;
        }
        break;
    }
  }

  // Update is called once per frame
  void FixedUpdate()
  {
    Vector3 forward = Camera.main.transform.forward;
    forward.y = 0;
    forward = forward.normalized;
    Vector3 up = Vector3.up;
    Vector3 right = Vector3.Normalize(Vector3.Cross(forward, up));
    up = Vector3.Cross(right, forward);

    Matrix4x4 matrix = new Matrix4x4();
    matrix.SetColumn(0, new Vector4(right.x, right.y, right.z, 0.0f));
    matrix.SetColumn(1, new Vector4(up.x, up.y, up.z, 0.0f));
    matrix.SetColumn(2, new Vector4(forward.x, forward.y, forward.z, 0.0f));
    matrix.SetColumn(3, new Vector4(0.0f, 0.0f, 0.0f, 1.0f));

    Vector4 axis4 = matrix * new Vector4(
      -Input.GetAxis("leftStickX"),
      0.0f,
      -Input.GetAxis("leftStickY"),
      0.0f);
    Vector3 axisLeft = new Vector3(axis4.x, axis4.y, axis4.z);

    m_animator.SetFloat("speed", axisLeft.magnitude);

    switch(m_state)
    {
      case State.IDLE:
        {
          if(axisLeft != Vector3.zero)
          {
            transform.rotation = Quaternion.Slerp(
              transform.rotation,
              Quaternion.LookRotation(axisLeft, Vector3.up),
              Time.fixedDeltaTime * 5.0f
              );

            //transform.forward = axisLeft;
            transform.Translate(
              Vector3.forward * axisLeft.magnitude *
              m_movementSpeed * Time.fixedDeltaTime);

          }
        }
        break;
      case State.ATTACKING:
        break;
      case State.PLACING_TRAP:

        SetTrapPos(m_trapPreview, axisLeft * 3.0f);
        break;
    }
  }
}
