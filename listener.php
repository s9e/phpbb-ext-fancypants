<?php

/**
* @package   s9e\fancypants
* @copyright Copyright (c) 2015 The s9e Authors
* @license   http://www.opensource.org/licenses/mit-license.php The MIT License
*/
namespace s9e\fancypants;

use Symfony\Component\EventDispatcher\EventSubscriberInterface;

class listener implements EventSubscriberInterface
{
	public static function getSubscribedEvents()
	{
		return array('core.text_formatter_s9e_configure_after' => 'onConfigure');
	}

	public function onConfigure($event)
	{
		$event['configurator']->FancyPants;
	}
}