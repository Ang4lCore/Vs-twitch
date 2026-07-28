import funkin.editors.charter.Charter;
import funkin.game.PlayState;
import flixel.text.FlxTextAlign;
import flixel.text.FlxTextBorderStyle;

// Press 6 to on/off botplay
var botplayTxt:FlxText;

// automatic switching on / автоматически включает после старта песни
var autoBotplay:Bool = true;

function postCreate() 
{
    botplayTxt = new FlxText(400, strumLines.members[0].members[0].y + 50, FlxG.width - 800, "BOTPLAY", 32);
    botplayTxt.setFormat(Paths.font("vcr.ttf"), 32, FlxColor.WHITE, FlxTextAlign.CENTER, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
    botplayTxt.visible = false;
    botplayTxt.borderSize = 1.25;
    botplayTxt.camera = camHUD;
    add(botplayTxt);

    botplayTxt.textField.antiAliasType = 0;
    botplayTxt.textField.sharpness = 400;

    //switching on there
    if (autoBotplay==true){
        player.cpu = true;
        botplayTxt.visible = true;
        botplayTxt.alpha = 1.0;
        FlxTween.tween(botplayTxt, {alpha: 0}, 0.75, { type: FlxTween.PINGPONG, ease: FlxEase.quadInOut});
    }
}

function update(elapsed:Float) {
    if (FlxG.keys.justPressed.SIX)
        if (player.cpu == false){
            player.cpu = true;
            botplayTxt.visible = true;
            botplayTxt.alpha = 1.0;
            FlxTween.tween(botplayTxt, {alpha: 0}, 0.75, { type: FlxTween.PINGPONG, ease: FlxEase.quadInOut});
        }
        else{
            FlxTween.cancelTweensOf(botplayTxt);
            player.cpu = false;
            botplayTxt.visible = false;
        };
}