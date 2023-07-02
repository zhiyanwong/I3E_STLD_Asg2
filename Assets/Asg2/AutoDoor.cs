using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AutoDoor : MonoBehaviour
{
    public Animator doorAnimator;

    /// <summary>
    /// Trigger of the door open when player touch the collider
    /// </summary>
    private void OnTriggerEnter(Collider other)
    {
        GetComponent<AudioSource>().Play();
        if (other.tag == "Player")
        {
            doorAnimator.SetBool("DoorOpen", true);
        }
    }
    /// <summary>
    /// Trigger of the door close when player exit the collider
    /// </summary>
    private void OnTriggerExit(Collider other)
    {
        if (other.tag == "Player")
        {
            doorAnimator.SetBool("DoorOpen", false);
        }
    }

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
