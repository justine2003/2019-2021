using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Controller : MonoBehaviour
{
    public float _speed = 1f;

    public Rigidbody _rigidbody;
    
    void Start()
    {
        _rigidbody = GetComponent<Rigidbody>();
    }

    
    void Update()
    {
        if (_rigidbody.velocity.magnitude < _speed)
        {
            float value = Input.GetAxis("Vertical");
            float _value = Input.GetAxis("Horizontal");
            float jump = Input.GetAxis("Jump");
            if (value != 0 || _value != 0 || jump != 0)
            {
                _rigidbody.AddForce(_value * Time.fixedDeltaTime * 1000f, jump * Time.fixedDeltaTime * 1000f , value * Time.fixedDeltaTime * 1000f);
            }
        }
    }
}
