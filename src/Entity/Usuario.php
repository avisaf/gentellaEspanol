<?php

namespace App\Entity;

use App\Repository\UsuarioRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Symfony\Component\Security\Core\User\EquatableInterface;
use Symfony\Component\Security\Core\User\UserInterface;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Validator\Context\ExecutionContextInterface;

/**
 * Usuario
 *
 * @ORM\Table(name="usuario", indexes={@ORM\Index(columns={"rol", "apellido_paterno", "apellido_materno", "nombres"}), @ORM\Index(columns={"apellido_paterno", "apellido_materno", "nombres"})}, uniqueConstraints={@ORM\UniqueConstraint(columns={"tipo_documento", "documento","username"})})
 * @ORM\Entity(repositoryClass=UsuarioRepository::class)
 *
 */

class Usuario implements UserInterface, EquatableInterface
{
    //region Roles
    const ROL_GRIFERO = 'grifero';
    const ROL_SECRETARIA = 'secretaria';
    const ROL_ADMISION = 'admision';
    const ROL_COORDINADOR = 'coordinador';
    const ROL_ADMIN = 'administrador';
    const ROL_SUPER_ADMIN = 'admin';
    //endregion

    //region Datos miembro
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     *
     */
    protected $id;
    /**
     * @ORM\Column(type="string", length=180, unique=true)
     * @Assert\NotBlank( message="El usuario no puede estar en blanco")
     */
    private $username;
    /**
     * @ORM\Column(type="string", length=255))
     */
    private $password;

    /**
     * @var string
     *
     * @ORM\Column(name="apellido_paterno", type="string", length=100)
     * @Assert\NotBlank( message="El apellido paterno no puede estar en blanco")
     */
    private $apellidoPaterno;

    /**
     * @var string
     *
     * @ORM\Column(name="apellido_materno", type="string", length=100, nullable=true)
     * @Assert\NotBlank( message="El apellido materno no puede estar en blanco")
     *
     */
    private $apellidoMaterno;

    /**
     * @var string
     *
     * @ORM\Column(name="nombres", type="string", length=100)
     *
     * @Assert\NotBlank( message="El nombre no puede estar en blanco")
     */
    private $nombres;

    /**
     * @var string
     *
     * @ORM\Column(name="tipo_documento", type="string", length=20)
     *
     */
    private $tipoDocumento;

    /**
     * @var string
     *
     * @ORM\Column(name="documento", type="string", length=20)
     *
     */
    private $documento;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fecha_nacimiento", type="date")
     *
     */
    private $fechaNacimiento;
    /**
     * @var \DateTime
     *
     * @ORM\Column(name="last_login", type="datetime", nullable=true)
     *
     */
    private $lastLogin;
    /**
     * @var string
     *
     * @ORM\Column(name="sexo", type="string", length=1)
     *
     */
    private $sexo;


    /**
     * @var string
     *
     * @ORM\Column(name="celular", type="string", length=20, nullable=true)
     *
     */
    private $celular;


    /**
     * @ORM\Column(type="json")
     */
    private $roles = [];


    /**
     * @var string
     *
     * @ORM\Column(name="rol", type="string", length=50, nullable=true)
     *
     */
    private $rol;
    /**
     * @ORM\Column(type="string", length=100, unique=true)
     * @Assert\Email(message="Email invalido")
     */
    private $email;

    /**
     * @ORM\Column(type="boolean")
     */
    private $valid;

    /**
     * @ORM\Column(type="boolean")
     */
    private $deleted;


    //endregion

    public function __construct()
    {
        $this->valid = true;
        $this->deleted = false;
        $this->fechaNacimiento = new \DateTime();
        $this->locales = new ArrayCollection();
    }
    public function  __toString()
    {
    return $this->getNombreCompletoApellidosPrimero();
    }

    /**
     * Get NombreCompleto
     *
     * @return string
     */
    public function getNombreCompleto()
    {
        return $this->getNombres() . " " . $this->getApellidoPaterno() . " " . $this->getApellidoMaterno();
    }
    /**
     * Get NombreApellido
     *
     * @return string
     */
    public function getNombreApellido()
    {
        return $this->getNombres() . " " . $this->getApellidoPaterno();
    }

    /**
     * Get NombreCompletoApellidosPrimero
     *
     * @return string
     */
    public function getNombreCompletoApellidosPrimero()
    {
        return $this->getApellidoPaterno() . ' ' . $this->getApellidoMaterno() . ', ' . $this->getNombres();
    }
    //region Getters and setters
    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }
    /**
     * A visual identifier that represents this user.
     *
     * @see UserInterface
     */
    public function getUsername()
    {
        return (string) $this->username;
    }

    public function setUsername($username)
    {
        $this->username = $username;

        return $this;
    }

    /**
     * @see UserInterface
     */
    public function getRoles(): array
    {
        $roles = $this->roles;
        // guarantee every user at least has ROLE_USER
        $roles[] = 'ROLE_USER';

        return array_unique($roles);
    }

    public function setRoles(array $roles)
    {
        $this->roles = $roles;

        return $this;
    }
    /**
     * @see UserInterface
     */
    public function getPassword()
    {
        return $this->password;
    }

    public function setPassword($password)
    {
        $this->password = $password;

        return $this;
    }

    /**
     * @see UserInterface
     */
    public function getSalt()
    {
        // not needed for apps that do not check user passwords
    }

    /**
     * @see UserInterface
     */
    public function eraseCredentials()
    {
        // If you store any temporary, sensitive data on the user, clear it here
        // $this->plainPassword = null;
    }

    /**
     * @return string
     */
    public function getApellidoPaterno()
    {
        return $this->apellidoPaterno;
    }

    /**
     * @param string $apellidoPaterno
     */
    public function setApellidoPaterno(string $apellidoPaterno)
    {
        $this->apellidoPaterno = $apellidoPaterno;
    }

    /**
     * @return string
     */
    public function getApellidoMaterno()
    {
        return $this->apellidoMaterno;
    }

    /**
     * @param string $apellidoMaterno
     */
    public function setApellidoMaterno(string $apellidoMaterno)
    {
        $this->apellidoMaterno = $apellidoMaterno;
    }

    /**
     * @return string
     */
    public function getNombres()
    {
        return $this->nombres;
    }

    /**
     * @param string $nombres
     */
    public function setNombres(string $nombres)
    {
        $this->nombres = $nombres;
    }

    /**
     * @return string
     */
    public function getTipoDocumento()
    {
        return $this->tipoDocumento;
    }

    /**
     * @param string $tipoDocumento
     */
    public function setTipoDocumento(string $tipoDocumento)
    {
        $this->tipoDocumento = $tipoDocumento;
    }

    /**
     * @return string
     */
    public function getDocumento()
    {
        return $this->documento;
    }

    /**
     * @param string $documento
     */
    public function setDocumento(string $documento)
    {
        $this->documento = $documento;
    }

    /**
     * @return \DateTime
     */
    public function getFechaNacimiento()
    {
        return $this->fechaNacimiento;
    }

    /**
     * @param \DateTime $fechaNacimiento
     */
    public function setFechaNacimiento(\DateTime $fechaNacimiento)
    {
        $this->fechaNacimiento = $fechaNacimiento;
    }

    /**
     * @return string
     */
    public function getSexo()
    {
        return $this->sexo;
    }

    /**
     * @param string $sexo
     */
    public function setSexo(string $sexo)
    {
        $this->sexo = $sexo;
    }

    /**
     * @return string
     */
    public function getCelular()
    {
        return $this->celular;
    }

    /**
     * @param string $celular
     */
    public function setCelular(string $celular)
    {
        $this->celular = $celular;
    }

    /**
     * @return string
     */
    public function getRol()
    {
        return $this->rol;
    }

    /**
     * @param string $rol
     */
    public function setRol(string $rol)
    {
        $this->rol = $rol;
    }

    /**
     * @return mixed
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * @param mixed $email
     */
    public function setEmail($email)
    {
        $this->email = $email;
    }

    public function isValid()
    {
        return $this->valid;
    }

    public function setValid(bool $valid)
    {
        $this->valid = $valid;

        return $this;
    }


    public function isDeleted()
    {
        return $this->deleted;
    }


    public function setDeleted(bool $deleted)
    {
        $this->deleted = $deleted;
        return $this;
    }



    public function isEqualTo(UserInterface $user)
    {
        if ($user instanceof Usuario)
            return $this->isValid() && !$this->isDeleted() && $this->getPassword() == $user->getPassword() && $this->getUsername() == $user->getUsername()
                && $this->getEmail() == $user->getEmail() ;
    }



    /**
     * @return \DateTime
     */
    public function getLastLogin()
    {
        return $this->lastLogin;
    }

    /**
     * @param \DateTime $lastLogin
     */
    public function setLastLogin(\DateTime $lastLogin): Usuario
    {
        $this->lastLogin = $lastLogin;
        return $this;
    }





    //endregion
}
