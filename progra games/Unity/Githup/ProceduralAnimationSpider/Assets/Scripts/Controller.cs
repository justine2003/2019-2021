using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Controller : MonoBehaviour
{
    private Rigidbody rb;
    public float speed;
    public float angspeed;
    private float movx;
    private float movy;

    void Start()
    {
        rb = gameObject.GetComponent<Rigidbody>();
    }

    void Update()
    {
        movx = Input.GetAxis("Horizontal");
        movy = Input.GetAxis("Vertical");

        if(movy != 0)
        {
            Vector3 movement = transform.right * movy * speed * Time.deltaTime;
            rb.velocity = movement;
        }

        transform.Rotate(0, movx * angspeed * Time.deltaTime, 0);
    }
}
