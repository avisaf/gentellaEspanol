<?php


namespace App\Controller;




use App\Entity\Usuario;
use App\Exception\SchoolException;
use App\Form\ChangePwsdFormType;
use App\Form\UsuarioFormType;
use App\Manager\ConsultaManager;
use App\Manager\UsuarioManager;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Contracts\Translation\TranslatorInterface;

class UsuarioController extends BaseController
{
    /** @var UsuarioManager $usuarioManager */
    private $usuarioManager;

    private $passwordEncoder;

    public function __construct( UsuarioManager  $usuarioManager,UserPasswordEncoderInterface $passwordEncoder)
    {

        $this->passwordEncoder = $passwordEncoder;
        $this->usuarioManager = $usuarioManager;

    }



    /**
     * @Route("/usuarios",name="app_usuarios.index")
     * @IsGranted("ROLE_COORDINADOR")
     */
    public function users()
    {
        $users = $this->usuarioManager->allUsuer();
        return $this->render("Usuarios/index.html.twig", ["users" => $users]);
    }

    /**
     * @Route("/usuario/nuevo",name="app_usuarios.new")
     * @IsGranted("ROLE_COORDINADOR")
     */
    public function newUser(Request $request)
    {
        $entity = $this->usuarioManager->newUser();

            $form = $this->createForm(UsuarioFormType::class, $entity);
            $form->handleRequest($request);
            if ($form->isSubmitted() && $form->isValid()) {
                try{
                    $this->usuarioManager->addUser($entity);
                    $this->addFlash("success", 'Usuario creado con exito');
                    return $this->redirectToRoute("app_usuarios.index");
                }
                catch (SchoolException  $exception){
                    $this->addFlash('error',$exception->getMessage());

                }
            }
        return $this->render("Usuarios/new.html.twig", ["form" => $form->createView()]);
    }
    /**
     * @Route("/usuario/{id}/editar",name="app_usuarios.editar")
     * @IsGranted("ROLE_ADMIN")
     */
    public function editUser(Usuario $user, Request $request)
    {

        $form = $this->createForm(UsuarioFormType::class, $user);
        $form->handleRequest($request);

            if ($form->isSubmitted() && $form->isValid()) {
                try{
                $this->usuarioManager->updateUser($user);
                $this->addFlash("success",'Usuario Editado con exito');
                return $this->redirectToRoute("app_usuarios.index");
                }
                catch (SchoolException $exception){
                    $this->addFlash('error',$exception->getMessage());
                }

            }
        return $this->render("Usuarios/edit.html.twig", array(
            "form" => $form->createView(),
            'usuario' => $user
            ));
    }
    /**
     * @Route("/usuario/{id}/changevalidite",name="app_usuarios.change.valides",methods={"post"})
     * @IsGranted("ROLE_COORDINADOR")
     */
    public function activate(Usuario $user)
    {
        $user = $this->usuarioManager->changeValidite($user);
        return $this->json(["message" => "success", "value" => $user->isValid()]);
    }
    /**
     * @Route("/usuario/{id}/deleted",name="app_usuarios.delete_user")
     * @IsGranted("ROLE_COORDINADOR")
     */
    public function delete(Usuario $user)
    {
        $user = $this->usuarioManager->changeValidite($user);

        return $this->json(["message" => "success", "value" => $user->isValid()]);
    }



    /**
     * @Route("/cambiar_contrasenha",name="app_admin_changepswd")
     * @IsGranted("ROLE_USER")
     */
    public function changePswd(Request $request)
    {
        /** @var Usuario $user */
        $user = $this->getUser();
        $form = $this->createForm(ChangePwsdFormType::class, $user);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {

            $password =  $form["justpassword"]->getData();
            $newPassword = $form["newpassword"]->getData();

            if ($this->passwordEncoder->isPasswordValid($user, $password)) {
                $user->setPassword($this->passwordEncoder->encodePassword($user, $newPassword));
            } else {
                $this->addFlash("error", "No se pudo cambiar la contraseña");
                return $this->render("admin/params/changeMdpForm.html.twig", ["passwordForm" => $form->createView()]);
            }

           $this->usuarioManager->updateUser($user);
            $this->addFlash("success", "Contraseña cambiada con exito");
            return $this->redirectToRoute("app_admin_index");
        }
        return $this->render("admin/params/changeMdpForm.html.twig", ["passwordForm" => $form->createView()]);
    }

}
