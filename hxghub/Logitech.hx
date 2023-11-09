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
}