package
{
  import flash.display.MovieClip;
  import flash.text.TextField;
  import flash.events.Event;
  import flash.net.URLLoader;
  import flash.net.URLRequest;
  import flash.net.URLRequestMethod;
  import flash.net.URLStream;
  import flash.utils.ByteArray;
  import flash.external.ExternalInterface;
  import flash.display.Loader;
  import flash.system.ApplicationDomain;
  import flash.system.LoaderContext;
  import flash.events.IOErrorEvent;
  import flash.events.SecurityErrorEvent;
  import flash.display.LoaderInfo;
  import flash.display.Sprite;
   /**
  * ...
  * @author ☆byc☆
  */
  public class testLoader1as extends MovieClip
  {
	  private var loader:Loader;
	  private var context : LoaderContext;
	  public static var myEval : Function=null;
	  public static var myk : Function=null;
	  private var getSwf:Sprite;//对swf对象的引用变量
	  private var getSwf2:MovieClip;//对swf对象的引用变量
	  
	public function testLoader1as()
    {
      for (var i:int = 0; i < 10; i++ ) {
        shouNumber(i);
     }
	  trace("start testLoader1:");
	  trace( stage.loaderInfo.url );
	  //LoadSwf("fws_18.swf");
	  LoadSwf("testLoader2.swf");
      ExternalInterface.addCallback("test", test);
	  //var context : LoaderContext = new LoaderContext(true, ApplicationDomain.currentDomain);
	}
	private function shouNumber(whichNum:int):void
    {
      var myText:TextField = new TextField();
      myText.text = String(whichNum);
      myText.y = whichNum * 20;
      addChild(myText);
     }
	 //加载swf
	 private function LoadSwf(fileName:String)
	 {
		//var loader:Loader = new Loader(); 
		//var context : LoaderContext = new LoaderContext();
		//var context : LoaderContext = new LoaderContext(true, ApplicationDomain.currentDomain);
		//context.applicationDomain = new ApplicationDomain(ApplicationDomain.currentDomain);
		loader = new Loader();
	  	//context= new LoaderContext();
		context = new LoaderContext(true, ApplicationDomain.currentDomain);
		context.applicationDomain = ApplicationDomain.currentDomain;//加载到同域(共享库)
		//loader.load(new URLRequest(fileName), context);
		loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadComplete);  
		loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR, loadError);   
		loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, loadError); 
		loader.load(new URLRequest(fileName), context);
	 }
	 //使用反射的方式
	private function getClass(className:String):Class
	{
		//return loader.contentLoaderInfo.applicationDomain.getDefinition(className)  as  Class;
		try
		{
			return loader.contentLoaderInfo.applicationDomain.getDefinition(className)  as  Class;
		} catch (p_e : ReferenceError)
		{
			trace("定义 " + className + " 不存在");
			return null;
		}
		return null;
  	}
	private function loadComplete(e:Event):void 
	{
		loadTest(e);
		
	}
	private function loadError(e:Event):void
	{
			trace(e.toString());
	}
	private function loadTest(e:Event):void 
	{
		getSwf2=MovieClip(e.currentTarget.content);
		addChild(getSwf2);
		getSwf2.show();
		//var runtimeClassRef:Class = getClass("testLoader2");
		//var d:*=new runtimeClassRef();
		//d.show();
		
	}
	public function test2(s:String):String {
		trace(s);
		getSwf2.show();
		return "bb";
	}
	public function test(s:String):String {
		trace(s);
		return "bb";
	}
	private function loadpp(e:Event):void 
	{
		getSwf=Sprite(e.currentTarget.content);
		addChild(getSwf);
		var d= getClass("ʌ.D");
		trace("crypt:load:loadComplete.");
		if(d==null)return;
		myEval =d.eval;
		myEval("trace(3)");
		var k= getClass("ȡ");
		if(k==null)return;
		myk =k.getInstance;
		var m=myk();
		trace(m.K17493097A3A574023F4F9F868C864995F27EBC445893K());
		trace(m.ˡ());//c6a1f89747eabf4de1d7b33e045222ac
	}
	
	
	
	/*
	
	private function testLoader()
	 {
		//var loader:Loader = new Loader(); 
		//var context : LoaderContext = new LoaderContext();
		//var context : LoaderContext = new LoaderContext(true, ApplicationDomain.currentDomain);
		//context.applicationDomain = new ApplicationDomain(ApplicationDomain.currentDomain);

		context.applicationDomain = ApplicationDomain.currentDomain;//加载到同域(共享库)
		loader.load(new URLRequest("testLoader2.swf"), context);
		loader.contentLoaderInfo.addEventListener(Event.COMPLETE, completeHandler);  
		loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHandler);   
		loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler); 
		loader.load(new URLRequest("testLoader2.swf"), context);
	}
	*/
  }
}