using UnityEngine;
using System.Collections;

public class CameraMovement : MonoBehaviour
{
  public GameObject m_player;
  public Vector3 m_cameraPosOffset;
  public float m_deadZone;

  void Start()
  {
    //transform.position = m_player.transform.position + m_cameraPosOffset;
  }

  void Update()
  {
    //Vector3 targetPos = m_player.transform.position + m_cameraPosOffset;
    //if((transform.position - targetPos).sqrMagnitude < m_deadZone * m_deadZone)
    //  transform.position = targetPos;
    //else
    //{
    //  transform.position = Vector3.Lerp(
    //    transform.position,
    //    m_player.transform.position + m_cameraPosOffset,
    //    Time.deltaTime * 5.0f
    //    );
    //}

    transform.parent.position = m_player.transform.position;

    float axis = Input.GetAxis("rightStickX");
    transform.parent.Rotate(new Vector3(0, axis * 180.0f / Mathf.PI * 2.0f * Time.deltaTime, 0));
    //transform.parent.rotation =
    //  Quaternion.Euler(new Vector3(0, axis * 2.0f, 0)) * transform.parent.rotation;
  }
}
