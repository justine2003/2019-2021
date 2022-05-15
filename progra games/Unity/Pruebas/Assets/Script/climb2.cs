using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class climb2 : MonoBehaviour
{
    public GameObject pared;
    public bool si;

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "player")
        {
            si = true;
        }
    }
}
