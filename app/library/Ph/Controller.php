<?php
/**
 * Controller.php
 * \Ph\Controller
 *
 * The base controller and its actions
 *
 * @author      Nikos Dimopoulos <nikos@niden.net>
 * @since       2012-11-01
 * @category    Controllers
 */

namespace Ph;

use \Phalcon\Tag as Tag;

class Controller extends \Phalcon\Mvc\Controller
{
    protected $_bc = null;

    /**
     * Initializes the controller
     */
    public function initialize()
    {
        Tag::prependTitle('Phalcon PHP | ');
        $this->view->setVar('config', $this->config);
    }

    protected function getCacheHash($prefix = '', $key = '')
    {
        $name = strtolower($this->getName());

        $hash  = ($prefix) ? $prefix: '';
        $hash .= ($key)    ? $key:    '';
        $hash .= $name;

        return $hash;
    }

    protected function getName()
    {
        return str_replace('Controller', '', get_class($this));
    }

    protected function constructMenu($controller)
    {
        $commonMenu = array(
            'index'      => 'Home',
            'awards'     => 'Awards',
            'players'    => 'Players',
            'episodes'   => 'Episodes',
            'about'      => 'About',
            'contact'    => 'Contact Us',
        );

        $session = $this->getDi()->getShared('session');
        $auth    = $session->get('auth');

        $class          = get_class($controller);
        $class          = str_replace('Controller', '', $class);
        $active         = strtolower($class);
        $sessionCaption = ($auth) ? 'Log Out'         : 'Log In';
        $sessionAction  = ($auth) ? '/session/logout' : '/session/index';

        $leftMenu = array();
        foreach ($commonMenu as $link => $text) {
            $isActive   = (bool) ($active == $link);
            $newLink    = ('index' == $link) ? '/' : '/' . $link;
            $leftMenu[] = array(
                'active' => $isActive,
                'link'   => $newLink,
                'text'   => $text,
            );
        }

        $menu['current'] = $active;
        $menu['left']    = $leftMenu;

        if ($auth != false) {
            $sessionCaption .= ' ' . $auth['name'];
        }

        $menu['rightLink'] = $sessionAction;
        $menu['rightText'] = $sessionCaption;

        return $menu;
    }
}
