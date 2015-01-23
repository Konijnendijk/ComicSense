using UnityEngine;
using System.Collections;

/// <summary>
/// Spawns flies at a random location from a list at a set interval.
/// </summary>
public class FlySpawner : MonoBehaviour {

    // Locations where flies can spawn
    public Vector3[] SpawnLocations;
    public float SpawnInterval=5f;

    public GameObject FlyPrefab;

    private float m_timer;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        m_timer += Time.deltaTime;

        if (m_timer >= SpawnInterval)
        {
            spawn();
            m_timer = 0;
        }
	}

    private void spawn()
    {
        GameObject fly = (GameObject)Instantiate(FlyPrefab);

        Vector3 pos = SpawnLocations[Random.Range(0, SpawnLocations.Length)];
        fly.transform.position = new Vector3(pos.x, pos.y, pos.z);
    }
}
