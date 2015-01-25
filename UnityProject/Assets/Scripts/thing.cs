using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class thing : MonoBehaviour
{

  Princess[] m_princesses;
  bool[] m_screaming;
  float m_time;

  // Use this for initialization
  void Start()
  {
    m_princesses = FindObjectsOfType<Princess>();
    m_screaming = new bool[m_princesses.Length];
  }

  // Update is called once per frame
  void Update()
  {
    bool anyScreaming = false;
    for(int i = 0; i < m_princesses.Length; ++i)
    {
      if(m_princesses[i].IsScreaming())
      {
        anyScreaming = true;
        break;
      }
    }

    if(anyScreaming)
      m_time += Time.deltaTime;
    else
      m_time = 0;

    if(m_time >= 30)
      Application.LoadLevel("gameOver");

    GameObject meter = GameObject.Find("ScreamMeter");
    meter.GetComponent<Image>().fillAmount = m_time / 30.0f;
  }
}
