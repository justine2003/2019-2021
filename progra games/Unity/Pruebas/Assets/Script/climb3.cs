using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class climb3 : MonoBehaviour
{
   
    public bool si;
  
    void Start()
    {
        Debug.Log("inico");
    }

  
    void Update()
    {
       
    }

    void OnCollisionEnter(Collision collision)
    {
      if(collision.gameObject.tag == "pared")
       {
            Debug.Log("Atraveso la pared");
       }
    }  
}
