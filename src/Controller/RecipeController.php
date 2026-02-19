<?php

namespace App\Controller;

use App\Repository\RecipeRepository;
use Doctrine\ORM\EntityManagerInterface;
use PHPUnit\Util\PHP\Job;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

final class RecipeController extends AbstractController
{
    #[Route('/recette', name: 'recipe.index')]
    public function index(Request $request, RecipeRepository $repository, EntityManagerInterface $em): Response
    {
        $recipes = $repository->findWithDurationLowerThan(500);
        $recipes[0]->setTitle('Pâtes bolognaise blup blup');
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
