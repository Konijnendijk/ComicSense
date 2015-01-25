using UnityEngine;
using System.Collections;

public class RoomCollider : MonoBehaviour
{
  public int flyCollisions { get { return m_lastFlyCollisions; } }

  int m_lastFlyCollisions;
  int m_flyCollisions;


  void OnTriggerStay(Collider col)
  {
    if(col.collider.tag == "Flies")
      m_flyCollisions++;
  }

  // Use this for initialization
  void Start()
  {
    m_flyCollisions = m_lastFlyCollisions = 0;
  }

  // Update is called once per frame
  void FixedUpdate()
  {
    m_lastFlyCollisions = m_flyCollisions;
    m_flyCollisions = 0;
  }
}
