using UnityEngine;
using System.Collections;

public class Room : MonoBehaviour {


    private ScreamManager manager;

    private int m_numFlies;

    public void Start()
    {
        manager=GameObject.FindObjectOfType<ScreamManager>();
        Invoke("CheckFlies", manager.ScreamTime);
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == Globals.GetInstance().FliesTag)
        {
            manager.Scream(this,1);
            m_numFlies++;
        }
    }

    public void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == Globals.GetInstance().FliesTag)
        {
            m_numFlies--;
        }
    }



    void CheckFlies()
    {
        manager.Scream(this, m_numFlies);
        Invoke("CheckFlies", manager.ScreamTime);
    }
}
