using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Princess : MonoBehaviour
{
  public GameObject[] m_colliders;
  public Texture m_idleTexture;
  public Texture m_screamingTexture;
  public AudioClip[] m_screamingSounds;
  public GameObject TextBubble;

  float m_lastScreamTime;
  float m_screamDelay;
  int m_lastPlayedIndex = -1;
  private ScreamManager m_manager;
  private Canvas m_canvas;
  private GameObject m_marker;

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
    m_screamDelay = Random.Range(50.0f, 75f);
    m_lastScreamTime = Time.time;
    int idx = Random.Range(0, m_screamingSounds.Length - 1);
    if(idx == m_lastPlayedIndex)
      idx = (idx + 1) %  m_screamingSounds.Length;
    audio.clip = m_screamingSounds[idx];
    audio.Play();
    m_manager.Scream();
  }

  // Use this for initialization
  void Start()
  {
    SetTextures(m_idleTexture);
    m_manager = GameObject.FindObjectOfType<ScreamManager>();
    m_canvas = GameObject.Find("ScreamUI").GetComponent<Canvas>();
  }

  // Update is called once per frame
  void FixedUpdate()
  {
    int flyCount = 0;
    foreach(GameObject go in m_colliders)
      flyCount += go.GetComponent<RoomCollider>().flyCollisions;

    SetTextures(flyCount > 0 ? m_screamingTexture : m_idleTexture);

    if (flyCount > 0 && !IsScreaming())
    {
        Scream();
        placeMarker();
    }
    else if (flyCount > 0 && IsScreaming())
    {
        if (m_marker != null)
        {
            Vector3 screenPos = calculateScreenPos();
                setImgPos(screenPos);
        }
        else
            placeMarker();

    }
    else {
        destroyMarker();
    }


  }

  private void destroyMarker()
  {
      Destroy(m_marker);
      m_marker = null;
  }

  private void placeMarker()
  {
      destroyMarker();

    Vector3 screenPos = calculateScreenPos();

        m_marker = (GameObject)Instantiate(TextBubble);
        m_marker.transform.SetParent(m_canvas.transform);

        setImgPos(screenPos);
  }

  private void setImgPos(Vector3 screenPos)
  {
      Rect canvasRect = m_canvas.GetComponent<RectTransform>().rect;
      RectTransform imgRect = m_marker.GetComponent<RectTransform>();
      if (imgRect)
          imgRect.anchoredPosition = new Vector2(
            canvasRect.width * screenPos.x,
            canvasRect.height * screenPos.y);
  }

  private Vector3 calculateScreenPos()
  {
      Camera cam = GameObject.Find("Main Camera").GetComponent<Camera>();
      Vector3 screenPos = cam.WorldToViewportPoint(transform.position);

      screenPos.x = Mathf.Clamp(screenPos.x, 0.0f, 1.0f);
      screenPos.y = Mathf.Clamp(screenPos.y, 0.0f, 1.0f);
      return screenPos;
  }


}
