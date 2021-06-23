<?php

namespace App\EventListener;




use Doctrine\ORM\Event\LifecycleEventArgs;
use Monolog\Logger;




class CodeAssigner
{



    public function postPersist(LifecycleEventArgs $args)
    {
        $entity        = $args->getEntity();
        $entityManager = $args->getEntityManager();


    }
}
