using UnityEngine;
using System.Collections;

public class Window : MonoBehaviour
{
  public Transform m_candleHolder;
  public GameObject m_candlePrefab;
  public GameObject m_burnedCandlePrefab;

  public bool HasCandleOrWax()
  {
    return m_candleHolder.transform.childCount > 0;
  }

  public void PlaceCandle()
  {
    if(HasCandleOrWax())
    {
      Debug.LogError("Window already holding candle");
      return;
    }

    GameObject go = (GameObject)Instantiate(m_candlePrefab);
    go.transform.parent = m_candleHolder;
    go.transform.localPosition = Vector3.zero;
    go.transform.localRotation = Quaternion.identity;
    go.transform.localScale = new Vector3(1, 1, 1);
  }

}
