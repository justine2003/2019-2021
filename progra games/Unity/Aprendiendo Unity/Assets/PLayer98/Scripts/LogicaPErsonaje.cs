using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LogicaPErsonaje : MonoBehaviour
{
    [Header("Referencias")]
    public Animator anim;
    public Rigidbody rb;

    [Header("Velocidades")]
    public float walk;
    public float run;

    [Header("Direciones")]
    public float x, y;

    [Header("Salto")]
    public float fuerzaSalto = 8f;
    public bool puedoSaltar;

    [Header("Ataque puño")]
    public bool estoyAtacando;
    public bool avanzoSolo;
    public float impulsoGolpe = 10f;

    [Header("Arma")]
    public bool conArma;

    void Start()
    {
        puedoSaltar = false;
        anim = GetComponent<Animator>();
    }

    void FixedUpdate()
    {
        Vector3 movimiento = transform.forward * y + transform.right * x;

        if (!estoyAtacando)
        {
            if (Input.GetKey(KeyCode.LeftShift))
            {
                rb.MovePosition(transform.position + movimiento * run * Time.deltaTime);
            }
            else
            {
                rb.MovePosition(transform.position + movimiento * walk * Time.deltaTime);
            }
        }

        if (avanzoSolo)
        {
            rb.velocity = transform.forward * impulsoGolpe;
        }
    }

    void Update()
    {
        x = Input.GetAxis("Horizontal");
        y = Input.GetAxis("Vertical");

        if (Input.GetMouseButtonDown(0) && puedoSaltar && !estoyAtacando)
        {
            if (conArma)
            {
                anim.SetTrigger("sword");
                estoyAtacando = true;
            }
            else
            {
              anim.SetTrigger("golpeo");
              estoyAtacando = true;
            }
        }

        anim.SetFloat("Velx", x);
        anim.SetFloat("Vely", y);

        if (puedoSaltar)
        {
            if (!estoyAtacando)
            {
                if (Input.GetKeyDown(KeyCode.Space))
                {
                    anim.SetBool("salte", true);
                    rb.AddForce(new Vector3(0, fuerzaSalto, 0), ForceMode.Impulse);
                }
                anim.SetBool("tocoSuelo", true);
            }
        }
        else
        {
            EstoyCayendo();
        }
    }

    public void EstoyCayendo()
    {
        anim.SetBool("tocoSuelo",false);
        anim.SetBool("salte", false);
    }

    public void DejeGolpear()
    {
        estoyAtacando = false;
    }

    public void AvansoSolo()
    {
        avanzoSolo = true;
    }

    public void DejoAvanzar()
    {
        avanzoSolo = false;
    }
}
