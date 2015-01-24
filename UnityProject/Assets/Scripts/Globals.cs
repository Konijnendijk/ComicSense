using UnityEngine;
using System.Collections;


//this is a singleton class
public class Globals : MonoBehaviour
{

  //getters and setters


  //variables


  //public variables for the debugging
  public float GRID_TILE_SIZE = 1;

  public float SnapPositionToGrid(float x)
  {
    return Mathf.Round(x / GRID_TILE_SIZE) * GRID_TILE_SIZE;
  }
  public Vector2 SnapPositionToGrid(Vector2 v)
  {
    return new Vector2(
    SnapPositionToGrid(v.x),
    SnapPositionToGrid(v.y)
    );
  }
  public Vector3 SnapPositionToGrid(Vector3 v)
  {
    return new Vector3(
    SnapPositionToGrid(v.x),
    SnapPositionToGrid(v.y),
    SnapPositionToGrid(v.z));
  }

  public static bool IsNaN(Vector2 v)
  {
    return v.x == float.NaN || v.y == float.NaN;
  }
  public static bool IsNaN(Vector3 v)
  {
    return v.x == float.NaN || v.y == float.NaN || v.z == float.NaN;
  }

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
