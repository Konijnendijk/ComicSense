using UnityEngine;
using System.Collections;

public class PickupSpawner : MonoBehaviour
{
  public Transform[] m_transforms;
  public float m_minSpawnDelay = 3.0f, m_maxSpawnDelay = 6.0f;
  public float m_lastSpawnTimestamp;

  public GameObject[] m_pickupPrefabs;

  float m_spawnDelay;

  void Start()
  {
    m_lastSpawnTimestamp = Time.time;
    m_spawnDelay = Random.Range(m_minSpawnDelay, m_maxSpawnDelay);
  }


  bool ShouldSpawn()
  {
    return m_lastSpawnTimestamp + m_spawnDelay < Time.time;
  }

  bool PickSpawnPoint(out Transform trans)
  {
    int tries = 0;
    do
    {
      int idx = Random.Range(0, m_transforms.Length - 1);
      trans = m_transforms[idx];
      ++tries;
    } while(trans.childCount > 0 && tries < 15);
    return tries < 15;
  }

  PickupType WeightedRandItemType()
  {
    int i = Random.Range(1, 100);
    if(i < 20) //20%
      return PickupType.HONEY_JAR;
    else if(i < 20 + 80) //80%
      return PickupType.CANDLE;
    return PickupType.CANDLE;
  }

  void SpawnItem(Transform trans, PickupType pt)
  {
    GameObject item = (GameObject)Instantiate(m_pickupPrefabs[(int)pt]);
    //item.transform.position = trans.position;
    item.transform.parent = trans;
    item.transform.localPosition = Vector3.zero;
  }

  // Update is called once per frame
  void Update()
  {
    if(ShouldSpawn())
    {
      Transform trans;
      if(PickSpawnPoint(out trans))
      {
        PickupType pt = WeightedRandItemType();
        SpawnItem(trans, pt);
      }
      m_lastSpawnTimestamp = Time.time;
      m_spawnDelay = Random.Range(m_minSpawnDelay, m_maxSpawnDelay);
    }
  }
}
