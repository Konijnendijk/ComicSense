using UnityEngine;
using System.Collections;

public class Globals : MonoBehaviour
{

  //getters and setters

  //variables

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
