using UnityEngine;
using System.Collections;


//this is a singleton class
public class Globals : MonoBehaviour
{

  //getters and setters

    public string FliesTag { get { return m_fliesTag; } }
    public string RoomsTag { get { return m_roomsTag; } }
    public string ScreamMeterTag { get { return m_screamMeterTag; } }

  //variables

    private const string m_fliesTag="Flies";
    private const string m_roomsTag="Rooms";
    private const string m_screamMeterTag = "ScreamMeter";

  //public variables for the debugging


  //PLEASE DO NOT TOUCH
  static Globals s_instance = null;
  public static Globals GetInstance()
  {
    if(s_instance)
      return s_instance;

    GameObject go = new GameObject();
    go.name = "Globals";

    s_instance = go.AddComponent<Globals>();

    return s_instance;
  }
  public static Globals GI() { return GetInstance(); }
}
