using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JASC_MoverCamara : MonoBehaviour
{
    public Transform Camera1;
    public Transform Camera4;
    public float moveSpeed = 1.0f;

    public void MoveCamerasOnClick()
    {
        if (Camera1 != null)
        {
            Camera1.Translate(Vector3.right * moveSpeed * Time.deltaTime);
        }

        if (Camera4 != null)
        {
            Camera4.Translate(Vector3.left * moveSpeed * Time.deltaTime);
        }
    }
}
