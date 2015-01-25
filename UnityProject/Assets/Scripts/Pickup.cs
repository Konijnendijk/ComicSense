using UnityEngine;
using System.Collections;

public enum PickupType
{
  HONEY_JAR,
  CANDLE,
  WAX,
  HERB,
  PERFUME,
  SIZE
}


public class Pickup : MonoBehaviour
{
  public PickupType m_pickupType;
  float m_startY;
  float m_timeOffset;

  void OnTriggerEnter(Collider col)
  {
    if(col.tag == "Player")
    {
      Globals.GI().inventory.AddItem(m_pickupType);
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
      m_startY + Mathf.Sin(Time.time * 3.0f + m_timeOffset) * .25f,
      transform.position.z);
    transform.Rotate(new Vector3(0, 20, 0) * Time.deltaTime);
  }
}
