using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Coin : MonoBehaviour
{



    //void IdleComplete()
    //{
    //    Debug.Log("Idle Animation Complete");
    //}

    /// <summary>
    /// Trigger collected animation and sound
    /// </summary>
    public void Collected()
    {

        //Debug.Log("Parts Collected");
        GetComponent<AudioSource>().Play();
        //GetComponent<Animator>().SetTrigger("isCollected");

        
        DestroyCoin();
    }
    
    /// <summary>
    /// Destroy coin when collect
    /// </summary>
    void DestroyCoin()
    {
        Destroy(gameObject);
    }
}
