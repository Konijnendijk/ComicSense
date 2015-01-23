using UnityEngine;
using System.Collections;

public class PlayerMovement : MonoBehaviour
{
  public float m_movementSpeed;


  void FixedUpdate()
  {
    Vector3 axisLeft = new Vector3(
      Input.GetAxis("leftStickX"),
      0.0f,
      -Input.GetAxis("leftStickY"));

    if(axisLeft != Vector3.zero)
    {
      transform.rotation = Quaternion.Slerp(
        transform.rotation,
        Quaternion.LookRotation(axisLeft, Vector3.up),
        Time.fixedDeltaTime * 5.0f
        );

      //transform.forward = axisLeft;
      transform.Translate(Vector3.forward * m_movementSpeed * Time.fixedDeltaTime);
    }
  }
}
