﻿using UnityEngine;
using System.Collections;

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
  GameObject m_colliderToBeCleaned;
  GameObject m_trapPreview;

  void Start()
  {
    m_state = State.IDLE;
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
    GameObject go = (GameObject)Instantiate(m_attackCollider);
    go.transform.parent = transform;
    go.transform.localPosition = new Vector3(0, 0, 1.235f);
    go.transform.localRotation = Quaternion.identity;
    m_colliderToBeCleaned = go;
    m_state = State.ATTACKING;
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
        if(m_colliderToBeCleaned != null && !IsAttacking())
        {
          Destroy(m_colliderToBeCleaned);
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
    Vector3 axisLeft = new Vector3(
      Input.GetAxis("leftStickX"),
      0.0f,
      -Input.GetAxis("leftStickY"));
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
