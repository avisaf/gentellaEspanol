<?php


namespace App\Security;


use App\Entity\Usuario;
use Symfony\Component\Security\Core\Exception\AccountExpiredException;
use Symfony\Component\Security\Core\Exception\AccountStatusException;
use Symfony\Component\Security\Core\Exception\CustomUserMessageAccountStatusException;
use Symfony\Component\Security\Core\User\UserCheckerInterface;
use Symfony\Component\Security\Core\User\UserInterface;

class UserChecker implements UserCheckerInterface
{

    public function checkPreAuth(UserInterface $user)
    {

        if (!$user instanceof Usuario) {
            return;
        }

        if ($user->isDeleted()) {
            // the message passed to this exception is meant to be displayed to the user
            throw new CustomUserMessageAccountStatusException('La cuenta fue suspendida.');
        }
    }

    public function checkPostAuth(UserInterface $user)
    {
        if (!$user instanceof Usuario) {
            return;
        }

        // user account is expired, the user may be notified
        if (!$user->isValid()) {
            throw new AccountExpiredException('La cuenta esta suspendida.');
        }
    }
}
