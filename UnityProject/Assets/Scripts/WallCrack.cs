using UnityEngine;
using System.Collections;

public class WallCrack : MonoBehaviour
{
  public GameObject[] m_wallCrackFiller;
  public float m_breakTime;
  float m_filledTimeStamp;

  void Start()
  {
    m_filledTimeStamp = -10000.0f;
  }

  public bool IsFilled()
  {
    return m_filledTimeStamp + m_breakTime > Time.time;
  }

  public void Fill()
  {
    m_filledTimeStamp = Time.time;
  }


  // Update is called once per frame
  void Update()
  {
    foreach(GameObject go in m_wallCrackFiller)
    {
      go.renderer.enabled = IsFilled();
    }
  }
}
