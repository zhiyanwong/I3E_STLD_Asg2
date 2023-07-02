using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.SceneManagement;

public class WastedScript : MonoBehaviour
{
    public static bool GameOver = false;
    public GameObject GameOverMenuUI;
    public string firstLevel;

    // Update is called once per frame
    /// <summary>
    /// Trigger death UI Canvas and freeze the game
    /// </summary>
    public void StartGame()
    {
        SceneManager.LoadScene(firstLevel);
        Time.timeScale = 1f;
    }
}
