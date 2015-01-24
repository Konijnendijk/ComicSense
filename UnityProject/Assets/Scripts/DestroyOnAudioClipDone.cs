using UnityEngine;
using System.Collections;

public class DestroyOnAudioClipDone : MonoBehaviour
{

  void Update()
  {
    if(!audio.isPlaying)
      Destroy(gameObject);
  }
}
