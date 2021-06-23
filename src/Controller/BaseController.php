<?php

namespace App\Controller;


use App\Entity\Usuario;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class BaseController extends AbstractController
{
    protected function getUsuario(): Usuario
    {
        return parent::getUser();
    }

    protected function getId()
    {
        return $this->getUsuario()->getId();
    }
}
