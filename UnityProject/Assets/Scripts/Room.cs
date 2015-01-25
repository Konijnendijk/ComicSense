using UnityEngine;
using System.Collections;

public class Room : MonoBehaviour
{
  public GameObject TextBubble;
  public GameObject Canvas;
  public GameObject m_princess;

  // on-screen marker
  private GameObject m_img;

  private ScreamManager manager;

  private int m_numFlies;
  private int m_previousNumFlies;

  public void Start()
  {
    manager = GameObject.FindObjectOfType<ScreamManager>();
    Invoke("CheckFlies", manager.ScreamTime);
  }

  public void OnTriggerEnter(Collider other)
  {
    if(other.gameObject.tag == Globals.GetInstance().FliesTag)
    {
      manager.Scream(this, 1);

      if(m_previousNumFlies == 0)
      {
        bool cancelDraw;
        Vector3 screenPos = calculateScreenPos(out cancelDraw);

        if(screenPos.x > 0.99 || screenPos.y > 0.99 || screenPos.x < 0.01 || screenPos.y < 0.01)
        {
          m_img = (GameObject)Instantiate(TextBubble);
          m_img.transform.SetParent(Canvas.transform);

          setImgPos(screenPos);
        }
      }

      m_numFlies++;
    }


  }

  private void setImgPos(Vector3 screenPos)
  {
    Rect canvasRect = Canvas.GetComponent<RectTransform>().rect;
    RectTransform imgRect = m_img.GetComponent<RectTransform>();
    if(imgRect)
      imgRect.anchoredPosition = new Vector2(
        canvasRect.width * screenPos.x,
        canvasRect.height * screenPos.y);
  }

  private Vector3 calculateScreenPos(out bool cancelDraw)
  {
    Camera cam = GameObject.Find("Main Camera").GetComponent<Camera>();
    Vector3 screenPos = cam.WorldToViewportPoint(transform.position);

    if(screenPos.x > 0 && screenPos.x < 1.0f &&
      screenPos.y > 0.0f && screenPos.y < 1.0f)
    {
      cancelDraw = true;
    }
    else
      cancelDraw = false;
    screenPos.x = Mathf.Clamp(screenPos.x, 0.0f, 1.0f);
    screenPos.y = Mathf.Clamp(screenPos.y, 0.0f, 1.0f);
    return screenPos;
  }

  public void FixedUpdate()
  {
    m_previousNumFlies = m_numFlies;
    m_numFlies = 0;
  }

  public void OnTriggerStay(Collider other)
  {
    if(other.gameObject.tag == Globals.GetInstance().FliesTag)
      m_numFlies++;
  }

  public void Update()
  {
    if(m_numFlies > 0)
    {
      bool cancelDraw;
      Vector3 pos = calculateScreenPos(out cancelDraw);
      if(cancelDraw)
        pos = new Vector3(-100, -100);
      setImgPos(pos);
    }
    else if(m_img != null)
    {
      Destroy(m_img);
      m_img = null;
    }

  }

  void CheckFlies()
  {
    manager.Scream(this, m_numFlies);
    Invoke("CheckFlies", manager.ScreamTime);
  }
}
