using UnityEngine;
using System.Collections;

public class CameraMovement : MonoBehaviour
{
  public GameObject m_player;
  public Vector3 m_cameraPosOffset;
  public float m_deadZone;

  void Update()
  {
    Vector3 targetPos = m_player.transform.position + m_cameraPosOffset;
    if((transform.position - targetPos).sqrMagnitude < m_deadZone * m_deadZone)
      transform.position = targetPos;
    else
    {
      transform.position = Vector3.Lerp(
        transform.position,
        m_player.transform.position + m_cameraPosOffset,
        Time.deltaTime * 5.0f
        );
    }
  }
}
