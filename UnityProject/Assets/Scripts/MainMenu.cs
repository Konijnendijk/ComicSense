using UnityEngine;
using System.Collections;

public class MainMenu : MonoBehaviour {

    public void StartGame()
    {
        Application.LoadLevel("level");
    }

    public void About()
    {
        Application.LoadLevel("howTo");
    }

    public void ExitGame()
    {
        Application.Quit();
    }
}
