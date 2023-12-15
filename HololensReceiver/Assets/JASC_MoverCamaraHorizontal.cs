using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JASC_MoverCamaraHorizontal : MonoBehaviour
{
    public Transform Camera2;
    public Transform Camera3;
    public float moveSpeed = 1.0f;

    public void MoveCamerasOnClick()
    {
        if (Camera2 != null)
        {
            Camera2.Translate(Vector3.up * moveSpeed * Time.deltaTime);
        }

        if (Camera3 != null)
        {
            Camera3.Translate(Vector3.down * moveSpeed * Time.deltaTime);
        }
    }
}
 