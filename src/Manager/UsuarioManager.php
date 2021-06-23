<?php

namespace App\Manager;

use App\Entity\Usuario;
use App\Exception\SchoolException;
use Doctrine\ORM\EntityManager;

use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bridge\Monolog\Logger;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Security\Core\Authentication\Token\Storage\TokenStorageInterface;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;


class UsuarioManager
{
    private $em;
    /** @var UserPasswordEncoderInterface $encoder */
    private $encoder;



    public function __construct(EntityManagerInterface $em,UserPasswordEncoderInterface $passwordEncoder)
    {
        $this->em = $em;
        $this->encoder= $passwordEncoder;
    }

    public function allUsuer(){
        return $this->em->getRepository('App:Usuario')->findAll();
    }


    public function newUser(){
        return new Usuario();
    }

    public function setRoles(Usuario $usuario, $role)
    {
        $sfRole = 'ROLE_' . strtoupper($role);

        if ($role === 'administrador')
            $sfRole = 'ROLE_ADMIN';
        if ($role === 'admin')
            $sfRole = 'ROLE_SUPER_ADMIN';
        $usuario->setRoles(array('ROLE_USER', $sfRole));
    }
    public function addUser(Usuario $usuario){
        /** @var  $entity */
        $entity = $this->em->getRepository('App:Usuario')->findOneBy(array(
            'documento' => $usuario->getDocumento()
        ));
        if(!is_null($entity)){
            throw new SchoolException("El documento ya esta registrado");
        }
        $usuario->setPassword($this->encoder->encodePassword($usuario, $usuario->getDocumento()));
        $usuario->setEmail($usuario->getUsername().'@proyecto.com');
        $this->setRoles($usuario,$usuario->getRol());
        $this->em->persist($usuario);
        $this->em->flush();
    }
    public function updateUser(Usuario $usuario){
        /** @var Usuario $user */
        $user = $this->em->getRepository('App:Usuario')->find($usuario->getId());
        if($user->getDocumento() != $usuario->getDocumento()){
            /** @var  $entity */
            $entity = $this->em->getRepository('App:Usuario')->findOneBy(array(
                'documento' => $usuario->getDocumento()
            ));
            if(!is_null($entity)){
                throw new \Exception("El documento ya esta registrado");
            }
        }

        $usuario->setPassword($this->encoder->encodePassword($usuario, $usuario->getDocumento()));
        $usuario->setEmail($usuario->getUsername().'@proyecto.com');
        $this->setRoles($usuario,$usuario->getRol());
        $this->em->persist($usuario);
        $this->em->flush();
    }
    public function changeValidite(Usuario  $user){
        if ($user->isValid())
            $user->setValid(false);
        else
            $user->setValid(true);
        $this->em->persist($user);
        $this->em->flush();
        return $user;
    }
    public function deleteUser(Usuario  $user){
        $user->setDeleted(true);
        $this->em->persist($user);
        $this->em->flush();
        return $user;
    }
}
