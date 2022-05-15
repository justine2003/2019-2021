using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LiveCorazones : MonoBehaviour
{
    public Image corazon;
    public int cantCorazon;
    public RectTransform posicionCorazon;
    public Canvas myCanvas;
    public int offset;
   
    void Start()
    {
        Transform PosCorazon = posicionCorazon;

        for (int i = 0; i < cantCorazon; i++)
        {
            Image newCorazon = Instantiate(corazon, PosCorazon.position, Quaternion.identity);
            newCorazon.transform.parent = myCanvas.transform;
            PosCorazon.position = new Vector2(PosCorazon.position.x + offset, PosCorazon.position.y);
        }
        corazon.gameObject.SetActive(false);
    }

   
    void Update()
    {

    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == ("enemy"))
        {
            Destroy(myCanvas.transform.GetChild(cantCorazon + 1).gameObject);
            cantCorazon -= 1;

            if (cantCorazon <= 0)
            {
                Time.timeScale = 0;
            }
        }
    }
}
