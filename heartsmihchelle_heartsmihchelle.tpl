{OVERALL_GAME_HEADER}

<!--
--------
-- BGA framework: Gregory Isabelli & Emmanuel Colin & BoardGameArena
-- heartsmihchelle implementation : © <Your name here> <Your email address here>
--
-- This code has been produced on the BGA studio platform for use on http://boardgamearena.com.
-- See http://en.boardgamearena.com/#!doc/Studio for more information.
-------

    heartsmihchelle_heartsmihchelle.tpl

    This is the HTML template of your game.

    Everything you are writing in this file will be displayed in the HTML page of your game user interface,
    in the "main game zone" of the screen.

    You can use in this template:
    _ variables, with the format {MY_VARIABLE_ELEMENT}.
    _ HTML block, with the BEGIN/END format

    See your "view" PHP file to check how to set variables and control blocks

    Please REMOVE this comment before publishing your game on BGA
-->
<div>
  <!-- BEGIN playerhandblock -->
  <div class="whiteblock">
    <div style="color:#{PLAYER_COLOR}">
        {PLAYER_NAME}
    </div>
    <div class="playertablecard" id="playertablecard_{PLAYER_ID}"></div>
  </div>
  <!-- END playerhandblock -->
</div>

<div id="myhand_wrap" class="whiteblock">
  <h3>My Hand</h3>
    <div id="myhand">
      <div class="playertablecard"></div>
    </div>
  </div>
</div>

<script type="text/javascript">

// Javascript HTML templates

/*
// Example:
var jstpl_some_game_item='<div class="my_game_item" id="my_game_item_${MY_ITEM_ID}"></div>';

*/

</script>

{OVERALL_GAME_FOOTER}
