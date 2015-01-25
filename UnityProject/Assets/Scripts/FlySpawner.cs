using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

/// <summary>
/// Spawns flies at a random location from a list at a set interval.
/// </summary>
public class FlySpawner : MonoBehaviour
{

  public Wave[] Waves;

  // Locations where flies can spawn
  public Transform[] SpawnLocations;
  public float SpawnInterval = 5f;

  public GameObject FlyPrefab;

  public Text WaveText;
  public Text FliesText;

  private int m_fliesInGame;
  private int m_maxFliesInGame;
  private int m_fliesToKill;
  private int m_waveSize;
  private int m_currentWaveIndex = -1;

  // Use this for initialization
  void Start()
  {
    nextWave();
    InvokeRepeating("spawn", SpawnInterval, SpawnInterval);
    setFliesText();
  }

  public void FlyDied()
  {
    m_fliesInGame--;
    m_fliesToKill--;
    if(m_fliesToKill == 0)
      nextWave();

    setFliesText();
  }

  private void spawn()
  {
    if(m_fliesInGame < m_maxFliesInGame && m_fliesToKill > m_fliesInGame)
    {
      GameObject fly = (GameObject)Instantiate(FlyPrefab);

      Transform spawnLocation = SpawnLocations[Random.Range(0, SpawnLocations.Length)];
      Vector3 pos = spawnLocation.position;
      fly.transform.position = new Vector3(pos.x, pos.y, pos.z);

      Fly flyFly = fly.GetComponent<Fly>();
      fly.GetComponent<Fly>().SetSpawnTarget(spawnLocation.GetComponent<FlySpawnPoint>().m_spawnTarget.position);

      m_fliesInGame++;
    }
  }

  private void setFliesText()
  {
    FliesText.text = string.Format("Fly {0}/{1}", m_waveSize - m_fliesToKill, m_waveSize);
  }

  private void nextWave()
  {
    //repeat the last wave 
    m_currentWaveIndex = m_currentWaveIndex == Waves.Length - 1 ? m_currentWaveIndex : m_currentWaveIndex + 1;
    Wave wave = Waves[m_currentWaveIndex];
    m_maxFliesInGame = wave.MaxFlies;
    m_fliesToKill = wave.WaveSize;
    m_waveSize = wave.WaveSize;

    WaveText.text = string.Format("Wave {0}/{1}", m_currentWaveIndex + 1, Waves.Length);

    Debug.Log(string.Format("Wave {0}", m_currentWaveIndex));
  }
}

[System.Serializable]
public class Wave
{
  public int WaveSize;
  public int MaxFlies;
}