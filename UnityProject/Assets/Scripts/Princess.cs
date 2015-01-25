using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Princess : MonoBehaviour
{
  public GameObject[] m_colliders;
  public Texture m_idleTexture;
  public Texture m_screamingTexture;
  public AudioClip[] m_screamingSounds;

  float m_lastScreamTime;
  float m_screamDelay;
  int m_lastPlayedIndex = -1;
  private ScreamManager manager;

  void SetTextures(Texture t)
  {
    Renderer[] renderers = GetComponentsInChildren<Renderer>();
    foreach(Renderer r in renderers)
    {
      for(int i = 0; i < r.materials.Length; ++i)
        r.materials[i].SetTexture(0, t);
    }
  }

  bool IsScreaming()
  {
    return m_lastScreamTime + m_screamDelay > Time.time;
  }

  void Scream()
  {
    m_screamDelay = Random.Range(5.0f, 7.5f);
    m_lastScreamTime = Time.time;
    int idx = Random.Range(0, m_screamingSounds.Length - 1);
    if(idx == m_lastPlayedIndex)
      idx = (idx + 1) %  m_screamingSounds.Length;
    audio.clip = m_screamingSounds[idx];
    audio.Play();
    manager.Scream();
  }

  // Use this for initialization
  void Start()
  {
    SetTextures(m_idleTexture);
    manager = GameObject.FindObjectOfType<ScreamManager>();
  }

  // Update is called once per frame
  void FixedUpdate()
  {
    int flyCount = 0;
    foreach(GameObject go in m_colliders)
      flyCount += go.GetComponent<RoomCollider>().flyCollisions;

    SetTextures(flyCount > 0 ? m_screamingTexture : m_idleTexture);

    if(flyCount > 0 && !IsScreaming())
      Scream();


  }


}
