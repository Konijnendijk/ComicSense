using UnityEngine;
using System.Collections;

public class PlayerSword : MonoBehaviour
{
  public AudioClip m_flyDeathSound;
  void OnTriggerEnter(Collider collider)
  {
    if(collider.tag == "Flies")
    {

      GameObject deathSoundPlayer = new GameObject();
      AudioSource aus = deathSoundPlayer.AddComponent<AudioSource>();
      aus.clip = m_flyDeathSound;
      aus.Play();
      deathSoundPlayer.AddComponent<DestroyOnAudioClipDone>();
      deathSoundPlayer.transform.position = collider.transform.position;
      Destroy(collider.gameObject);

    }
  }

}
