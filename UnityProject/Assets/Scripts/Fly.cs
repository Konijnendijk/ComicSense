using UnityEngine;
using System.Collections;

public class Fly : MonoBehaviour {

    public float FlySpeed=5f;
    public float MoveTime=1.5f;
    public float HangTime=1f;

    private float m_timer;
    
    private Vector3 m_flyDirection;

    public FlyState State;

    
	// Use this for initialization
	void Start () {
        m_flyDirection = new Vector3(FlySpeed / 2, 0, FlySpeed / 2);
	}

    public void FixedUpdate()
    {
        if (State==FlyState.Flying || State==FlyState.Teleporting)
        {
            gameObject.transform.position += m_flyDirection;
        }
    }

    public void OnCollisionEnter(Collision collision)
    {
        m_flyDirection = Vector3.ClampMagnitude(Quaternion.AngleAxis(Random.value * 180 - 90, Vector3.up) * collision.contacts[0].normal, FlySpeed);
        resetTimer();
        
    }

    private Vector3 chooseDirection()
    {
        float xSpeed = (Random.value>.5?1:-1) * (Random.value * FlySpeed) ;
        //float ySpeed = (Random.value>.5?1:-1) *(FlySpeed - Mathf.Abs(xSpeed)) ;
        float ySpeed = (Random.value > .5 ? 1 : -1) * Mathf.Sqrt(-(Mathf.Pow(xSpeed,2) - Mathf.Pow(FlySpeed, 2)));
        return new Vector3(xSpeed, 0, ySpeed);
    }
	
	// Update is called once per frame
	void Update () {
        m_timer += Time.deltaTime;

        if (State==FlyState.Flying){
            if (m_timer >= MoveTime)
            {
                resetTimer();
                m_flyDirection = chooseDirection();
            }
        }
        else if (State==FlyState.Idle)
        {
            if (m_timer >= HangTime)
            {
                resetTimer();
            }
        }
	}

    

    public void OnCollisionExit(Collision collision)
    {
        if (collision.gameObject.GetComponent<FlyTeleport>()!=null)
        {
            //Leaving the source teleporter
            if (State == FlyState.Teleporting)
                State = FlyState.Flying;
            //leaving the target teleporter
            else
                State = FlyState.Teleporting;
        }
            
    }

    private void resetTimer()
    {
        if (State == FlyState.Flying)
            State = FlyState.Idle;
        else if (State == FlyState.Idle)
            State = FlyState.Flying;

        m_timer = 0;
    }

    public enum FlyState
    {
        Idle,Flying,Teleporting
    }
}
