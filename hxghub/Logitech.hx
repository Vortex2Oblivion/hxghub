package hxghub;

@:buildXml("<include name='${haxelib:hxghub}/build.xml' />")
@:include("LogitechLEDLib.h")

extern class Logitech {
    @:native('::String(LOGI_LED_BITMAP_WIDTH)')
	public static var ledBitmapWidth:Int;

    @:native('::String(LOGI_LED_BITMAP_HEIGHT)')
	public static var ledBitmapHeight:Int;

    @:native('::String(LOGI_LED_BITMAP_BYTES_PER_KEY)')
	public static var ledBitmapBytesPerKey:Int;

    @:native('::String(LOGI_LED_BITMAP_SIZE)')
    public static var ledBitmapSize:Int;

    @:native('::String(LOGI_LED_DURATION_INFINITE)')
    public static var ledDurationInfinite:Int;

    @:native('::String(LOGI_DEVICETYPE_MONOCHROME_ORD)')
    public static var devicetypeMonochromeOrd:Int;

    @:native('::String(LOGI_DEVICETYPE_RGB_ORD)')
    public static var devicetypeRgbOrd:Int;

    @:native('::String(LOGI_DEVICETYPE_PERKEY_RGB_ORD)')
    public static var devicetypePerkeyRgbOrd:Int;

    @:native("LogiLedInit")
	public static function ledInit():Bool;

    @:native("LogiLedInitWithName")
	public static function initWithName(name:String):Bool;

    @:native("LogiLedGetSdkVersion")
	public static function ledGetSdkVersion(majorNum:Null<Int>, minorNum:Null<Int>, buildNum:Null<Int>):Bool;

    @:native("LogiLedShutdown")
	public static function ledShutdown():Void;
}

enum abstract KeyName(Int) from Int from UInt to Int to UInt {
    public static inline var ESC:KeyName = 0x01;
    public static inline var F1:KeyName = 0x3b;
    public static inline var F2:KeyName = 0x3c;
    public static inline var F3:KeyName = 0x3d;
    public static inline var F4:KeyName = 0x3e;
    public static inline var F5:KeyName = 0x3f;
    public static inline var F6:KeyName = 0x40;
    public static inline var F7:KeyName = 0x41;
    public static inline var F8:KeyName = 0x42;
    public static inline var F9:KeyName = 0x43;
    public static inline var F10:KeyName = 0x44;
    public static inline var F11:KeyName = 0x57;
    public static inline var F12:KeyName = 0x58;
    public static inline var PRINT_SCREEN:KeyName = 0x137;
    public static inline var SCROLL_LOCK:KeyName = 0x46;
    public static inline var PAUSE_BREAK:KeyName = 0x145;
    public static inline var TILDE:KeyName = 0x29;
    public static inline var ONE:KeyName = 0x02;
    public static inline var TWO:KeyName = 0x03;
    public static inline var THREE:KeyName = 0x04;
    public static inline var FOUR:KeyName = 0x05;
    public static inline var FIVE:KeyName = 0x06;
    public static inline var SIX:KeyName = 0x07;
    public static inline var SEVEN:KeyName = 0x08;
    public static inline var EIGHT:KeyName = 0x09;
    public static inline var NINE:KeyName = 0x0A;
    public static inline var ZERO:KeyName = 0x0B;
    public static inline var MINUS:KeyName = 0x0C;
    public static inline var EQUALS:KeyName = 0x0D;
    public static inline var BACKSPACE:KeyName = 0x0E;
    public static inline var INSERT:KeyName = 0x152;
    public static inline var HOME:KeyName = 0x147;
    public static inline var PAGE_UP:KeyName = 0x149;
    public static inline var NUM_LOCK:KeyName = 0x45;
    public static inline var NUM_SLASH:KeyName = 0x135;
    public static inline var NUM_ASTERISK:KeyName = 0x37;
    public static inline var NUM_MINUS:KeyName = 0x4A;
    public static inline var TAB:KeyName = 0x0F;
    public static inline var Q:KeyName = 0x10;
    public static inline var W:KeyName = 0x11;
    public static inline var E:KeyName = 0x12;
    public static inline var R:KeyName = 0x13;
    public static inline var T:KeyName = 0x14;
    public static inline var Y:KeyName = 0x15;
    public static inline var U:KeyName = 0x16;
    public static inline var I:KeyName = 0x17;
    public static inline var O:KeyName = 0x18;
    public static inline var P:KeyName = 0x19;
    public static inline var OPEN_BRACKET:KeyName = 0x1A;
    public static inline var CLOSE_BRACKET:KeyName = 0x1B;
    public static inline var BACKSLASH:KeyName = 0x2B;
    public static inline var KEYBOARD_DELETE:KeyName = 0x153;
    public static inline var END:KeyName = 0x14F;
    public static inline var PAGE_DOWN:KeyName = 0x151;
    public static inline var NUM_SEVEN:KeyName = 0x47;
    public static inline var NUM_EIGHT:KeyName = 0x48;
    public static inline var NUM_NINE:KeyName = 0x49;
    public static inline var NUM_PLUS:KeyName = 0x4E;
    public static inline var CAPS_LOCK:KeyName = 0x3A;
    public static inline var A:KeyName = 0x1E;
    public static inline var S:KeyName = 0x1F;
    public static inline var D:KeyName = 0x20;
    public static inline var F:KeyName = 0x21;
    public static inline var G:KeyName = 0x22;
    public static inline var H:KeyName = 0x23;
    public static inline var J:KeyName = 0x24;
    public static inline var K:KeyName = 0x25;
    public static inline var L:KeyName = 0x26;
    public static inline var SEMICOLON:KeyName = 0x27;
    public static inline var APOSTROPHE:KeyName = 0x28;
    public static inline var ENTER:KeyName = 0x1C;
    public static inline var NUM_FOUR:KeyName = 0x4B;
    public static inline var NUM_FIVE:KeyName = 0x4C;
    public static inline var NUM_SIX:KeyName = 0x4D;
    public static inline var LEFT_SHIFT:KeyName = 0x2A;
    public static inline var Z:KeyName = 0x2C;
    public static inline var X:KeyName = 0x2D;
    public static inline var C:KeyName = 0x2E;
    public static inline var V:KeyName = 0x2F;
    public static inline var B:KeyName = 0x30;
    public static inline var N:KeyName = 0x31;
    public static inline var M:KeyName = 0x32;
    public static inline var COMMA:KeyName = 0x33;
    public static inline var PERIOD:KeyName = 0x34;
    public static inline var FORWARD_SLASH:KeyName = 0x35;
    public static inline var RIGHT_SHIFT:KeyName = 0x36;
    public static inline var ARROW_UP:KeyName = 0x148;
    public static inline var NUM_ONE:KeyName = 0x4F;
    public static inline var NUM_TWO:KeyName = 0x50;
    public static inline var NUM_THREE:KeyName = 0x51;
    public static inline var NUM_ENTER:KeyName = 0x11C;
    public static inline var LEFT_CONTROL:KeyName = 0x1D;
    public static inline var LEFT_WINDOWS:KeyName = 0x15B;
    public static inline var LEFT_ALT:KeyName = 0x38;
    public static inline var SPACE:KeyName = 0x39;
    public static inline var RIGHT_ALT:KeyName = 0x138;
    public static inline var RIGHT_WINDOWS:KeyName = 0x15C;
    public static inline var APPLICATION_SELECT:KeyName = 0x15D;
    public static inline var RIGHT_CONTROL:KeyName = 0x11D;
    public static inline var ARROW_LEFT:KeyName = 0x14B;
    public static inline var ARROW_DOWN:KeyName = 0x150;
    public static inline var ARROW_RIGHT:KeyName = 0x14D;
    public static inline var NUM_ZERO:KeyName = 0x52;
    public static inline var NUM_PERIOD:KeyName = 0x53;
    public static inline var G_1:KeyName = 0xFFF1;
    public static inline var G_2:KeyName = 0xFFF2;
    public static inline var G_3:KeyName = 0xFFF3;
    public static inline var G_4:KeyName = 0xFFF4;
    public static inline var G_5:KeyName = 0xFFF5;
    public static inline var G_6:KeyName = 0xFFF6;
    public static inline var G_7:KeyName = 0xFFF7;
    public static inline var G_8:KeyName = 0xFFF8;
    public static inline var G_9:KeyName = 0xFFF9;
    public static inline var G_LOGO:KeyName = 0xFFFF1;
    public static inline var G_BADGE:KeyName = 0xFFFF2;
}
enum abstract DeviceType(Int) from Int from UInt to Int to UInt {
    public static inline var Keyboard:DeviceType = 0x0;
    public static inline var Mouse:DeviceType = 0x3;
    public static inline var Mousemat:DeviceType = 0x4;
    public static inline var Headset:DeviceType = 0x8;
    public static inline var Speaker:DeviceType = 0xe;
}