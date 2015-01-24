using UnityEngine;
using System.Collections;

public class Candle : MonoBehaviour {

    public void OnTriggerEnter(Collider collision)
    {
        if (collision.gameObject.tag == Globals.GetInstance().FliesTag)
            Destroy(collision.gameObject);
    }


}
