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
   /**
  * ...
  * @author ☆byc☆
  */
  public class testLoader2 extends MovieClip
  {
	public function testLoader2()
    {
      for (var i:int = 0; i < 10; i++ ) {
        shouNumber(i);
     }
	 trace("start testLoader2:");
	 //trace( stage.loaderInfo.url );
	 if(stage)
     {
		 trace("start testLoader2:stage<>null");
		 this.stageProcess();
     }
     else
     {
		  trace("start testLoader2:stage==null");
  		addEventListener(Event.ADDED_TO_STAGE,this.stageProcess);
      }
	}
	private function stageProcess(e:Event = null):void
	{
		removeEventListener(Event.ADDED_TO_STAGE,this.stageProcess);
		trace( stage.loaderInfo.url );
	}
	private function shouNumber(whichNum:int):void
    {
      var myText:TextField = new TextField();
      myText.text = String(whichNum);
      myText.y = whichNum * 20;
      addChild(myText);
     }
	 public function show():void
	 {
		 trace("testLoader2.");
	 }
  }
}