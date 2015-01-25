using UnityEngine;
using System.Collections;

public class Candle : MonoBehaviour
{
  public int m_fliesKilled = 0;
  public AudioClip m_flyDeathSound;
  public GameObject m_burnedCandlePrefab;

  void OnTriggerEnter(Collider col)
  {
    if(col.tag == "Flies")
    {
      if(++m_fliesKilled >= 5)
        DoDestroyThingy();

      GameObject deathSoundPlayer = new GameObject();
      AudioSource aus = deathSoundPlayer.AddComponent<AudioSource>();
      aus.clip = m_flyDeathSound;
      aus.Play();
      deathSoundPlayer.AddComponent<DestroyOnAudioClipDone>();
      deathSoundPlayer.transform.position = collider.transform.position;
      Destroy(col.gameObject);
    }
  }

  void DoDestroyThingy()
  {
    GameObject newCandle = (GameObject)Instantiate(m_burnedCandlePrefab);
    newCandle.transform.parent = transform.parent;
    newCandle.transform.localPosition = Vector3.zero;
    newCandle.transform.localRotation = Quaternion.identity;
    newCandle.transform.localScale = new Vector3(1, 1, 1);
    Destroy(gameObject);
  }
}
