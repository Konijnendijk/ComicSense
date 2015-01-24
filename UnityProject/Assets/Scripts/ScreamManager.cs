using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ScreamManager : MonoBehaviour {

    public Image ScreamMeter;

    //The amount of scream being subtracted every second
    public float RecoveryPerSecond;

    //Amount of scream to be added when a princess screams
    public float ScreamIncrement;

    //Time untill a princess screams again
    public float ScreamTime;

    // 0 is no screams, 1 is game over
    private float m_scream;

    /*public void Start()
    {
        North.enabled = false;
        East.enabled = false;
        South.enabled = false;
        West.enabled = false;
    }*/



    /// <summary>
    /// Princess screams, play sound and add to scream meter
    /// </summary>
    public void Scream (Room room, int numFlies){
        m_scream += ScreamIncrement * numFlies;
    }

    IEnumerator FadeOut(GameObject img)
    {
        Material mat = img.GetComponent<Image>().material;
        float newAlpha=mat.color.a- 5f * Time.deltaTime;
        mat.color = new Color(mat.color.r,mat.color.g,mat.color.b, newAlpha<0?0:newAlpha );

        if (mat.color.a <= 0)
            Destroy( img.gameObject);
        else
            yield return null;
    }

    public void Update()
    {
        m_scream -= m_scream<0?0:  RecoveryPerSecond * Time.deltaTime;
        ScreamMeter.fillAmount = m_scream;
    }
	
}
