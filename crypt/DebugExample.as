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
  import r1.deval.D;
  
  import package_1.K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K
  import package_8.class_41
  import package_16.class_32
  //import package_31.D;
  /**
  * ...
  * @author ☆byc☆
  */
  public class DebugExample extends MovieClip
  {
	  public static var var_26:K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K=null;
	  public static var mPriceCode:String="";
	  public static var mBasePrice:int=0;
	  //public static var myEval : Function=null;

    public function DebugExample()
    {
      for (var i:int = 0; i < 10; i++ ) {
        shouNumber(i)
      }
    
	  trace("start crpt:");
	  trace( stage.loaderInfo.url );
	  if(var_26==null)
	    var_26 = new K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K(class_31.getInstance().name_1());
	  //if(myEval==null)
	  //  LoadD();
	  //_loc7_="z7z5qYJtTNasbXJqUzT4nB1wvUEtpBLSTO7aPXk61LMpMDM9eq53NALTabI0XIeqpvljbw==";
	  //_loc7_="hEQ19fgeJ6YNnMgJyXZVoMFjDaxix0aCCHkUHT9q1smUSR8ggxoQvnnQ575lVzGNyQleIkZCZXRfE2oZQwX1T7GWEXVnphmY8lbo2i1s/N8eFWQR9CXDCBJ7iA2qQoMoa3vrIdpmRQ1reWXi+CBwvrQRdMdlcTJm1zDnHwKejuMEY5n00zC9W07OPEEwXM1RwUsIJ78Krh89F2R4LAbd9uCUZhG+ytDiB23yg8y1rduiWvZ7KD6+RGrgsutxIygyWXEvVvOlFOgWmBwTsQ+9+UrU1AtKtGZ/MecBgkCbIWOFxXseZIS3EUBQqVn0S8UhUI/IpHX3Je3+3eO8F/qh2rhNzITf5C+0wOnUcZDcLzMxLj/Bao5ItCapr8nF0wEZRIytgoDh4hFk4UwMqVKD2TJY/5+z5QyG0x3X0uaXZBEA/mb2LDCbJokSR48=";
	  //_loc7_="21,18901340910,01B995,106,26,011,02010,,21,8,92090700180189009,2,,3,181180 94211101279240 260,40,1900900";
	  //this.var_26 = new K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K(class_31.getInstance().name_1());
	  //var _loc8_:String = this.var_26.K174932DBF359861A934E418C935A3443E70CC8445895K(_loc7_);
	  //var _loc8_:String = this.var_26.method_195(_loc7_);
	  //trace(_loc8_);
	  //trace(_loc7_);
	  //var stream:FileStream = new FileStream();
	  //var file:File = new File('c:/tmp/59-55.dat');//绑定一个文件
	  //stream.open(file,FileMode.READ);//读取文件
      //trace(stream.readMultiByte(stream.bytesAvailable,'utf-8'));
	  
	  //var XML_URL:String = "http://www.example.com/Sample3.xml";
	  //var myXMLURL:URLRequest = new URLRequest(XML_URL); 
	  //var myLoader:URLLoader = new URLLoader(myXMLURL);
	  //myLoader.addEventListener("complete", xmlLoaded); 
	  
	  //var _loc6_:class_41 =new class_41(stream.bytesAvailable,614);
      //stream.close();
	  //var _loc7_:String = _loc6_.readString();
	  //this.var_26 = new K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K(class_31.getInstance().name_1());
	  //this.var_26 = new K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K("aa");
	  //var _loc8_:String = this.var_26.K174932DBF359861A934E418C935A3443E70CC8445895K(_loc7_);
	  //trace(_loc8_);
	  //getHttpData2();
	  //this.var_26 = new K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K(class_31.getInstance().name_1());
	  //_loc7_="ViIeG1OHxruZbQgdw0y1sdCPFPAS3BtxbAQda7d5QIyUWtV8HVnyIEPpKGwz9AY0VZUCOfqJgNCHN9+onXz7fel6aifWyCABo8TQNv+YjcXXBgjC3mK6UruoTqCotHGvpBKqHzBn9p3tsMnr5qpl9RaJXtLrT8vLYgThDjz841qhea1XDHEgLtLrAvxTqQ9I6uSxVdiXP2lsTW5oCdYwXmRrsGROD0EUz/Kz5van4BMd4zpHMDZPJH9lG2VJSeol75DA9GdzRYjXubt+Mjkcu7dLDwxMgKR9anMlCt5URiHFwqV4NZN9EyE13+dpdftNz75sLN8NjJQ=";
	  //decrptData(_loc7_);
	  //test();
	  //testCheckCode();

	  //var price_data:String ="21,18901340910,01B995,106,26,011,02010,,21,8,92090700180189009,2,,3,181180 94211101279240 260,40,1900900";
	  //var oldData:String = "ViIeG1OHxruZbQgdw0y1sdCPFPAS3BtxbAQda7d5QIyUWtV8HVnyIEPpKGwz9AY0VZUCOfqJgNCHN9+onXz7fel6aifWyCABo8TQNv+YjcXXBgjC3mK6UruoTqCotHGvpBKqHzBn9p3tsMnr5qpl9RaJXtLrT8vLYgThDjz841qhea1XDHEgLtLrAvxTqQ9I6uSxVdiXP2lsTW5oCdYwXmRrsGROD0EUz/Kz5van4BMd4zpHMDZPJH9lG2VJSeol75DA9GdzRYjXubt+Mjkcu7dLDwxMgKR9anMlCt5URiHFwqV4NZN9EyE13+dpdftNz75sLN8NjJQ=";
	  //var newData:String =getNewData(price_data,oldData);
	  //testLoader2();
	  //testLoader();
	  ExternalInterface.addCallback("cryptData", cryptData);
	  ExternalInterface.addCallback("decryptData", decryptData);
	  ExternalInterface.addCallback("cryptTimeData", cryptTimeData);
	  ExternalInterface.addCallback("decryptTimeData", decryptTimeData);
	  
	  ExternalInterface.addCallback("getNewData", getNewData);
	  ExternalInterface.addCallback("replaceRequest", replaceRequest);
	  ExternalInterface.addCallback("getPriceCode", getPriceCode);
    }
	//{requestid:"55409110.f112911990",timestamp:"112911990",bidnumber:"55409110",checkcode:"69f4edbc56a1d721555ab66d61601ff2",version:"1.0",request:{bidamount:88300}}
	public static function replaceRequest(priceData,oldData,clientId:String):String
	{
		var price_data:String = var_26.method_195(priceData);
		trace("crypt:"+price_data);
		var price_data_Array:Array = price_data.split(",");
		var basePrice:String = price_data_Array[11];
		var i:int=int(basePrice)+300;
		basePrice=String(i);
		trace("crypt:"+basePrice);
		var old_data:String = var_26.K174932DBF359861A934E418C935A3443E70CC8445895K(oldData);
		trace("crypt:"+old_data);
		var old_data_Array:Array = old_data.split(",");
		var data_requestid:String=old_data_Array[0];
		data_requestid=data_requestid.substring(12,data_requestid.length-1);
		trace("crypt:"+data_requestid);
		var data_timestamp:String=old_data_Array[1];
		data_timestamp=data_timestamp.substring(11,data_timestamp.length-1);
		trace("crypt:"+data_timestamp);
		var data_bidnumber:String=old_data_Array[2];
		data_bidnumber=data_bidnumber.substring(11,data_bidnumber.length-1);
		trace("crypt:"+data_bidnumber);
		var data_version:String=old_data_Array[4];
		data_version=data_version.substring(9,data_version.length-1);
		trace("crypt:"+data_version);
		var checkcode:String=class_32.K174935233BFFAEF86B437BB2687FB3F1876E20445898K(clientId +basePrice + data_timestamp + data_bidnumber + data_bidnumber + data_version);
		trace("crypt:"+checkcode);
		var _loc4_:* = "{requestid:\"" + data_requestid + "\",timestamp:\"" + data_timestamp + "\",bidnumber:\"" + data_bidnumber + "\",checkcode:\"" + checkcode + "\",version:\"" +data_version + "\",request:{bidamount:" + basePrice+ "}}";
		trace("crypt:"+_loc4_);
		var _loc5_:String = var_26.method_30(_loc4_);
		trace("crypt:"+_loc5_);
		return _loc5_;
	}
	public static function getNewData(priceData,oldData,clientId,priceCode:String):String
	{
		var price_data:String = var_26.method_195(priceData);
		trace(price_data);
		var price_data_Array:Array = price_data.split(",");
		var basePrice:String = price_data_Array[11];
		var i:int=int(basePrice)+300;
		basePrice=String(i);
		trace(basePrice);
		var old_data:String = var_26.K174932DBF359861A934E418C935A3443E70CC8445895K(oldData);
		trace(old_data);
		var old_data_Array:Array = old_data.split(",");
		var data_requestid:String=old_data_Array[0];
		data_requestid=data_requestid.substring(12,data_requestid.length-1);
		trace(data_requestid);
		var data_timestamp:String=old_data_Array[1];
		data_timestamp=data_timestamp.substring(11,data_timestamp.length-1);
		trace(data_timestamp);
		var data_bidnumber:String=old_data_Array[2];
		data_bidnumber=data_bidnumber.substring(11,data_bidnumber.length-1);
		trace(data_bidnumber);
		var data_version:String=old_data_Array[4];
		data_version=data_version.substring(9,data_version.length-1);
		trace(data_version);
		var data_imagenumber:String=old_data_Array[6];
		data_imagenumber=data_imagenumber.substr(13,4);
		trace(data_imagenumber);
		var checkcode:String="";
		if(priceCode=="")
		  checkcode =class_32.K174935233BFFAEF86B437BB2687FB3F1876E20445898K( data_imagenumber + data_bidnumber+basePrice + data_version+data_bidnumber+ clientId+ data_timestamp);
		else
		  checkcode = class_32.K174935233BFFAEF86B437BB2687FB3F1876E20445898K(data_version + clientId +data_requestid + data_bidnumber + data_imagenumber + basePrice + priceCode + data_timestamp);
		trace(checkcode);
		var new_data:* = "{requestid:\"" + data_requestid+ "\",timestamp:\"" + data_timestamp + "\",bidnumber:\"" +data_bidnumber + "\",checkcode:\"" + checkcode + "\",version:\"" + data_version + "\",request:{bidamount:\"" + basePrice+ "\",imagenumber:\"" + data_imagenumber + "\"}}";
		trace(new_data);
		var _loc8_:String = var_26.method_30(new_data);
		trace("crypt:"+_loc8_);
		return _loc8_;
	}
	public static function cryptData(str:String):String
	{
		//var var_26:K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K=new K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K(class_31.getInstance().name_1());
		var _loc8_:String = var_26.method_30(str);
		trace("crypt:"+_loc8_);
		return _loc8_;
	}
	public static function decryptData(str:String):String
	{
		//var var_26:K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K=new K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K(class_31.getInstance().name_1());
		var _loc8_:String = var_26.K174932DBF359861A934E418C935A3443E70CC8445895K(str);
		trace("crypt:"+_loc8_);
		return _loc8_;
	}
	public static function cryptTimeData(str:String):String
	{
		//var var_26:K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K=new K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K(class_31.getInstance().name_1());
		var _loc8_:String = var_26.method_195c(str);
		trace("crypt:"+_loc8_);
		return _loc8_;
	}
	public static function decryptTimeData(str:String):String
	{
		//var var_26:K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K=new K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K(class_31.getInstance().name_1());
		var _loc8_:String = var_26.method_195(str);
		trace("crypt:"+_loc8_);
		var _loc2_:Array = _loc8_.split(",");
		mBasePrice = parseInt(_loc2_[11]);
		trace("crypt:mBasePrice:"+mBasePrice);
		return _loc8_;
	}
	public static function getPriceCode(str:String):String
	{
		//var var_26:K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K=new K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K(class_31.getInstance().name_1());
		var _loc13_:String = null;
        var _loc14_:String = null;
		var _loc18_:String = null;
		var _loc8_:String = var_26.K174932DBF359861A934E418C935A3443E70CC8445895K(str);
		trace("crypt:decryptYzcodeMsg:"+_loc8_);
		var _loc9_:Object = JSON.parse(_loc8_);
		var _loc10_:String = _loc9_.response.responsecode;
		var _loc11_:String = _loc9_.servertime;
		if(_loc10_ == "0")
		{
		    _loc13_ = _loc9_.response.data.imageurl;
            _loc14_ = _loc9_.response.data.expression;
		    if(_loc14_ != null)
            {
               trace("投标板块,得到的数据,type:" + _loc9_.response.data.type + ",字符串" + _loc14_);
               if(_loc9_.response.data.type == 1)
               {
                  mPriceCode = String(D.eval(_loc14_));//String(D.eval(_loc14_));
               }
               else
               {
                  mPriceCode = _loc14_;
               }
               trace("投标板块,priceCode:",mPriceCode);
            }
            else
            {
               mPriceCode = "";
            }
		}
        else
        {
            _loc18_ = _loc9_.response.responsemsg;
            trace("投标板块,系统提示2-1",_loc18_);
        }
			
			
		return mPriceCode;
	}
/*
	private static function LoadD():void
	{
		var loader : Loader = new Loader();
		var context : LoaderContext = new LoaderContext(true, ApplicationDomain.currentDomain);
		context.applicationDomain = ApplicationDomain.currentDomain;
		loader.load(new URLRequest("fws_18.swf"), context);
		//var url:URLRequest=new URLRequest("D:\\works\\app\\pp\\fws_18.swf");
		//if(url==null)trace("null")
		//loader.load(url,context);
		trace("crypt:load:fws_18.swf");
		loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadComplete);
		loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, loadError);
		loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR, loadError);
		function loadComplete(e:Event):void
		{
			var d= getClass("ʌ.D");
			trace("crypt:load:loadComplete.");
			if(d==null)return;
			myEval =d.eval;
			myEval("trace(3)");
			//test();
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
		function loadError(e:Event):void
		{
			trace(e.toString());
		}
	}
	*/
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
			var keyClass:Class = getClass("class_31");
			if(keyClass==null)return;
			//var d= getClass("ʌ.D");
			//if(d==null)return;
			//var eval2 : Function =d.eval;
			//eval2("trace(3)");
			
			var getInstance : Function = keyClass.getInstance;
			
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
	private function testLoader():void
	{
		var loader : Loader = new Loader();
		var context : LoaderContext = new LoaderContext(true, ApplicationDomain.currentDomain);
		context.applicationDomain = ApplicationDomain.currentDomain;
		loader.load(new URLRequest("fws_18.swf"), context);
		loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadcom);
		function loadcom(the:Event):void
		{
			var decryptClass:Class = getClass("ǵ.K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K");
			if(decryptClass==null)return;
			var keyClass:Class = getClass("ȡ");
			if(keyClass==null)return;
			var d= getClass("ʌ.D");
			if(d==null)return;
			var eval2 : Function =d.eval;
			eval2("trace(3)");
			
			var getInstance : Function = keyClass.getInstance;
			
			var decrypt = new decryptClass(getInstance().ˡ());
			var _loc7_:String ="jaUyCKtVbb5q4Efr2gxRrwvzTcBIthtVD3V00tBuhIo3gy1tzaupY3SyohwpfHc9/+rFumm/GZUk8SIojkPH75+3YWHJ4OFnkrk76DrVaFXRyFkH4wEbEtEQK7B0NACB+KB2qhbdgcpHjhNNAPHcEDIOujrtLoUjos59Yn7zrf5l/wiRD+zPmPRkyr2wfymrVsypSyOycmRBHQYePJtK/J9wNBzr7IO028D/lmFYcNFHAAX2I7EMUZWj4ZiVivd9lel5aoaIF0VuAAePKzS8+hI6J3aWxW6kzJLiqA==";
			var _loc8_:String = decrypt.K174932DBF359861A934E418C935A3443E70CC8445895K(_loc7_);
			trace(_loc8_);
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
	
	private function testCheckCode():void
	{
		//{requestid:"55409110.f112924930",timestamp:"112924930",bidnumber:"55409110",checkcode:"cd8adc8f8b21d99a166e5690bab20f22",version:"1.0",request:{bidamount:"88300",imagenumber:"7703"}}
		var version:String="1.0";
		var clientId:String = "378da9fea46c4bf2a8593d61c25f21e8";
		var requestid:String="55409110.f112924930";
		var bidnumber:String="55409110";
		var imagenumber:String="7703";
		var bidamount:String="88300";
		var priceCode:String="c";
		var timestamp:String="112924930";

		//var checkcode:String = class_32.K174935233BFFAEF86B437BB2687FB3F1876E20445898K(version + clientId +requestid + bidnumber + imagenumber + bidamount + priceCode + timestamp);
		//var checkcode:String = class_32.K174935233BFFAEF86B437BB2687FB3F1876E20445898K(this.version + this.clientId + this.requestid + this.bidnumber + _loc6_ + _loc5_ + param3 + this.timestamp);
		//loc6_ + this.bidnumber + _loc5_ + this.version + this.bidnumber + this.clientId + this.timestamp
		//cd8adc8f8b21d99a166e5690bab20f22
		//cd8adc8f8b21d99a166e5690bab20f22
		var checkcode:String = class_32.K174935233BFFAEF86B437BB2687FB3F1876E20445898K( imagenumber + bidnumber+bidamount + version+bidnumber+ clientId+ timestamp);
		trace(checkcode);
	}
		private function testCheckCode2():void
	{
		//{requestid:"55409110.f111643689",timestamp:"111643689",bidnumber:"55409110",checkcode:"3f19dc210e27e2140cefd558ed05b3e3",version:"1.0",request:{bidamount:"88100",imagenumber:"1768"}}
		//3f19dc210e27e2140cefd558ed05b3e3
		var version:String="1.0";
		//var clientId:String = "4d3d87126d5446248c44ff0f33cc75b3";
		var clientId:String = "378da9fea46c4bf2a8593d61c25f21e8";
		var requestid:String="55409110.f111643689";
		var bidnumber:String="55409110";
		var imagenumber:String="1768";
		var bidamount:String="88100";
		var priceCode:String="c";
		var timestamp:String="111643689";

		//var checkcode:String = class_32.K174935233BFFAEF86B437BB2687FB3F1876E20445898K(version + clientId +requestid + bidnumber + imagenumber + bidamount + priceCode + timestamp);
		var checkcode:String = class_32.K174935233BFFAEF86B437BB2687FB3F1876E20445898K( imagenumber + bidnumber+bidamount + version+bidnumber+ clientId+ timestamp);
		trace(checkcode);
	}
	private function testCheckCode3():void
	{
		//{requestid:55409110.f111636649,timestamp:111636649,bidnumber:55409110,checkcode:d8d49d63ac97fb1e0f7ad546fd169b20,version:1.0,request:{bidamount:88100}}
		//this.var_30 = class_32.K174935233BFFAEF86B437BB2687FB3F1876E20445898K(this.clientId + _loc3_ + this.timestamp + this.bidnumber + this.bidnumber + this.version);
		var version:String="1.0";
		var clientId:String = "4d3d87126d5446248c44ff0f33cc75b3";
		var requestid:String="55409110.f111643689";
		var bidnumber:String="55409110";
		var imagenumber:String="1768";
		var bidamount:String="88100";
		var priceCode:String="c";
		var timestamp:String="111636649";

		//var checkcode:String = class_32.K174935233BFFAEF86B437BB2687FB3F1876E20445898K(version + clientId +requestid + bidnumber + imagenumber + bidamount + priceCode + timestamp);
		var checkcode:String = class_32.K174935233BFFAEF86B437BB2687FB3F1876E20445898K( clientId + bidamount+ timestamp+bidnumber +bidnumber+ version);
		trace(checkcode);
	}
	private static function test():void
	{
		//var s:String="{\"aa\":\"aa\"}";
		//var j:Object = JSON.parse(s);
		//trace(j.aa);
		//var s:String="zNSnJmrej3/2KfH5hNIIdg+Xu933mqknKnjx8aOBXFx0Xv94VcgCxRBy+1lqMJTYjpX/kqtLC5w0WFVqL+TEr07KzcUDLlTvJrMzOSF2Rn1GdK4CzftFOkNOll5IUVcrWbZuCG8GD8nXYuX5Ouice1UBJEPEGyDra5z+44m5sri5M3WuAKLdtIFO9qFu9nVWJqhMUjGhWcg3xyUoHqSwadkti0AStNdLt0kH8M+TujxL+suVvMuahUijlolSC36YMJJd5v026arniidmx6vRru0/Ma0J7pXwI2xwWe9LdT+d1TUEQHadIQQNmpgsWu3Wkrc4PgI1MEOJqIDTwxpH8VKkVN3qNOQnv2JO1w==";
		//var s:String="jaUyCKtVbb5q4Efr2gxRrwvzTcBIthtVD3V00tBuhIo3gy1tzaupY3SyohwpfHc9/+rFumm/GZUk8SIojkPH75+3YWHJ4OFnkrk76DrVaFXRyFkH4wEbEtEQK7B0NACB+KB2qhbdgcpHjhNNAPHcEDIOujrtLoUjos59Yn7zrf5l/wiRD+zPmPRkyr2wfymrVsypSyOycmRBHQYePJtK/J9wNBzr7IO028D/lmFYcNFHAAX2I7EMUZWj4ZiVivd9lel5aoaIF0VuAAePKzS8+hI6J3aWxW6kzJLiqA==";
		//var s:String="JjoEfeJWMBRcHXr6LWkrNXbRdpfiywDXQQfsbmOvYv+bzCosM368a7BywOluoQWs/ty0JfXXsVst9cE83MAxOM+JGndpC2EL8nwoAOlkSIKunSWbm4zsT3phGlT3nt0JI2Bo58QN0xnnJKa+Kb+BxCFqA17jNhWdCfczeoBVgUmDdiS1DGkRrrbwikIqQQ9Qzz+L/0HADhMRNmo2UwVePsPEV0iJaZdlvwa+8jMCF3PGfaDfx6HNycs43SCNKyzyk6lNhgo1Z1Ay9HRD9e16Yy5P3efCOKM9VUntQiaEuy6ruk3czyrwQGp31sABVZyiD7PHsVpeLrk/dhW3DZDupbB+RGaUmDl2ZLJwcr5UcwQanftfdMYqvBA5IKlXRfL+Z2MbZgjwOrw/yosEXIL6jWVRRA29kajxSz3W9m8cfzYr0XrKg080Xw==";
		//decrptData(s);
		//var s:String="21,18901340910,01B995,104,28,011,02010,,21,8,92090700180189009,2,,3,181180 94211101279240 240,40,1900900";
		//trace(s);
		//var d:String=decrptTimeData(s);
		//s="21,18901340910,01B995,105,27,011,02010,,21,8,92090700180189009,2,,3,181180 94211101279240 250,40,1900900";
		//var e=decrptTimeData(d);
		//s="21,18901340910,01B995,106,26,011,02010,,21,8,92090700180189009,2,,3,181180 94211101279240 260,40,1900900";
		//d=decrptTimeData(s);
		//var j:String= var_26.method_195c(d);
		//trace(j);
		//var s:String="{\"aa\":\"aa\"}";
		//s=cryptData(s);
		//trace(s);
		//var clientId:String = "378da9fea46c4bf2a8593d61c25f21e8";
		//var priceData:String="21,18901340940,01B995,109,24,011,02010,,21,8,92090700180189009,2,,3,181181 94211101289250 290,40,1900900";
		//var oldData:String="jaUyCKtVbb5q4Efr2gxRrwvzTcBIthtVD3V00tBuhIo3gy1tzaupY3SyohwpfHc9/+rFumm/GZUk8SIojkPH75+3YWHJ4OFnkrk76DrVaFXRyFkH4wEbEtEQK7B0NACB+KB2qhbdgcpHjhNNAPHcEDIOujrtLoUjos59Yn7zrf5l/wiRD+zPmPRkyr2wfymrVsypSyOycmRBHQYePJtK/J9wNBzr7IO028D/lmFYcNFHAAX2I7EMUZWj4ZiVivd9lel5aoaIF0VuAAePKzS8+hI6J3aWxW6kzJLiqA==";
		//var s:String=replaceRequest(priceData,oldData,clientId);
		//var a:String = "123";
		//var i:int=int(a)+300;
		//trace(i);
		var a:String="DTg51MYSMCCCJMtKgljeEbNnnRVqfYBK0ZHPij6lVlQfAGa9zuP3P8ZClT08lXae1f/GydyCR3/63uCoZbtJ43zAshun0kSSyfHwy/HHRPyvNOAz9/8MyRgJYdYKU9CNmixNapF/rP81c47KmAXg1VWvnup6vO7WDdhcQcYja4DtOegaijCRN38VG/ZygzymB9SI7aYA0jY3W9Cwutp9itY/VIsBzttw07vkjLhr4xuSfU7E8vwhUxPvTY4mWKywuTF/m3pWjgc3wfFFK1tY97IWhW79+OTyWIMEd6pi221UpzLfKXK2jgVANUfQch2mLEPZC3QhzP/QJ6VOAZogDZNhanrO4kS1Y++p6NrEhDib/orReHwsdou9mzI0RGkqYGiBSk4VKIy2aqMjXTXKLpyiBcr8ATcwN82NEGcvRLDKcO8hyLkT/ENzCEI=";
		//var a:String = "JjoEfeJWMBRcHXr6LWkrNXbRdpfiywDXQQfsbmOvYv+bzCosM368a7BywOluoQWs/ty0JfXXsVst9cE83MAxOM+JGndpC2EL8nwoAOlkSIKunSWbm4zsT3phGlT3nt0JI2Bo58QN0xnnJKa+Kb+BxCFqA17jNhWdCfczeoBVgUmDdiS1DGkRrrbwikIqQQ9Qzz+L/0HADhMRNmo2UwVePsPEV0iJaZdlvwa+8jMCF3PGfaDfx6HNycs43SCNKyzyk6lNhgo1Z1Ay9HRD9e16Yy5P3efCOKM9VUntQiaEuy6ruk3czyrwQGp31sABVZyiD7PHsVpeLrk/dhW3DZDupbB+RGaUmDl2ZLJwcr5UcwQanftfdMYqvBA5IKlXRfL+Z2MbZgjwOrw/yosEXIL6jWVRRA29kajxSz3W9m8cfzYr0XrKg080Xw==";
		var b:String=getPriceCode(a);
		trace(b);
	}
	private function shouNumber(whichNum:int):void
    {
      var myText:TextField = new TextField()
      myText.text = String(whichNum)
      myText.y = whichNum * 20
      addChild(myText)
     }
	/*
	private function decrptData2(str:String):void
	{
		var _loc8_:String = this.var_26.method_195(str);
		trace(_loc8_);
	}

	 private function getHttpData2():void
	 {
		 
		 var _loc3_:String = "http://154.221.19.215/1.jpg";
         var _loc4_:URLRequest = new URLRequest(_loc3_);
        _loc4_.method = URLRequestMethod.GET;
         _loc4_.contentType = "application/json";
		 this.var_271 = new URLLoader();
		 this.var_271.dataFormat=URLLoader.DataFormat.BINARY;
         streamer.load(_loc4_);
		 streamer.addEventListener(Event.COMPLETE,this.DataLoaded2);
	 }
	  private function DataLoaded2(event:Event):void 
	 {
       var streamer:URLStream = URLStream( event.target );
		var array:ByteArray=new ByteArray();
		streamer.readBytes(array,0,1061);
		trace(array.length);
		array.position=0;
		
		 var _loc6_:class_41 =new class_41(array,1040);
		 var _loc7_:String = _loc6_.readString();
	  	this.var_26 = new K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K(class_31.getInstance().name_1());

	  	var _loc8_:String = this.var_26.K174932DBF359861A934E418C935A3443E70CC8445895K(_loc7_);
		 trace(_loc8_);
	 }
	 private function getHttpData():void
	 {
		 var streamer:URLStream = new URLStream();
		 var _loc3_:String = "http://154.221.19.215/1.jpg";
         var _loc4_:URLRequest = new URLRequest(_loc3_);
         _loc4_.method = URLRequestMethod.GET;
         //_loc4_.contentType = "application/json";
		 this.var_271 = new URLLoader();
		 //this.var_271.dataFormat=URLLoader.DataFormat.BINARY;
         this.var_271.load(_loc4_);
		 this.var_271.addEventListener(Event.COMPLETE,this.DataLoaded);
	 }
	 private function DataLoaded(event:Event):void 
	 {
		 //myXML = XML(myLoader.data);
		 trace("Data loaded.");
		 var array:ByteArray=new ByteArray();
		 //array.writeb
		 var _loc6_:class_41 =new class_41(ByteArray(var_271.data),614);
		 var _loc7_:String = _loc6_.readString();
	  	this.var_26 = new K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K(class_31.getInstance().name_1());

	  	var _loc8_:String = this.var_26.K174932DBF359861A934E418C935A3443E70CC8445895K(_loc7_);
		 trace(_loc8_);
	 }*/

  }
}