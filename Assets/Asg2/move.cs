using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;
using TMPro; //TextMeshPro
using UnityEngine.UI; // Image
using UnityEngine.SocialPlatforms.Impl;

public class move : MonoBehaviour
{
    Vector3 movementInput = Vector3.zero;
    float movementSpeed = 0.06f;

    Vector3 rotationInput = Vector3.zero;
    float rotationSpeed = 1f;

    public Transform Camera;
    int score = 0;
    public TextMeshProUGUI displayText;

    public float sprintModifier = 5f;
    bool sprintKey = false;

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
    private void OnCollisionEnter(Collision collision)
    {
        if (CollectObject("Collectible", collision.gameObject, 3)) ;
        else if (CollectObject("Damage", collision.gameObject, -2)) ; 
    }
    void OnLook(InputValue value)
    {
        rotationInput.y = value.Get<Vector2>().x;
        rotationInput.x = -value.Get<Vector2>().y;
    }
    void OnMove(InputValue value)
    {
        movementInput = value.Get<Vector2>();

        //Debug.Log(movementInput);
    }

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
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

        Vector3 movementVector = transform.forward * movementInput.y;
        movementVector += transform.right * movementInput.x;
        transform.position += movementVector * movementSpeed;
        transform.rotation = Quaternion.Euler(transform.rotation.eulerAngles + rotationInput * rotationSpeed);
    }
}
