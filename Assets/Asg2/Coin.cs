using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Coin : MonoBehaviour
{


    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void IdleComplete()
    {
        //Debug.Log("Idle Animation Complete");
    }

    public void Collected()
    {
        GetComponent<Animator>().SetTrigger("isCollected");
    }
}
