using UnityEngine;
using System.Collections;

public class TowerPreview : MonoBehaviour
{
  public bool placable
  {
    get
    {
      for(int i = 0; i < m_intersecting.Length; ++i)
        if(m_intersecting[i])
          return false;
      return true;
    }
  }

  int m_objectsCollidingWith = 0;
  bool[] m_intersecting = new bool[1];

  void OnTriggerEnter(Collider col)
  {
    m_objectsCollidingWith++;
  }
  void OnTriggerExit(Collider col)
  {
    m_objectsCollidingWith--;
  }
  void OnTriggerStay(Collider col)
  {
    m_objectsCollidingWith++;
  }

  // Use this for initialization
  void Start()
  {

  }


  bool CheckRaycast()
  {
    //int i = Physics.DefaultRaycastLayers;
    //;
    //Debug.Log(mask.value.ToString("X"));

    Vector3 d = transform.parent.position - transform.position;
    Ray ray = new Ray(transform.position, d);
    int mask =
      ~Physics.DefaultRaycastLayers |
      LayerMask.NameToLayer("FlyTrigger");

    RaycastHit hitInfo;
    if(Physics.Raycast(ray, out hitInfo, d.magnitude, mask))
    {
      if(hitInfo.collider.transform != transform.parent)
        return false;
    }
    return true;
  }

  // Update is called once per frame
  void FixedUpdate()
  {
    //shift one to the left
    for(int i = 0; i < m_intersecting.Length - 1; ++i)
      m_intersecting[i] = m_intersecting[i + 1];

    //if we are colliding with something or can't reach the playaer with a raycast
    m_intersecting[m_intersecting.Length - 1] = m_objectsCollidingWith > 0 || !CheckRaycast();
    m_objectsCollidingWith = 0;

    renderer.material.color =
      !placable ? new Color(1, 0, 0, .5f) : new Color(0, 1, 0, .5f);

  }
}
