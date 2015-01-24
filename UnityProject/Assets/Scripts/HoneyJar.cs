using UnityEngine;
using System.Collections;

public class HoneyJar : MonoBehaviour
{
  void OnCollisionEnter(Collision collision)
  {
    if(collision.collider.tag == Globals.GI().FliesTag)
      Destroy(collision.collider.gameObject);
  }



  //void OnCollisionEnter(Collision collision)
  //{
  //  if(collider.collider.tag == Globals.GI().FliesTag)
  //    Destroy(collision.collider.gameObject);
  //}
}
