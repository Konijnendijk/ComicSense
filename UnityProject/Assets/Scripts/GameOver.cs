using UnityEngine;
using System.Collections;

public class GameOver : MonoBehaviour {

    public void ToMainMenu()
    {
        Application.LoadLevel("mainMenu");
    }
}
