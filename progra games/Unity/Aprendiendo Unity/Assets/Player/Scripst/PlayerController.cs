using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
   [Header("Referencias")]
    private CharacterController player;
    public Camera playerCamera;
    public Animator PlayerAnimator;
    public Rigidbody rb;

    [Header("Velocidades")]
    public float playerSpeed;

    [Header("Salto")]
    public float jumpForce;

    [Header("Deslisarce")]
    private bool isOnSlope = false;
    private Vector3 hitNormal;
    public float slideVelocity;
    public float slopForceDown;

    [Header("Gravedad")]
    public float gravity = 9.8f;
    public float fallVelocity;

    [Header("Camara")]
    Vector3 rotationInput = Vector3.zero;
    public float rotationSencibility;
    public float cameraVerticalAlgle;

    [Header("Direciones")]
    private Vector3 moveplayer;

    [Header("Animaciones")]
    public float horizontalMove;
    public float vertcalMove;

    [Header("Golpe")]
    public bool estoyAtancando;
    public bool avanzoSolo;
    public float impulsoGolpe = 10f;

    void Start()
    {
        player = GetComponent<CharacterController>();
        PlayerAnimator = GetComponent<Animator>();
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
    }

    private void FixedUpdate()
    {
        if (!estoyAtancando)
        {
            moveplayer = new Vector3(Input.GetAxis("Horizontal"), 0f, Input.GetAxis("Vertical"));
            moveplayer = Vector3.ClampMagnitude(moveplayer, 1f);

            //Para animaciones
            horizontalMove = Input.GetAxis("Horizontal");
            vertcalMove = Input.GetAxis("Vertical");

            PlayerAnimator.SetFloat("Velx", vertcalMove * playerSpeed);
            PlayerAnimator.SetFloat("Vely", horizontalMove);
            //Fin de animaciones    
        }

        if (avanzoSolo)
        {
            rb.velocity = transform.forward * impulsoGolpe;
        }

    }

    private void Update()
    {
        Look();

        if (Input.GetMouseButtonDown(0) && player.isGrounded && !estoyAtancando)
        {
            PlayerAnimator.SetTrigger("Golpeo");
            estoyAtancando = true;
        }
        if (Input.GetKey(KeyCode.LeftShift))
        {
            playerSpeed = 6;
            moveplayer = transform.TransformDirection(moveplayer) * playerSpeed;
        }
        else
        {
            playerSpeed = 3;
            moveplayer = transform.TransformDirection(moveplayer) * playerSpeed;
        }

        SetGravity();

        PlayerJump();

        player.Move(moveplayer * Time.deltaTime);
    }

    public void Look()
    {
        rotationInput.x = Input.GetAxis("Mouse X") * rotationSencibility * Time.deltaTime;
        rotationInput.y = Input.GetAxis("Mouse Y") * rotationSencibility * Time.deltaTime;

        cameraVerticalAlgle += rotationInput.y;
        cameraVerticalAlgle = Mathf.Clamp(cameraVerticalAlgle, -50, 30);

        transform.Rotate(Vector3.up * rotationInput.x);
        playerCamera.transform.localRotation = Quaternion.Euler(cameraVerticalAlgle, 0f, 0f);
    }

    public void PlayerJump()
    {
        if (player.isGrounded && Input.GetButtonDown("Jump"))
        {
            fallVelocity = jumpForce;
            moveplayer.y = fallVelocity;
            PlayerAnimator.SetTrigger("PlayerJump");
        }
    }

    public void SetGravity()
    {
        if (player.isGrounded)
        {
            fallVelocity = -gravity * Time.deltaTime;
            moveplayer.y = fallVelocity;
        }
        else
        {
            fallVelocity -= gravity * Time.deltaTime;
            moveplayer.y = fallVelocity;
            PlayerAnimator.SetFloat("PlaverVerticalVelocity", player.velocity.y);
        }
        PlayerAnimator.SetBool("isGrounded", player.isGrounded);
        sliDown();
    }

    public void sliDown()
    {
        isOnSlope = Vector3.Angle(Vector3.up, hitNormal) >= player.slopeLimit;

        if (isOnSlope)
        {
            moveplayer.x += ((1f - hitNormal.y) * hitNormal.x) * slideVelocity;
            moveplayer.z += ((1f - hitNormal.y) *hitNormal.z) * slideVelocity;

            moveplayer.y += slopForceDown;
        }
    }

    public void OnControllerColliderHit(ControllerColliderHit hit)
    {
        hitNormal = hit.normal;
    }

    public void DejoGolpear()
    {
        estoyAtancando = false;
    }

    public void AvansoSolo()
    {
        avanzoSolo = true;
    }

    public void DejoAvansar()
    {
        avanzoSolo = false;
    }

    private void OnAnimatorMove()
    {
        
    }
}
