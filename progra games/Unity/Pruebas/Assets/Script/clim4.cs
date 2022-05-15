using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class clim4 : MonoBehaviour
{
    
    void Start()
    {
        
    }

    
    void Update()
    {
        
    }

    private void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.tag == "pared")
        {
            Debug.Log("hola");
        }
    }

}
