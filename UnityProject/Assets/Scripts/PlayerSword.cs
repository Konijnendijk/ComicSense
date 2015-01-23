using UnityEngine;
using System.Collections;

public class PlayerSword : MonoBehaviour
{
  void OnTriggerEnter(Collider collider)
  {
    if(collider.tag == "Flies")
      Destroy(collider.gameObject);
  }

}
