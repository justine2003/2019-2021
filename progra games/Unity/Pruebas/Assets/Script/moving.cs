using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class moving : MonoBehaviour
{
    [Header("General")]
    public float gravityScale = -20f;

    [Header("Movimiento")]
    public float runSpeed = 15f;
    public float walkSpeed = 10;

    [Header("Jump")]
    public float jumpHeight = 1.9f;

    [Header("References")]
    public Camera playerCamera;

    [Header("Rotacion")]
    public float rotationSencibility = 10f;

    [Header("Deslisamiento")]
    public bool isOnSlope = false;
    private Vector3 hitNormal;
    public CharacterController Player;
    public float slideVelocity;
    public float slopeDown;

    private float cameraVerticalAngle;
    Vector3 moveInput = Vector3.zero;
    Vector3 rotationInput = Vector3.zero;
    CharacterController characterController;

    [Header("Animaciones")]
    public Animator PlayerAnimatorController;


    private void Awake()
    {
        characterController = GetComponent<CharacterController>();
        PlayerAnimatorController = GetComponent<Animator>();
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
    }

    private void Update()
    {
        Move();
        Look();
    }

    private void Move()
    {
        if (characterController.isGrounded)
        {

            moveInput = new Vector3(Input.GetAxis("Horizontal"), 0f, Input.GetAxis("Vertical"));
            moveInput = Vector3.ClampMagnitude(moveInput, 1f);

            if (Input.GetButton("Sprint"))
            {
                moveInput = transform.TransformDirection(moveInput) * runSpeed;
            }
            else
            {
                moveInput = transform.TransformDirection(moveInput) * walkSpeed;
            }

            if (Input.GetButtonDown("Jump"))
            {
                gravityScale = -20;
                moveInput.y = Mathf.Sqrt(jumpHeight * -2f * gravityScale);
            }
        }

        slideDown();

        moveInput.y += gravityScale * Time.deltaTime;

        characterController.Move(moveInput * Time.deltaTime);
    }

    private void Look()
    {
        rotationInput.x = Input.GetAxis("Mouse X") * rotationSencibility * Time.deltaTime;
        rotationInput.y = Input.GetAxis("Mouse Y") * rotationSencibility * Time.deltaTime;

        cameraVerticalAngle += rotationInput.y;
        cameraVerticalAngle = Mathf.Clamp(cameraVerticalAngle, -50, 30);


        transform.Rotate(Vector3.up * rotationInput.x);
        playerCamera.transform.localRotation = Quaternion.Euler(cameraVerticalAngle, 0f, 0f);
    }

    public void slideDown()
    {
        isOnSlope = Vector3.Angle(Vector3.up, hitNormal) >= Player.slopeLimit;

        if (isOnSlope)
        {
            moveInput.x += ((1f - hitNormal.y) * hitNormal.x) * slideVelocity * Time.deltaTime;
            moveInput.z += hitNormal.z * slideVelocity * Time.deltaTime;
            moveInput.y += slopeDown;
        }

    }

    public void OnControllerColliderHit(ControllerColliderHit hit)
    {
        hitNormal = hit.normal;
    }
}
