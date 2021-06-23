<?php


namespace App\Form;


use App\Entity\Usuario;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\ChoiceList\ChoiceList;
use Symfony\Component\Form\Extension\Core\Type\BirthdayType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\Choice;
use Symfony\Component\Validator\Constraints\NotBlank;

class UsuarioFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {

        $builder
            ->add("username", TextType::class)
            ->add("nombres", TextType::class)
            ->add("apellidoPaterno", TextType::class)
            ->add("apellidoMaterno", TextType::class)
            ->add('fechaNacimiento', BirthdayType::class, array(
                'widget'   => 'choice',
                'label'    => 'Fecha de nacimiento',
                'format'   => 'dd/MM/yyyy',
                'required' => true,
            ))
            ->add('sexo', ChoiceType::class, array(
                'label'    => "Sexo",
                'choices'  => array('Masculino' => 'm', 'Femenino' => 'f'),
                'required' => true,
            ))
            ->add('tipoDocumento', ChoiceType::class, array(
            'label'    => "Tipo de documento",
            'choices'  => array('DNI' => 'DNI', 'PASAPORTE' => 'PASAPORTE'),
            'required' => true,
            ))
            ->add('documento', TextType::class, array(
                'label'    => "Documento de identidad",
                'required' => true,
            ))
            ->add('rol', ChoiceType::class, array(
                'choices'  => array(
                    'Grifero' =>Usuario::ROL_GRIFERO,
                    'Asistente' =>Usuario::ROL_COORDINADOR,
                    'Administrador' =>Usuario::ROL_ADMIN,
                     'Administrador General'=>Usuario::ROL_SUPER_ADMIN,
                ),
                'required' => true,
                'label'    => "Rol",
            ))
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Usuario::class
        ]);
    }
}
