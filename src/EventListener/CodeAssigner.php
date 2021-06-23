<?php

namespace App\EventListener;



use App\Entity\ComprobanteElectronico;
use App\Entity\CorrelativoInterno;
use App\Entity\ReciboEgreso;
use App\Entity\Settings;
use Doctrine\ORM\Event\LifecycleEventArgs;
use Monolog\Logger;




class CodeAssigner
{



    public function postPersist(LifecycleEventArgs $args)
    {
        $entity        = $args->getEntity();
        $entityManager = $args->getEntityManager();
        /** @var Settings $setting */
        $setting =  $entityManager->getRepository('App:Settings')->find(1);
        if($entity instanceof  ComprobanteElectronico and $setting->getServidor()==false){
            /** @var CorrelativoInterno $ticket */
            $ticket=$entityManager->getRepository('App:CorrelativoInterno')->findOneBy(
                array(
                    'tipo'   => $entity->getTipo()
                ));


            $serie=$ticket->getSerie();
            $numero=$ticket->getNumero();
            $recibo=$ticket->getIdentificador().$ticket->getIdentificadorLocal().$serie."-".$numero;
            $entity->setNumeroRecibo($recibo);
            if((int)$numero+1==1000000){
                $serie=(int)$serie+1;
                $numero=1;
            }
            else $numero=(int)$numero+1;

            $ticket->setSerie((int)$serie);
            $ticket->setNumero($numero);



            $entityManager->persist($entity);
            $entityManager->persist($ticket);
            $entityManager->flush();
        }
        if($entity instanceof  ReciboEgreso and $setting->getServidor()==false){
            /** @var CorrelativoInterno $ticket */
            $ticket=$entityManager->getRepository('App:CorrelativoInterno')->findOneBy(
                array(
                    'tipo'   => ComprobanteElectronico::RECIBO_EGRESO
                ));


            $serie=$ticket->getSerie();
            $numero=$ticket->getNumero();
            $recibo=$ticket->getIdentificador().$ticket->getIdentificadorLocal().$serie."-".$numero;
            $entity->setNumeroRecibo($recibo);
            if((int)$numero+1==1000000){
                $serie=(int)$serie+1;
                $numero=1;
            }
            else $numero=(int)$numero+1;

            $ticket->setSerie((int)$serie);
            $ticket->setNumero($numero);



            $entityManager->persist($entity);
            $entityManager->persist($ticket);
            $entityManager->flush();
        }

    }
}
