using UnityEngine;
using System.Collections;

public class Door : MonoBehaviour
{
  bool m_open = false;
  Quaternion m_startRotation;

  void OnTriggerEnter(Collider col)
  {
    if(col.tag == "Player")
    {
      m_open = true;
    }
  }
  void OnTriggerExit(Collider col)
  {
    if(col.tag == "Player")
    {
      m_open = false;
    }
  }


  // Use this for initialization
  void Start()
  {
    m_startRotation = transform.rotation;
  }

  // Update is called once per frame
  void Update()
  {

    Quaternion targetRotation;
    if(m_open)
      targetRotation = Quaternion.Euler(0, 90, 0) * m_startRotation;
    else
      targetRotation = m_startRotation;

    transform.rotation = Quaternion.Slerp(
      transform.rotation,
      targetRotation,
      Time.deltaTime * 5.0f
      );
  }
}
