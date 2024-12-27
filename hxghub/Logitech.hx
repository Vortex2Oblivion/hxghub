package hxghub;

import haxe.exceptions.NotImplementedException;
import cpp.Char;
import haxe.io.BytesData;
import cpp.UInt8;
import cpp.RawPointer;
import cpp.ConstCharStar;

@:buildXml("<include name='${haxelib:hxghub}/build.xml' />")
@:include("LogitechLEDLib.h")
@:keep
extern class Logitech {
	@:native("LOGI_LED_BITMAP_WIDTH")
	public static var LED_BITMAP_WIDTH:Int;

	@:native("LOGI_LED_BITMAP_HEIGHT")
	public static var LED_BITMAP_HEIGHT:Int;

	@:native("LOGI_LED_BITMAP_BYTES_PER_KEY")
	public static var LED_BITMAP_BYTES_PER_KEY:Int;

	@:native("LOGI_LED_BITMAP_SIZE")
	public static var LED_BITMAP_SIZE:Int;

	@:native("LOGI_LED_DURATION_INFINITE")
	public static var LED_DURATION_INFINITE:Int;

	@:native("LOGI_DEVICETYPE_MONOCHROME_ORD")
	public static var DEVICETYPE_MONOCHROME_ORD:Int;

	@:native("LOGI_DEVICETYPE_RGB_ORD")
	public static var DEVICETYPE_RGB_ORD:Int;

	@:native("LOGI_DEVICETYPE_PERKEY_RGB_ORD")
	public static var DEVICETYPE_PERKEY_RGB_ORD:Int;

	@:native("LOGI_DEVICETYPE_MONOCHROME")
	public static var DEVICETYPE_MONOCHROME:Int;

	@:native("LOGI_DEVICETYPE_RGB")
	public static var DEVICETYPE_RGB:Int;

	@:native("LOGI_DEVICETYPE_PERKEY_RGB")
	public static var DEVICETYPE_PERKEY_RGB:Int;

	@:native("LOGI_DEVICETYPE_ALL")
	public static var DEVICETYPE_ALL:Int;

	@:native("LogiLedInit")
	public static function ledInit():Bool;

	@:native("LogiLedInitWithName")
	public static function ledInitWithName(name:ConstCharStar):Bool;

	@:native("LogiLedGetSdkVersion")
	public static function ledGetSdkVersion(majorNum:RawPointer<Int>, minorNum:RawPointer<Int>, buildNum:RawPointer<Int>):Bool;

	@:native("LogiLedGetConfigOptionNumber")
	public static function ledGetConfigOptionNumber(configPath:ConstCharStar, defaultValue:RawPointer<Float>):Bool;

	@:native("LogiLedGetConfigOptionBool")
	public static function ledGetConfigOptionBool(configPath:ConstCharStar, defaultValue:RawPointer<Bool>):Bool;

	@:native("LogiLedGetConfigOptionColor")
	public static function ledGetConfigOptionColor(configPath:ConstCharStar, defaultRed:RawPointer<Int>, defaultGreen:RawPointer<Int>,
		defaultBlue:RawPointer<Int>):Bool;

	@:native("LogiLedGetConfigOptionRect")
	public static function ledGetConfigOptionRect(configPath:ConstCharStar, defaultX:RawPointer<Int>, defaultY:RawPointer<Int>, defaultWidth:RawPointer<Int>,
		defaultHeight:RawPointer<Int>):Bool;

	@:native("LogiLedGetConfigOptionString")
	public static function ledGetConfigOptionString(configPath:ConstCharStar, defaultValue:RawPointer<Char>, bufferSize:Int):Bool;

	@:native("LogiLedGetConfigOptionKeyInput")
	public static function ledGetConfigOptionKeyInput(configPath:ConstCharStar, defaultValue:RawPointer<Char>, bufferSize:Int):Bool;

	@:native("LogiLedSetConfigOptionLabel")
	public static function ledSetConfigOptionLabel(configPath:ConstCharStar, label:RawPointer<Char>):Bool;

	// Generic functions => Apply to any device type.
	@:native("LogiLedSetTargetDevice")
	public static function ledSetTargetDevice(targetDevice:Int):Bool;

	@:native("LogiLedSaveCurrentLighting")
	public static function ledSaveCurrentLighting():Bool;

	@:native("LogiLedSetLighting")
	public static function ledSetLighting(redPercentage:Int, greenPercentage:Int, bluePercentage:Int):Bool;

	@:native("LogiLedRestoreLighting")
	public static function ledRestoreLighting():Bool;

	@:native("LogiLedFlashLighting")
	public static function ledFlashLighting(redPercentage:Int, greenPercentage:Int, bluePercentage:Int, milliSecondsDuration:Int,
		milliSecondsInterval:Int):Bool;

	@:native("LogiLedPulseLighting")
	public static function ledPulseLighting(redPercentage:Int, greenPercentage:Int, bluePercentage:Int, milliSecondsDuration:Int,
		milliSecondsInterval:Int):Bool;

	@:native("LogiLedStopEffects")
	public static function ledStopEffects():Bool;

	// Per-key functions => only apply to DEVICETYPE_PERKEY_RGB devices.
	public static inline function logiLedSetLightingFromBitmap():Bool {
		throw new NotImplementedException();
	}

	@:native("LogiLedSetLightingForKeyWithScanCode")
	public static function ledSetLightingForKeyWithScanCode(keyCode:Int, redPercentage:Int, greenPercentage:Int, bluePercentage:Int):Bool;

	@:native("LogiLedSetLightingForKeyWithScanCode")
	public static function ledSetLightingForKeyWithHidCode(keyCode:Int, redPercentage:Int, greenPercentage:Int, bluePercentage:Int):Bool;

	@:native("LogiLedSetLightingForKeyWithQuartzCode")
	public static function ledSetLightingForKeyWithQuartzCode(keyCode:Int, redPercentage:Int, greenPercentage:Int, bluePercentage:Int):Bool;

	@:native("LogiLedSetLightingForKeyWithKeyName")
	public static function ledSetLightingForKeyWithKeyName(keyCode:NativeKeyName, redPercentage:Int, greenPercentage:Int, bluePercentage:Int):Bool;

	@:native("LogiLedSaveLightingForKey")
	public static function ledSaveLightingForKey(keyCode:NativeKeyName):Bool;

	@:native("LogiLedRestoreLightingForKey")
	public static function logiLedRestoreLightingForKey(keyCode:NativeKeyName):Bool;

	@:native("LogiLedExcludeKeysFromBitmap")
	public static function ledExcludeKeysFromBitmap(keyCode:RawPointer<NativeKeyName>, listCount:Int):Bool;

	// Per-key effects => only apply to DEVICETYPE_PERKEY_RGB devices.
	@:native("LogiLedFlashSingleKey")
	public static function ledFlashSingleKey(keyCode:NativeKeyName, redPercentage:Int, greenPercentage:Int, bluePercentage:Int, milliSecondsDuration:Int,
		milliSecondsInterval:Int):Bool;

	@:native("LogiLedPulseSingleKey")
	public static function ledPulseSingleKey(keyCode:NativeKeyName, startRedPercentage:Int, startGreenPercentage:Int, startBluePercentage:Int, finishRedPercentage:Int, finishGreenPercentage:Int, finishBluePercentage:Int, msDuration:Int,
		isInfinite:Bool):Bool;

	@:native("LogiLedStopEffectsOnKey")
	public static function ledStopEffectsOnKey(keyCode:NativeKeyName):Bool;

	//Zonal functions => only apply to devices with zones.

	@:native("LogiLedSetLightingForTargetZone")
	public static function ledSetLightingForTargetZone(deviceType:DeviceType, zone:Int, redPercentage:Int, greenPercentage:Int, bluePercentage:Int):Bool;

	@:native("LogiLedShutdown")
	public static function ledShutdown():Void;
}
