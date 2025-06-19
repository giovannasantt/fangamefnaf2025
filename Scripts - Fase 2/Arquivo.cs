using UnityEngine;
using UnityEngine.UI;

public class Arquivo : MonoBehaviour
{
    public GameObject arquivo;
    public Text texto;
    private int index = 0;

    public bool playerIsClose;

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E) && playerIsClose)
        {
            if (arquivo.activeInHierarchy)
            {
                zeroText();
            }
            else
            {
                arquivo.SetActive(true);
            }
        }
    }

    public void zeroText()
    {
        index = 0;
        arquivo.SetActive(false);
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("Player"))
        {
            playerIsClose = true;
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag("Player"))
        {
            playerIsClose = false;
            zeroText();
        }
    }
}

