using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CogerARma : MonoBehaviour
{
    public int slotAr = 0;

    public BoxCollider[] armasBox;
    public BoxCollider puñoBox;

    public GameObject[] armas;
    public GameObject[] tengo;

    public LogicaPErsonaje logicaPErsonaje;

    private void Start()
    {
        desactivarBox();
    }

    private void Update()
    {
        if (Input.GetKey(KeyCode.Tab))
        {
            desActivarArmas();
            logicaPErsonaje.conArma = false;
        }

        if (Input.GetKeyDown(KeyCode.LeftControl))
        {
            slotAr++;

            if (slotAr < 5)
            {
            for (int i = 0; i < armas.Length; i++)
            {
            armas[i].SetActive(false);
            }

            tengo[slotAr].SetActive(true);
            logicaPErsonaje.conArma = true;
            }
            else
            {
                for (int i = 0; i < armas.Length; i++)
                {
                    armas[i].SetActive(false);
                }
                logicaPErsonaje.conArma = false;
                slotAr = 0;
            }
        }
    }

    public void activarArma(int numero)
    {
        for (int i = 0; i < armas.Length; i++)
        {
            armas[i].SetActive(false);
        }
        armas[numero].SetActive(true);
        logicaPErsonaje.conArma = true;
        tengo[numero] = armas[numero];
    }

    public void desActivarArmas()
    {
        for (int i = 0; i < armas.Length; i++)
        {
            armas[i].SetActive(false);
        }
    }

    public void ActivarCollider()
    {
        for (int i = 0; i < armasBox.Length; i++)
        {
            if (logicaPErsonaje.conArma)
            {
                if (armasBox[i] != null)
                {
                    armasBox[i].enabled = true;
                }
            }
            else
            {
                puñoBox.enabled = true;
            }
        }
    }

    public void desactivarBox()
    {
        for (int i = 0; i < armasBox.Length; i++)
        {
            if (armasBox[i] != null)
            {
                armasBox[i].enabled = false;
            }
        }
        puñoBox.enabled = true;
    }
}
