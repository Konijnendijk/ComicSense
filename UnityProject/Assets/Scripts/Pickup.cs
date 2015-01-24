using UnityEngine;
using System.Collections;

public enum PickupType
{
  HONEY_JAR,
  CANDLE,
  NET,
  WAX,
  HERB,
  PERFUME
}


public class Pickup : MonoBehaviour
{
  public PickupType m_pickupType;
  float m_startY;
  float m_timeOffset;

  void OnCollisionEnter(Collision collision)
  {
    if(collision.collider.tag == "Player")
    {
      gameObject.GetComponent<Player>().AddItemToInventory(m_pickupType);
      Destroy(gameObject);
    }
  }

  void Start()
  {
    m_startY = transform.position.y;
    m_timeOffset = Random.Range(0.0f, 2 * Mathf.PI);
  }

  void Update()
  {
    transform.position = new Vector3(
      transform.position.x,
      m_startY + Mathf.Sin(Time.time + m_timeOffset),
      transform.position.z);
  }
}
