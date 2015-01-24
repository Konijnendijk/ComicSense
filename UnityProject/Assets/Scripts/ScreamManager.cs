using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ScreamManager : MonoBehaviour {

    public Image ScreamMeter;
    public Image North, East, South, West;

    public Transform Knight;

    //The amount of scream being subtracted every second
    public float RecoveryPerSecond;

    //Amount of scream to be added when a princess screams
    public float ScreamIncrement;

    //Time untill a princess screams again
    public float ScreamTime;

    // 0 is no screams, 1 is game over
    private float m_scream;

    /// <summary>
    /// Princess screams, play sound and add to scream meter
    /// </summary>
    public void Scream (Room room, int numFlies){
        m_scream += ScreamIncrement * numFlies;       
    }

    public void Update()
    {
        m_scream -= m_scream<0?0:  RecoveryPerSecond * Time.deltaTime;
        ScreamMeter.fillAmount = m_scream;
    }
	
}
