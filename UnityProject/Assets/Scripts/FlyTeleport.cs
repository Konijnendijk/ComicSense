using UnityEngine;
using System.Collections;

/// <summary>
/// Teleports flies to a different location, used for cracks in the walls.
/// </summary>
public class FlyTeleport : MonoBehaviour {

    public Transform TargetLocation;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    public void OnCollisionEnter(Collision collision)
    {
        Fly fly=collision.gameObject.GetComponent<Fly>();
        if (fly != null && fly.State!=Fly.FlyState.Teleporting)
        {
            collision.gameObject.transform.position = TargetLocation.position;
        }
    }


}
