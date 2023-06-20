using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;
using TMPro; //TextMeshPro
using UnityEngine.UI; // Image
using UnityEngine.SocialPlatforms.Impl;
using UnityEngine.SceneManagement;

public class move : MonoBehaviour
{
    Vector3 movementInput = Vector3.zero;
    float movementSpeed = 3f;

    Vector3 rotationInput = Vector3.zero;
    float rotationSpeed = 60f;

    Vector3 headRot;
    public GameObject playerCamera;

    //public Transform Camera;
    int score = 0;
    public TextMeshProUGUI displayText;
    public float jumpForce;
    public Rigidbody rb;
    public bool playerOnGround = true;
    //public float sprintModifier = 5f;
    //bool sprintKey = false;

    bool switchTime = false;
    bool mouseClick = false;

    public bool dead = false;
    //public float CamRot;

    float interactionDis = 3f;

    //bool interact = false;

    public bool CollectObject(string tag, GameObject obj, int val)
    {
        if (obj.tag == tag)
        {
            score += val;
            displayText.text = "Score : " + score;
            Destroy(obj);
            return true;
        }
        return false;
    }
    public void OnCollisionEnter(Collision collision)
    {
        //if (CollectObject("Collectible", collision.gameObject, 3)) ;
        //else if (CollectObject("Damage", collision.gameObject, -2)) ; 

        if (collision.gameObject.tag == "Points")
        {
            //displayText.text = "Score : " + score + "/ 10";
            //score += 2;
            //Debug.Log("Enter : " + collision.gameObject.name);
            collision.gameObject.GetComponent<Coin>().Collected();
            //Destroy(collision.gameObject);

        }
        if (collision.gameObject.tag == "Collectible")
        {
            displayText.text = "Score : " + score + "/ 3 Collected";
            score ++;
            //Debug.Log("Enter : " + collision.gameObject.name);
            //collision.gameObject.GetComponent<Coin>().Collected();
            Destroy(collision.gameObject);

        }
        else if (collision.gameObject.tag == "bugs")
        {
            //score -= 1;
            displayText.text = "Score : " + score--;
            Destroy(collision.gameObject);
        }
        else if (collision.gameObject.tag == "Trap")
        {
            
            KillPlayer();
        }

        if (collision.gameObject.tag == "ground")
        {
            playerOnGround = true;
        }

    }
    void KillPlayer()
    {
        GetComponent<Animator>().SetTrigger("Death");
        GetComponent<Animator>().applyRootMotion = false;
        dead = true;
        GetComponent<AudioSource>().Play();

    }
    public void OnCollisionStay(Collision collision)
    {
        if (collision.gameObject.tag == "Collectible")
        {
            displayText.text = "Score : " + score + "/ 3";
            score ++;
            Debug.Log("Stay : " + collision.gameObject.name);
        }
        else if (collision.gameObject.tag == "bugs")
        {
            //score -= 1;
            displayText.text = "Score : " + score--;

        }
    }

    public void OnCollisionExit(Collision collision)
    {
        if (collision.gameObject.tag == "Collectible")
        {
            displayText.text = "Score : " + score + "/ 3";
            score ++;
            Debug.Log("Exit : " + collision.gameObject.name);
        }

        else if (collision.gameObject.tag == "bugs")
        {
            //score -= 1;
            displayText.text = "Score : " + score--;

        }
    }
    void OnLook(InputValue value)
    {
        rotationInput.y = value.Get<Vector2>().x;
        headRot.x = value.Get<Vector2>().y * -1; 
    }
    void OnMove(InputValue value)
    {
        movementInput = value.Get<Vector2>();

        //Debug.Log(movementInput);
    }
    void OnJump()
    {
        GetComponent<Rigidbody>().AddForce(transform.up * jumpForce, ForceMode.Impulse);
    }

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        if (dead == true)
        {
            return;
        }

        displayText.text = "Score : " + score + "/ 3";
        //Vector3 forwardDir = transform.forward;
        //forwardDir *= movementInput.y;

        //Vector3 rightDir = transform.right;
        //rightDir *= movementInput.x;

        //transform.position += (forwardDir + rightDir) * movementSpeed;

        ////Rotate left and right
        //transform.rotation = Quaternion.Euler(transform.rotation.eulerAngles
        //    + new Vector3(0, rotationInput.y, 0) * rotationSpeed);

        ////Rotate up and down
        //var headRot = Camera.rotation.eulerAngles + new Vector3(rotationInput.x, 0, 0)
        //    * rotationSpeed;
        //Camera.rotation = Quaternion.Euler(headRot);

        //Up or down
        Vector3 movementVector = transform.forward * movementInput.y;

        //left or right
        movementVector += transform.right * movementInput.x;

        //Movement vector * move speed
        transform.position += movementVector * movementSpeed * Time.deltaTime;

        //rotation
        transform.rotation = Quaternion.Euler(transform.rotation.eulerAngles + rotationInput * rotationSpeed * Time.deltaTime);

        //rotation up and down camera only
        playerCamera.transform.rotation = Quaternion.Euler(playerCamera.transform.rotation.eulerAngles + headRot * rotationSpeed * Time.deltaTime);
        headRot.y = Mathf.Clamp(headRot.y, -80f, 80f);
        


        float horizontal = Input.GetAxis("Horizontal") * Time.deltaTime;
        float vertical = Input.GetAxis("Vertical") * Time.deltaTime;

        transform.Translate(horizontal, 0, vertical);

        if (Input.GetButtonDown("Jump") && playerOnGround)
        {
            rb.AddForce(new Vector3(0, 10, 0), ForceMode.Impulse);
            playerOnGround = false;
        }

        Debug.DrawLine(transform.position, transform.position + (transform.forward * interactionDis));
        RaycastHit hitInfo;
        if (Physics.Raycast(transform.position, transform.forward, out hitInfo, interactionDis))
        {
            //Debug.Log(hitInfo.transform.name);
            if (hitInfo.transform.tag == "Collectible" && mouseClick)
            {
                //if (interact)
                //{
                //    hitInfo.transform.GetComponent<Coin>().Collected();
                //}
                Debug.Log("Raycast hit : " + hitInfo.transform.gameObject.name);
                hitInfo.transform.GetComponent<Coin>().Collected();
            }
        }
        mouseClick = false;
    }
    void OnFire()
    {
        //interact = true;
        switchTime = !switchTime;
        mouseClick = true;
    }

    private void OnTriggerEnter(Collider collider)
    {
        if(collider.gameObject.tag == "Collectible")
        {
            Debug.Log("Trigger : " + collider.gameObject.name);
        }
    }
}
