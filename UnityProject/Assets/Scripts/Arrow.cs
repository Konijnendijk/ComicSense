using UnityEngine;
using System.Collections;

public class Arrow : MonoBehaviour
{

  float m_startY;
  // Use this for initialization
  void Start()
  {
    m_startY = transform.position.y;
  }

  // Update is called once per frame
  void Update()
  {
    transform.LookAt(Camera.main.transform);
    
    transform.localPosition = new Vector3(
      transform.localPosition.x,
      m_startY + Mathf.Sin(Time.time * 2.0f) * .5f,
      transform.localPosition.z
      );
  }
}
