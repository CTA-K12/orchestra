<?php

namespace MESD\Example\OrganizerBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction($name)
    {
        return $this->render('MESDExampleOrganizerBundle:Default:index.html.twig', array('name' => $name));
    }
}
