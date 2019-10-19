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
  import flash.utils.getDefinitionByName;
  import flash.net.registerClassAlias;
  import flash.utils.describeType;
  //import mx.utils.ObjectUtil;


  public class DebugExample extends MovieClip
  {

    public function DebugExample()
    {
	  testLoader2();
      for (var i:int = 0; i < 10; i++ ) {
        shouNumber(i)
      }
	  trace(i);
	}

	private function shouNumber(whichNum:int):void
    {
      var myText:TextField = new TextField()
      myText.text = String(whichNum)
      myText.y = whichNum * 20
      addChild(myText)
     }
     private function testLoader2():void
	{
		var loader : Loader = new Loader();
		var context : LoaderContext = new LoaderContext(true, ApplicationDomain.currentDomain);
		context.applicationDomain = ApplicationDomain.currentDomain;
		loader.load(new URLRequest("gp_edit.swf"), context);
		loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadcom);
		function loadcom(the:Event):void
		{
			//var decryptClass:Class = getClass("ǵ.K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K");
			//if(decryptClass==null)return;
			//var typeName:String = "class_31";
			//var packageName:String = typeName.split("::")[1]; 
			//var packageName:String = "a";
			//var type:Class = Class(getDefinitionByName(typeName)); 
			//registerClassAlias(packageName, type); 
			var keyClass:Class = getClass("class_31");
			//keyClass.
			if(keyClass==null)return;
			//var d= getClass("ʌ.D");
			//if(d==null)return;
			//var eval2 : Function =d.eval;
			//eval2("trace(3)");
			//flash.utils.describeType
			var oXml:XML=describeType(keyClass);
			trace(oXml);

		
			//ObjectUtil.getClassInfo(keyClass);
			//var key=keyClass[getInstance]();
			//keyClass.getItemAt(0);
			var key:*=keyClass["getInstance"]();
			trace(key.name_1);
			/*
			var getInstance : Function = keyClass["getInstance"];
			if(getInstance==null){
				trace("null");
				return;
			}
			var key:*=getInstance();
			trace(key.name_1);
			*/
			
			
			//var decrypt = new decryptClass(getInstance().ˡ());
			var _loc7_:String ="jaUyCKtVbb5q4Efr2gxRrwvzTcBIthtVD3V00tBuhIo3gy1tzaupY3SyohwpfHc9/+rFumm/GZUk8SIojkPH75+3YWHJ4OFnkrk76DrVaFXRyFkH4wEbEtEQK7B0NACB+KB2qhbdgcpHjhNNAPHcEDIOujrtLoUjos59Yn7zrf5l/wiRD+zPmPRkyr2wfymrVsypSyOycmRBHQYePJtK/J9wNBzr7IO028D/lmFYcNFHAAX2I7EMUZWj4ZiVivd9lel5aoaIF0VuAAePKzS8+hI6J3aWxW6kzJLiqA==";
			//var _loc8_:String = decrypt.K174932DBF359861A934E418C935A3443E70CC8445895K(_loc7_);
			//trace(_loc8_);
			function getClass(className:String):Class
			{
				try
    			{
   					return loader.contentLoaderInfo.applicationDomain.getDefinition(className) as Class;
				} catch (p_e : ReferenceError)
    			{
        			trace("定义 " + className + " 不存在");
        		    return null;
    			}
    			return null;
			}
		}
	}
  }
}