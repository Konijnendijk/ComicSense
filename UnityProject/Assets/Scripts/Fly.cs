using UnityEngine;
using System.Collections;

public class Fly : MonoBehaviour
{

  public float FlySpeed = 5f;
  public float MoveTime = 1.5f;
  public float HangTime = .2f;

  float m_colliderRadius;

  Vector3 m_spawnTarget;
  Vector3 m_teleportTarget;

  private float m_timer;

  private Vector3 m_flyDirection;
  private FlySpawner m_spawner;

  public FlyState State;


  // Use this for initialization
  void Start()
  {
    rigidbody.isKinematic = true;
    //m_flyDirection = new Vector3(FlySpeed / 2, 0, FlySpeed / 2);
    m_colliderRadius = GetComponent<SphereCollider>().radius;
    GetComponent<SphereCollider>().radius = 0.01f;
    State = FlyState.Spawning;
    m_spawner = GameObject.FindObjectOfType<FlySpawner>();
  }

  public void FixedUpdate()
  {
    if(State == FlyState.Flying || State == FlyState.ToFixedPos)
    {
      gameObject.transform.position += m_flyDirection * FlySpeed * Time.fixedDeltaTime;
    }
  }

  public void OnCollisionEnter(Collision collision)
  {
    if(State == FlyState.Teleporting || State == FlyState.Spawning)
      return;
    //m_flyDirection = Vector3.ClampMagnitude(Quaternion.AngleAxis(Random.value * 180 - 90, collision.gameObject.transform.up) * collision.contacts[0].normal, FlySpeed);
    m_flyDirection = collision.contacts[0].normal;
    m_flyDirection.y = 0;
    resetTimer();
  }

  public void SetSpawnTarget(Vector3 target)
  {
    m_spawnTarget = target;
  }

  void OnTriggerEnter(Collider col)
  {
    if(col.tag == "Honey Jar")
    {
      Vector3 honeyPos = col.transform.position;
      m_flyDirection = honeyPos - transform.position;
      m_flyDirection.y = 0;
      State = FlyState.ToFixedPos;
    }
    else if(col.tag == "CrackedWallFlyTrigger")
    {
      if(State == FlyState.Teleporting)
        return;
      WallCrackTrigger wct = col.GetComponent<WallCrackTrigger>();
      if(wct.m_crackedWall.IsFilled()) //cannot fly through
        return;

      State = FlyState.Teleporting;
      m_teleportTarget = wct.m_otherSide.position;
      rigidbody.isKinematic = true;
      collider.enabled = false;
    }
  }

  private Vector3 chooseDirection()
  {
    //float xSpeed = (Random.value > .5 ? 1 : -1) * (Random.value * FlySpeed);
    //float ySpeed = (Random.value>.5?1:-1) *(FlySpeed - Mathf.Abs(xSpeed)) ;
    //float ySpeed = (Random.value > .5 ? 1 : -1) * Mathf.Sqrt(-(Mathf.Pow(xSpeed, 2) - Mathf.Pow(FlySpeed, 2)));
    //return new Vector3(xSpeed, 0, ySpeed);

    Vector3 v;
    do
    {
      v = new Vector3(
        Random.Range(-1f, 1f),
        0,
        Random.Range(-1, 1f));

    } while(v.sqrMagnitude > 1f);

    return v.normalized;
  }

  // Update is called once per frame
  void Update()
  {
    m_timer += Time.deltaTime;

    switch(State)
    {
      case FlyState.Spawning:
        {
          Vector3 dir = m_spawnTarget - transform.position;
          float dirLen = dir.magnitude;
          if(dirLen < 0.1f)
          {
            rigidbody.isKinematic = false;
            State = FlyState.Idle;

            GetComponent<SphereCollider>().radius = m_colliderRadius;
            return;
          }
          transform.position += dir / dirLen * FlySpeed * Time.deltaTime;
        }
        break;
      case FlyState.Flying:
        if(m_timer >= MoveTime)
        {
          resetTimer();
          m_flyDirection = chooseDirection();
        }
        break;

      case FlyState.Idle:
        if(m_timer >= HangTime)
          resetTimer();
        break;

      case FlyState.Teleporting:
        {
          Vector3 dir = m_teleportTarget - transform.position;
          float dirLen = dir.magnitude;
          if(dirLen < 0.1f)
          {
            rigidbody.isKinematic = false;
            collider.enabled = true;
            State = FlyState.Idle;

            GetComponent<SphereCollider>().radius = m_colliderRadius;
            return;
          }
          transform.position += dir / dirLen * FlySpeed * Time.deltaTime;
        }
        break;
    }
  }



  public void OnCollisionExit(Collision collision)
  {
    if(collision.gameObject.GetComponent<FlyTeleport>() != null)
    {
      //Leaving the source teleporter
      if(State == FlyState.Teleporting)
        State = FlyState.Flying;
      //leaving the target teleporter
      else
        State = FlyState.Teleporting;
    }

  }

  public void OnDestroy()
  {
    m_spawner.FlyDied();

  }



  private void resetTimer()
  {
    if(State == FlyState.Flying)
      State = FlyState.Idle;
    else if(State == FlyState.Idle)
      State = FlyState.Flying;

    m_timer = 0;
  }

  public enum FlyState
  {
    Spawning, Idle, Flying, ToFixedPos, Teleporting
  }
}
