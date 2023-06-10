using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class move : MonoBehaviour
{
    Vector3 movementInput = Vector3.zero;
    float movementSpeed = 0.09f;

    Vector3 rotationInput = Vector3.zero;
    float rotationSpeed = 1f;

    public Transform Camera;

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
        Vector3 forwardDir = transform.forward;
        forwardDir *= movementInput.y;

        Vector3 rightDir = transform.right;
        rightDir *= movementInput.x;

        transform.position += (forwardDir + rightDir) * movementSpeed;

        //Rotate left and right
        transform.rotation = Quaternion.Euler(transform.rotation.eulerAngles
            + new Vector3(0, rotationInput.y, 0) * rotationSpeed);

        //Rotate up and down
        var headRot = Camera.rotation.eulerAngles + new Vector3(rotationInput.x, 0, 0)
            * rotationSpeed;
        Camera.rotation = Quaternion.Euler(headRot);
    }
}
