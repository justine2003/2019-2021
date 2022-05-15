using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ActivarArmas : MonoBehaviour
{
    public CogerARma cogerArmas;
    public int numeroArmas;

    void Start()
    {
        cogerArmas = GameObject.FindGameObjectWithTag("Player").GetComponent<CogerARma>();
    }

    void Update()
    {
      
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            cogerArmas.activarArma(numeroArmas);
            Destroy(gameObject);
        }
    }
}
