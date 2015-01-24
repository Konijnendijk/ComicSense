using UnityEngine;
using System.Collections;

public class FlyRotations : MonoBehaviour
{

  public float m_angVelocityMin;
  public float m_angVelocityMax;

  Vector3 m_angVelocity;

  // Use this for initialization
  void Start()
  {
    m_angVelocity = new Vector3(
      Random.Range(m_angVelocityMin, m_angVelocityMax),
      Random.Range(m_angVelocityMin, m_angVelocityMax),
      Random.Range(m_angVelocityMin, m_angVelocityMax)
      );
  }

  // Update is called once per frame
  void Update()
  {
    transform.Rotate(m_angVelocity * Time.deltaTime);
  }
}
