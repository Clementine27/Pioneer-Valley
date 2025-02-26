using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JorgeMoveScript : MonoBehaviour
{
    public GameObject jorge;

     //Create a movement speed
    public float moveSpeed = 5f;

    public Rigidbody2D rbody;

    Vector2 movement; //It is vector 2 so we have x and y here 
    
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    // Frame constantly changes so we cannot use it for Physics change 
    void Update()
    {
        movement.x =  Input.GetAxisRaw("Horizontal"); 
        movement.y =  Input.GetAxisRaw("Vertical");
        //Handle Input 
        //Move Left
        //if (Input.GetKey(KeyCode.A) == true && jorge != null)
        //{
            //Give us +1 unit to the right or +1 unit to the left: Move right, Move left
            //Input.GetAxisRaw("Horizontal"); 
        //}
        //Move Right
        //if (Input.GetKey(KeyCode.D) == true && jorge != null)
        //{
            //Give us +1 unit to the right or +1 unit to the left: Move right, Move left
            //Input.GetAxisRaw("Horizontal"); 
        //}
    }

    //This function is used to function with movement since Update() is not good at 
    //for Physics change of the Jorge movement  
    void FixedUpdate()
    {
        rbody.MovePosition(rbody.position + movement * moveSpeed * Time.fixedDeltaTime);
        //Move rigid body to a position and make sure it collides with everything
        //To make sure moveSpeed is constant no matter how many times FixedUpdate() gets called 
        //Also multiple with Time.fixedDeltaTime
        //Time.fixedDeltaTime: ampunt of time that has elapsed since the last time
        //the function was called --> The result of that is constant movementSpeed
    }
}