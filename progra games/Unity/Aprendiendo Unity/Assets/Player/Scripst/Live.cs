using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Live : MonoBehaviour
{
    public float vida = 100f;
    private bool invensible = false;
    public float tiempoIn = 1f;
    public float tiempoFrenado = 0.2f;

    private Animator anim;

    private void Start()
    {
        anim = GetComponent<Animator>();
    }

    public void RestarVida(float cantidad)
    {
        if (!invensible && vida > 0)
        {
            vida -= cantidad;
            anim.Play("Damage");
            StartCoroutine(invencible());
            StartCoroutine(frenar());

            if (vida == 0)
            {
                GameOver();
            }
        } 
    }

    void GameOver()
    {
        Debug.Log("GameOver");
        Time.timeScale = 0;
    }

    IEnumerator invencible()
    {
        invensible = true;
        yield return new WaitForSeconds(tiempoIn);
        invensible = false;
    }

    IEnumerator frenar()
    {
        var velocidadActual = GetComponent<PlayerController>().playerSpeed;
        GetComponent<PlayerController>().playerSpeed = 0;
        yield return new WaitForSeconds(tiempoFrenado);
        GetComponent<PlayerController>().playerSpeed = velocidadActual;

    }
}
