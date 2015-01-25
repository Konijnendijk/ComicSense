using UnityEngine;
using System.Collections;

public class HoneyJar : MonoBehaviour
{
  public AudioClip m_flyDeathSound;

  void OnCollisionEnter(Collision collision)
  {
    if(collision.collider.tag == Globals.GI().FliesTag)
    {
      GameObject deathSoundPlayer = new GameObject();
      AudioSource aus = deathSoundPlayer.AddComponent<AudioSource>();
      aus.clip = m_flyDeathSound;
      aus.Play();
      deathSoundPlayer.AddComponent<DestroyOnAudioClipDone>();
      deathSoundPlayer.transform.position = collider.transform.position;
      Destroy(collision.gameObject);
    }
  }



  //void OnCollisionEnter(Collision collision)
  //{
  //  if(collider.collider.tag == Globals.GI().FliesTag)
  //    Destroy(collision.collider.gameObject);
  //}
}
