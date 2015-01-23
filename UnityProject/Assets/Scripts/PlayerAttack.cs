using UnityEngine;
using System.Collections;

public class PlayerAttack : MonoBehaviour
{
  public float m_attackDelay;
  public GameObject m_attackCollider;
  float m_lastAttackTime;
  
  GameObject m_colliderToBeCleaned;


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
    if(m_colliderToBeCleaned != null)
      Destroy(m_colliderToBeCleaned);

    if(Input.GetButtonDown("Attack") &&
      m_lastAttackTime + m_attackDelay < Time.time)
    {
      m_lastAttackTime = Time.time;
      Attack();
    }
  }

}
