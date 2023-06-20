using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{

    public GameObject playerPrefab;
    private move activePlayer;

    private void Awake()
    {
        DontDestroyOnLoad(gameObject);
        SceneManager.activeSceneChanged += SpawnPlayerOnLoad;
    }
    void SpawnPlayerOnLoad(Scene prev, Scene next)
    {
        Debug.Log("Entering scene is : " + next.buildIndex);
        if (next.buildIndex == 3)
        {
            if (activePlayer != null)
                Destroy(activePlayer);
            activePlayer = null;
        }
        else
        {
            if (activePlayer = null)
            {
                GameObject player = Instantiate(playerPrefab, Vector3.zero, Quaternion.identity);
                activePlayer = player.GetComponent<move>();
            }
        }
    }
}
