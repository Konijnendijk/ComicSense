using UnityEngine;
using System.Collections;

public class MainMenu : MonoBehaviour {

    public void StartGame()
    {
        Application.LoadLevel("level");
    }

    public void About()
    {
        Debug.LogError("Not Implemented");
    }

    public void ExitGame()
    {
        Application.Quit();
    }
}
