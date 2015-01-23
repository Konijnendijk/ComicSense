using UnityEngine;
using System.Collections;

public class Fly : MonoBehaviour {

    public float FlySpeed=5f;
    public float MoveTime=1.5f;
    public float HangTime=1f;

    private float m_timer;
    private bool m_flying;
    
    private Vector3 m_flyDirection;
    
	// Use this for initialization
	void Start () {
        m_flyDirection = new Vector3(FlySpeed / 2, 0, FlySpeed / 2);
	}

    public void FixedUpdate()
    {
        if (m_flying)
        {
            gameObject.transform.position += m_flyDirection;
        }
    }

    public void OnCollisionEnter(Collision collision)
    {
        m_flyDirection = -m_flyDirection;
        resetTimer();
    }

    private Vector3 chooseDirection()
    {
        float xSpeed = (Random.value>.5?1:-1) * (Random.value * FlySpeed) ;
        float ySpeed = (Random.value>.5?1:-1) *(FlySpeed - Mathf.Abs(xSpeed)) ;
        return new Vector3(xSpeed, 0, ySpeed);
    }
	
	// Update is called once per frame
	void Update () {
        m_timer += Time.deltaTime;

        if (m_flying){
            if (m_timer >= MoveTime)
            {
                resetTimer();
                m_flyDirection = chooseDirection();
            }
        }
        else
        {
            if (m_timer >= HangTime)
            {
                resetTimer();
            }
        }
	}

    private void resetTimer()
    {
        m_flying = !m_flying;
        m_timer = 0;
    }
}
