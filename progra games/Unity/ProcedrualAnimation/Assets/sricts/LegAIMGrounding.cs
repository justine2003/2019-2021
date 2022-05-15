using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LegAIMGrounding : MonoBehaviour
{
    int layerMask;
    public GameObject raycastOrigin;
    
    void Start()
    {
        layerMask = LayerMask.GetMask("Ground"); 
        raycastOrigin = transform.parent.gameObject;
    }


    void Update()
    {
        RaycastHit hit; 
        if (Physics.Raycast(transform.position, -transform.up, out hit, Mathf.Infinity, layerMask))
        {
            transform.position = hit.point + new Vector3(0f, 0.4f, 0f);
        }

    }
}
