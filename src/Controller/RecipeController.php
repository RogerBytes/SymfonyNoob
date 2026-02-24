<?php

namespace App\Controller;

use PHPUnit\Util\PHP\Job;
use App\Repository\RecipeRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

final class RecipeController extends AbstractController
{
    #[Route('/recette', name: 'recipe.index')]
    public function index(Request $request, RecipeRepository $repository, EntityManagerInterface $em): Response
    {
        $recipes = $repository->findWithDurationLowerThan(500);
        // $recipes[0]->setTitle('Riz Cantoche');
        $recipe = new Recipe();
        $em->flush();
        return $this->render('recipe/index.html.twig', [
            'title' => 'Recettes',
            'site_name' => 'Recette FR',
            'recipes' => $recipes
        ]);
    }

    // requirements est une option sup qui permet de specifier le format attendu sous forme d'une array (ici id et slug) dans l'URL
    #[Route('/recette/{slug}-{id}', name: 'recipe.show', requirements: ['id' => '\d+', 'slug' => '[a-z0-9-]+'])]
    public function show(Request $request, string $slug, int $id, RecipeRepository $repository): Response
    {
        $recipe = $repository->find($id);
        if ($recipe->getSlug() !== $slug) {
            return $this->redirectToRoute('recipe.show', ['slug'=> $recipe->getSlug(), 'id' => $recipe->getId()]);
        }
        return $this->render('recipe/show.html.twig', [
            'title' => 'Recettes',
            'site_name' => 'Recette FR',
            'recipe' => $recipe,
        ]);
    }
}
