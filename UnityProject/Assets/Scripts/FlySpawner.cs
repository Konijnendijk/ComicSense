using UnityEngine;
using System.Collections;

/// <summary>
/// Spawns flies at a random location from a list at a set interval.
/// </summary>
public class FlySpawner : MonoBehaviour {

    public int MaxFliesInGame;

    // Locations where flies can spawn
    public Transform[] SpawnLocations;
    public float SpawnInterval=5f;

    public GameObject FlyPrefab;

    private float m_timer;
    private int m_fliesInGame;

	// Use this for initialization
	void Start () {
        InvokeRepeating("spawn", SpawnInterval, SpawnInterval);
	}

    public void FlyDied()
    {
        m_fliesInGame--;
    }

    private void spawn()
    {
        if (m_fliesInGame < MaxFliesInGame)
        {
            GameObject fly = (GameObject)Instantiate(FlyPrefab);

            Vector3 pos = SpawnLocations[Random.Range(0, SpawnLocations.Length)].position;
            fly.transform.position = new Vector3(pos.x, pos.y, pos.z);

            m_timer = 0;
            m_fliesInGame++;
        }
    }
}
