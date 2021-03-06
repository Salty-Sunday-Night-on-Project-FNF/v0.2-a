package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1, 29], 0, false, isPlayer);
		animation.add('bf-car', [0, 1, 29], 0, false, isPlayer); // he turned into a convertible 
		animation.add('bf-christmas', [0, 1, 29], 0, false, isPlayer);
		animation.add('bf-pixel', [21, 21, 21], 0, false, isPlayer);
		// animation.add('bf-beta', [14, 15, 14], 0, false, isPlayer); // Same as "bf-old"
		animation.add('spooky', [2, 3, 2], 0, false, isPlayer);
		// animation.add('spooky-beta', [2, 3, 2], 0, false, isPlayer); // Difernt from "spooky"
		animation.add('pico', [4, 5, 4], 0, false, isPlayer);
		animation.add('pico-beta', [4, 5, 4], 0, false, isPlayer); // idk
		animation.add('mom', [6, 7, 6], 0, false, isPlayer);
		animation.add('mom-car', [6, 7, 6], 0, false, isPlayer);
		animation.add('mom-beta-car', [6, 7, 6], 0, false, isPlayer);
		animation.add('tankman', [8, 9, 8], 0, false, isPlayer);
		animation.add('face', [10, 11, 10], 0, false, isPlayer);
		animation.add('dad', [12, 13, 12], 0, false, isPlayer);
		animation.add('senpai', [22, 22, 22], 0, false, isPlayer); // aflacc personally hates icon 23
		animation.add('senpai-angry', [22, 22, 22], 0, false, isPlayer);
		// animation.add('senpai', [22, 23, 23], 0, false, isPlayer); // aflacc personally hates icon 23
		// animation.add('senpai-angry', [24, 25, 25], 0, false, isPlayer);
		animation.add('spirit', [26], 0, false, isPlayer); // winning icon was from weeg mod, don't sue aflacc
		animation.add('spirit-new', [26], 0, false, isPlayer);
		animation.add('bf-old', [14, 15, 14], 0, false, isPlayer);
		animation.add('gf', [16, 31, 30], 0, false, isPlayer); // cute icons pog
		animation.add('gf-christmas', [16, 31, 30], 0, false, isPlayer);
		animation.add('parents-christmas', [17, 18, 17], 0, false, isPlayer);
		animation.add('monster', [19, 20, 19], 0, false, isPlayer);
		animation.add('monster-christmas', [19, 20, 19], 0, false, isPlayer);
		animation.play(char);
		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
