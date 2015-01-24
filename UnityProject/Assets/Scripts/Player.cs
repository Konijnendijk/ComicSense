using UnityEngine;
using System.Collections;

public class Player : MonoBehaviour
{

  enum State
  {
    IDLE,
    ATTACKING,
    SELECTING_TRAP
  }

  public float m_movementSpeed;
  public float m_attackDelay;
  public float m_swingTime;
  public GameObject m_attackCollider;
  float m_lastAttackTime;

  GameObject m_colliderToBeCleaned;

  bool IsAttacking()
  {
    return m_lastAttackTime + m_swingTime >= Time.time;
  }

  void Attack()
  {
    GameObject go = (GameObject)Instantiate(m_attackCollider);
    go.transform.parent = transform;
    go.transform.localPosition = new Vector3(0, 0, 1.235f);
    go.transform.localRotation = Quaternion.identity;
    m_colliderToBeCleaned = go;
  }

  void Update()
  {
    if(m_colliderToBeCleaned != null && !IsAttacking())
    {
      Destroy(m_colliderToBeCleaned);
    }

    if(Input.GetButtonDown("Attack") &&
      m_lastAttackTime + m_attackDelay < Time.time)
    {
      m_lastAttackTime = Time.time;
      Attack();
    }
  }


  // Update is called once per frame
  void FixedUpdate()
  {
    Vector3 axisLeft = new Vector3(
        Input.GetAxis("leftStickX"),
        0.0f,
        -Input.GetAxis("leftStickY"));

    if(axisLeft != Vector3.zero && !IsAttacking())
    {
      transform.rotation = Quaternion.Slerp(
        transform.rotation,
        Quaternion.LookRotation(axisLeft, Vector3.up),
        Time.fixedDeltaTime * 5.0f
        );

      //transform.forward = axisLeft;
      transform.Translate(Vector3.forward * axisLeft.magnitude * m_movementSpeed * Time.fixedDeltaTime);
    }
  }
}
