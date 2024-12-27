package;

import hxghub.DeviceType.*;
import hxghub.NativeKeyName.*;
import hxghub.Logitech.*;

class Main {
	public static function main():Void {
		var ledInitialized:Bool = ledInitWithName("SetTargetZone Sample Haxe");
		if(!ledInitialized){
			trace("ledInit() failed.");
			return;
		}
		trace("LED SDK Initialized");
		ledSetTargetDevice(DEVICETYPE_ALL);

		ledSetLighting(0, 0, 0);

		ledSetLightingForKeyWithKeyName(L, 0, 100, 100);
		ledSetLightingForKeyWithKeyName(O, 0, 100, 100);
		ledSetLightingForKeyWithKeyName(G, 0, 100, 100);
		ledSetLightingForKeyWithKeyName(I, 0, 100, 100);

		ledSetLightingForKeyWithKeyName(H, 91, 51, 13);
		ledSetLightingForKeyWithKeyName(A, 91, 51, 13);
		ledSetLightingForKeyWithKeyName(X, 91, 51, 13);
		ledSetLightingForKeyWithKeyName(E, 91, 51, 13);


		ledSetLightingForTargetZone(MOUSE, 1, 100, 0, 0);

		ledSetLightingForTargetZone(KEYBOARD, 1, 100, 0, 0);
		ledSetLightingForTargetZone(KEYBOARD, 2, 100, 100, 0);
		ledSetLightingForTargetZone(KEYBOARD, 3, 0, 100, 0);
		ledSetLightingForTargetZone(KEYBOARD, 4, 0, 100, 100);
		ledSetLightingForTargetZone(KEYBOARD, 5, 0, 0, 100);

		ledSetLightingForTargetZone(HEADSET, 0, 100, 100, 100);
		ledSetLightingForTargetZone(HEADSET, 1, 100, 0, 100);



		trace("Press \"ENTER\" to continue...");
		Sys.stdin().readLine();

		trace("LED SDK Shutting down");
		
		ledShutdown();
	}
}