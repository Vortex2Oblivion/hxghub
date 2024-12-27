package hxghub;

@:buildXml("<include name='${haxelib:hxghub}/build.xml' />")
@:include("LogitechLEDLib.h")
@:native("LogiLed::DeviceType")
@:keep
extern class DeviceType {
	@:native("LogiLed::DeviceType::Keyboard") public static final KEYBOARD:DeviceType;
    @:native("LogiLed::DeviceType::Mouse") public static final MOUSE:DeviceType;
    @:native("LogiLed::DeviceType::Mousemat") public static final MOUSEMAT:DeviceType;
    @:native("LogiLed::DeviceType::Headset") public static final HEADSET:DeviceType;
    @:native("LogiLed::DeviceType::Speaker") public static final SPEAKER:DeviceType;
}
