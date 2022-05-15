using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CamController : MonoBehaviour
{
    public BallController ball;

    public float offset;

    void Start()
    {
        offset = transform.position.y - ball.transform.position.y;
    }

    
    void Update()
    {
        Vector3 actualpost = transform.position;
        actualpost.y = ball.transform.position.y + offset;
        transform.position = actualpost;
    }
}
