using UnityEngine;
using System.Collections;

public class WallCrack : MonoBehaviour
{
  public GameObject m_wallCrackFiller;
  public float m_breakTime;
  float m_filledTimeStamp;


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
    m_wallCrackFiller.renderer.enabled = IsFilled();
  }
}
