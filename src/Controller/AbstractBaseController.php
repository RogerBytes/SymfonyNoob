<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

final class AbstractBaseController extends AbstractController
{
    #[Route('/abstract/base', name: 'app_abstract_base')]
    public function index(): Response
    {
        return $this->render('abstract_base/index.html.twig', [
            'controller_name' => 'AbstractBaseController',
            'site_name' => 'Recette FR'
        ]);
    }
}
