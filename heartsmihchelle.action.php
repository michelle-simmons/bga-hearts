<?php

/**
 *------
 * BGA framework: Gregory Isabelli & Emmanuel Colin & BoardGameArena
 * heartsmihchelle implementation : © <Your name here> <Your email address here>
 *
 * This code has been produced on the BGA studio platform for use on https://boardgamearena.com.
 * See http://en.doc.boardgamearena.com/Studio for more information.
 * -----
 *
 * heartsmihchelle.action.php
 *
 * heartsmihchelle main action entry point
 *
 *
 * In this file, you are describing all the methods that can be called from your
 * user interface logic (javascript).
 *
 * If you define a method "myAction" here, then you can call it from your javascript code with:
 * this.ajaxcall( "/heartsmihchelle/heartsmihchelle/myAction.html", ...)
 *
 */


class action_heartsmihchelle extends APP_GameAction
{
  // Constructor: please do not modify
  public function __default()
  {
    if (self::isArg('notifwindow')) {
      $this->view = "common_notifwindow";
      $this->viewArgs['table'] = self::getArg("table", AT_posint, true);
    } else {
      $this->view = "heartsmihchelle_heartsmihchelle";
      self::trace("Complete reinitialization of board game");
    }
  }

  // define your action entry points here

  public function playCard() {
    self::setAjaxMode();
    $card_id = self::getArg("id", AT_posint, true);
    $this->game->playCard($card_id);
    self::ajaxResponse();
  }
}
