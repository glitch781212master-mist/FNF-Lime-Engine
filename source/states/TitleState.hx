package states;

import flixel.FlxState;
import flxanimate.FlxAnimatedSprite;

var logo:FlxAnimatedSprite;
var gfDanceTitle:FlxAnimatedSprite;
var titleEnter:FlxAnimatedSprite;
var gfDanceTitlebg:FlxSprite;

class TitleState extends FlxState
{
    override public function create():Void
    {
    gfDanceTitle = new FlxAnimatedSprite(0, 0, "assets/images/menus/titlescreen/gfDanceTitle.png");
    gfDanceTitle.loadGraphic("assets/images/menus/titlescreen/gfDance.png", FlxAnimatedSprite.sparrowAtlas, 1, true, 0, 0);
    gfDanceTitle.addAnimation("gfDance", [0, 1, 2, 3, 4, 5], 12, true);
    gfDanceTitle.play("gfDance");
    add(gfDanceTitle);

    logo = new FlxAnimatedSprite(0, 0, "assets/images/menus/titlescreen/logo.png");
    logo.loadGraphic("assets/images/menus/titlescreen/logo.png", FlxAnimatedSprite.sparrowAtlas, 1, true, 0, 0);
    logo.addAnimation("logo bumpin", [0, 1, 2, 3, 4, 5], 12, true);
    logo.play("logo bumpin");
    add(logo);
    
    titleEnter = new FlxAnimatedSprite(0, 0, "assets/images/menus/titlescreen/titleEnter.png");
    titleEnter.loadGraphic("assets/images/menus/titlescreen/titleEnter.png", FlxAnimatedSprite.sparrowAtlas, 1, true, 0, 0);
    if (pressed != null)
    {
        titleEnter.addAnimation("ENTER PRESSED", [0, 1, 2, 3, 4, 5], 12, true);
        titleEnter.play("ENTER PRESSED");
    }
    if (not pressed != null)
    {
        titleEnter.addAnimation("ENTER FREEZE", [0], 12, true);
        titleEnter.play("ENTER FREEZE");
    }
    add(titleEnter);

    gfDanceTitlebg = new FlxSprite(0, 0, "assets/images/menus/titlescreen/gfDanceTitlebg.png");
    add(gfDanceTitlebg);
    }
}