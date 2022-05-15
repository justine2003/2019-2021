using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class objetos : MonoBehaviour
{
    public float pushPower = 2.0f;

    private float targetMass;

    private void OnControllerColliderHit(ControllerColliderHit hit)
    {
        Rigidbody body = hit.collider.attachedRigidbody;

        if (body == null || body.isKinematic)
        {
            return;
        }

        if (hit.moveDirection.y < -0.3)
        {
            return;
        }

        targetMass = body.mass;

        Vector3 pushDIr = new Vector3(hit.moveDirection.x, 0 , hit.moveDirection.z);

        body.velocity = pushDIr * pushPower / targetMass;
    }

}