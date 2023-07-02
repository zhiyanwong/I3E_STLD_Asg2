using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class trapScript : MonoBehaviour
{

    public float Damage;


    // Update is called once per frame
    void Update()
    {
        
    }
    /// <summary>
    /// When player hit it, player will instantly die
    /// </summary>
    /// <param name="collision"></param>
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.tag == "Player")
        {
            Debug.Log("Dead");
            collision.collider.gameObject.GetComponent<Player>().TakeDamage(Damage);
        }
    }
}
