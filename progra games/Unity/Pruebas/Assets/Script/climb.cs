using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class climb : MonoBehaviour
{
    public bool si;
    CharacterController player;
    public ControllerColliderHit hit;

    void Start()
    {
        player = GetComponent < CharacterController>();
    }

   
    void Update()
    {
        OnControllerColliderHit(hit);
    }

    private void OnControllerColliderHit(ControllerColliderHit hit)
    {
        si = true;
    }


}
