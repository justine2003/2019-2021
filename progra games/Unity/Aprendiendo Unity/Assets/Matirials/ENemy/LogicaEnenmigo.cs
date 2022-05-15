using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LogicaEnenmigo : MonoBehaviour
{
    public int hp;
    public int da�oArma;
    public int da�oPu�o;
    public Animator anim;


    void Start()
    {
        
    }

    
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Espada")
        {
            if (anim != null)
            {
                anim.Play("AnimacionENemy");
            }
            hp -= da�oArma;
        }

        if (other.gameObject.tag == "Pu�o")
        {
            anim.Play("AnimacionENemy");
        }
        hp -= da�oPu�o;

        if (hp <= 0)
        {
            Destroy(gameObject);
        }
    }
}
