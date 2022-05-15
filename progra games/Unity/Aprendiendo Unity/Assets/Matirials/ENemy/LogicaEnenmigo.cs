using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LogicaEnenmigo : MonoBehaviour
{
    public int hp;
    public int dañoArma;
    public int dañoPuño;
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
            hp -= dañoArma;
        }

        if (other.gameObject.tag == "Puño")
        {
            anim.Play("AnimacionENemy");
        }
        hp -= dañoPuño;

        if (hp <= 0)
        {
            Destroy(gameObject);
        }
    }
}
