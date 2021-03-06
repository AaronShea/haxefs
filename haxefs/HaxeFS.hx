package haxefs;

@:keep
@:include('linc_physfs.h')
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('physfs'))

extern class HaxeFS 
{

	@:native("linc::haxefs::fsinit")
	public static function init(currentWorkingDir:String = Sys.executablePath()):Void;

	@:native("linc::haxefs::fsdeinit")
	public static function deinit():Void;

	@:native("linc::haxefs::fsmnt")
	public static function mnt(filePath:String, mntPath:String, append:Bool = true):Bool;

	@:native("linc::haxefs::fsumnt")
	public static function umnt(filePath:String):Bool;

	@:native("linc::haxefs::fslist")
	public static function list(filePath:String):Array<String>;

	@:native("linc::haxefs::fsexist")
	public static function exist(filePath:String):Bool;

	@:native("linc::haxefs::fsisdir")
	public static function isdir(filePath:String):Bool;

	@:native("linc::haxefs::fsread")
	public static function read(filePath:String):Array<Int>;
	
	@:native("linc::haxefs::fsgeterr")
	public static function geterr():String;

}