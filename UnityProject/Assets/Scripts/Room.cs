using UnityEngine;
using System.Collections;

public class Room : MonoBehaviour {

    public void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == Globals.GetInstance().FliesTag)
        {
            GameObject.FindObjectOfType<ScreamManager>().Scream(this);
        }
    }
}
