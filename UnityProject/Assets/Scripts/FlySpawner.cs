using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Spawns flies at a random location from a list at a set interval.
/// </summary>
public class FlySpawner : MonoBehaviour {

    public Wave[] Waves;

    // Locations where flies can spawn
    public Transform[] SpawnLocations;
    public float SpawnInterval=5f;

    public GameObject FlyPrefab;

    private int m_fliesInGame;
    private int m_maxFliesInGame;
    private int m_fliesToKill;
    private int m_currentWaveIndex=-1;

	// Use this for initialization
	void Start () {
        nextWave();
        InvokeRepeating("spawn", SpawnInterval, SpawnInterval);
	}

    public void FlyDied()
    {
        m_fliesInGame--;
        m_fliesToKill--;
        if (m_fliesToKill == 0)
            nextWave();
    }

    private void spawn()
    {
        if (m_fliesInGame < m_maxFliesInGame && m_fliesToKill>m_fliesInGame)
        {
            GameObject fly = (GameObject)Instantiate(FlyPrefab);

            Vector3 pos = SpawnLocations[Random.Range(0, SpawnLocations.Length)].position;
            fly.transform.position = new Vector3(pos.x, pos.y, pos.z);

            m_fliesInGame++;
        }
    }

    private void nextWave()
    {
        //repeat the last wave 
        m_currentWaveIndex= m_currentWaveIndex==Waves.Length-1? m_currentWaveIndex: m_currentWaveIndex+1;
        Wave wave=Waves[m_currentWaveIndex];
        m_maxFliesInGame = wave.MaxFlies;
        m_fliesToKill = wave.WaveSize;

        Debug.Log(string.Format("Wave {0}", m_currentWaveIndex));
    }
}

[System.Serializable]
 public class Wave
{
    public int WaveSize;
    public int MaxFlies;
}