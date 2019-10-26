package  {
	
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

  
	public class decrypt extends MovieClip {
	  private var loader:Loader;
	  private var context : LoaderContext;
	  //public static var myk : Function=null;
	  private var getSwf:Sprite;//对swf对象的引用变量
	  private var mCheckCode:Class;
	  
	  private var  mKey:String="";
	  private var myCheckCode : Function=null;
	  private var myEval : Function=null;
	  private var mCrypt : *=null;
	  private var mPriceCode:String="";
	  private var mBasePrice:int=0;
	  
	  
		public function decrypt() {
			// constructor code
			trace("start decrypt:");
			LoadSwf("fws_18.swf");
			exter();
		}
		//加载swf
	 	private function LoadSwf(fileName:String){
		//var loader:Loader = new Loader(); 
		//var context : LoaderContext = new LoaderContext();
		//var context : LoaderContext = new LoaderContext(true, ApplicationDomain.currentDomain);
		//context.applicationDomain = new ApplicationDomain(ApplicationDomain.currentDomain);
		loader = new Loader();
	  	//context= new LoaderContext();
		context = new LoaderContext(true, ApplicationDomain.currentDomain);
		context.applicationDomain = ApplicationDomain.currentDomain;//加载到同域(共享库)
		loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadComplete);  
		loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR, loadError);   
		loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, loadError); 
		loader.load(new URLRequest(fileName), context);
	 	}
		 //使用反射的方式
	 	private function getClass(className:String):Class{
			//return loader.contentLoaderInfo.applicationDomain.getDefinition(className)  as  Class;
			try{
				return loader.contentLoaderInfo.applicationDomain.getDefinition(className)  as  Class;
			} catch (p_e : ReferenceError){
				trace("定义 " + className + " 不存在");
				return null;
			}
			return null;
  		}
		private function loadComplete(e:Event):void {
			loadpp(e);
		
		}
		private function loadError(e:Event):void{
			trace(e.toString());
		}
		private function loadpp(e:Event):void {
			getSwf=Sprite(e.currentTarget.content);
			addChild(getSwf);
			trace("decrypt:load:loadComplete.");
			var d= getClass("ʌ.D");
			if(d==null)return;
			myEval =d.eval;
			myEval("trace(3)");
			
			mCheckCode= getClass("ȣ.Ȣ");
			if(mCheckCode==null)return;
			myCheckCode =mCheckCode.K174935233BFFAEF86B437BB2687FB3F1876E20445898K;
			
			var k= getClass("ȡ");
			if(k==null)return;
			var myk : Function =k.getInstance;
			var m=myk();
			mKey=m.ˡ();
			trace(m.K17493097A3A574023F4F9F868C864995F27EBC445893K());
			trace(mKey);//c6a1f89747eabf4de1d7b33e045222ac
			var c= getClass("ǵ.K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K");
			if(c==null)return;
			mCrypt=new c(mKey);
			/*
			var priceData:String="21,18901340910,01B995,104,28,011,02010,,21,8,92090700180189009,2,,3,181180 94211101279240 240,40,1900900";
			var oldData:String="jaUyCKtVbb5q4Efr2gxRrwvzTcBIthtVD3V00tBuhIo3gy1tzaupY3SyohwpfHc9/+rFumm/GZUk8SIojkPH75+3YWHJ4OFnkrk76DrVaFXRyFkH4wEbEtEQK7B0NACB+KB2qhbdgcpHjhNNAPHcEDIOujrtLoUjos59Yn7zrf5l/wiRD+zPmPRkyr2wfymrVsypSyOycmRBHQYePJtK/J9wNBzr7IO028D/lmFYcNFHAAX2I7EMUZWj4ZiVivd9lel5aoaIF0VuAAePKzS8+hI6J3aWxW6kzJLiqA==";
			var clientId:String="378da9fea46c4bf2a8593d61c25f21e8";
			var s="{referenceId:0.08381291013211012}";
			var w=cryptData(s);
			decryptData(w);
			var t=decryptTimeData(priceData);
			cryptTimeData(t);
			getPriceCode("JjoEfeJWMBRcHXr6LWkrNXbRdpfiywDXQQfsbmOvYv+bzCosM368a7BywOluoQWs/ty0JfXXsVst9cE83MAxOM+JGndpC2EL8nwoAOlkSIKunSWbm4zsT3phGlT3nt0JI2Bo58QN0xnnJKa+Kb+BxCFqA17jNhWdCfczeoBVgUmDdiS1DGkRrrbwikIqQQ9Qzz+L/0HADhMRNmo2UwVePsPEV0iJaZdlvwa+8jMCF3PGfaDfx6HNycs43SCNKyzyk6lNhgo1Z1Ay9HRD9e16Yy5P3efCOKM9VUntQiaEuy6ruk3czyrwQGp31sABVZyiD7PHsVpeLrk/dhW3DZDupbB+RGaUmDl2ZLJwcr5UcwQanftfdMYqvBA5IKlXRfL+Z2MbZgjwOrw/yosEXIL6jWVRRA29kajxSz3W9m8cfzYr0XrKg080Xw==");
			trace(mPriceCode);
			
			var req:String=replaceRequest(priceData,oldData,clientId);
			trace(req);
			oldData="ViIeG1OHxruZbQgdw0y1sdCPFPAS3BtxbAQda7d5QIyUWtV8HVnyIEPpKGwz9AY0VZUCOfqJgNCHN9+onXz7fel6aifWyCABo8TQNv+YjcXXBgjC3mK6UruoTqCotHGvpBKqHzBn9p3tsMnr5qpl9RaJXtLrT8vLYgThDjz841qhea1XDHEgLtLrAvxTqQ9I6uSxVdiXP2lsTW5oCdYwXmRrsGROD0EUz/Kz5van4BMd4zpHMDZPJH9lG2VJSeol75DA9GdzRYjXubt+Mjkcu7dLDwxMgKR9anMlCt5URiHFwqV4NZN9EyE13+dpdftNz75sLN8NjJQ=";
			var newData:String=getNewData(priceData,oldData,clientId,mPriceCode);
			trace(newData);
			decryptData(newData);
			*/
		}
		public function cryptData(str:String):String{
			//var var_26:K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K=new K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K(class_31.getInstance().name_1());
			var _loc8_:String = mCrypt.ϸ(str);
			trace("crypt:"+_loc8_);
			return _loc8_;
		}
		public function decryptData(str:String):String{
			//var var_26:K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K=new K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K(class_31.getInstance().name_1());
			var _loc8_:String =mCrypt.K174932DBF359861A934E418C935A3443E70CC8445895K(str);
			trace("decrypt:"+_loc8_);
			return _loc8_;
		}
		public function decryptTimeData(str:String):String{
			//var var_26:K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K=new K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K(class_31.getInstance().name_1());
			var _loc8_:String = mCrypt.Ϲ(str);
			trace("decryptTimeData:"+_loc8_);
			var _loc2_:Array = _loc8_.split(",");
			mBasePrice = parseInt(_loc2_[11]);
			trace("decryptTimeData:mBasePrice:"+mBasePrice);
			return _loc8_;
		}
		public function cryptTimeData(str:String):String{
			//var var_26:K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K=new K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K(class_31.getInstance().name_1());
			var _loc8_:String = cryptTime(str);
			trace("crypt:"+_loc8_);
			return _loc8_;
		}
		public function getPriceCode(str:String):String{
		//var var_26:K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K=new K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K(class_31.getInstance().name_1());
		var _loc13_:String = null;
        var _loc14_:String = null;
		var _loc18_:String = null;
		var _loc8_:String = decryptData(str);
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
                  mPriceCode = String(myEval(_loc14_));//String(D.eval(_loc14_));
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
		//{requestid:"55409110.f112911990",timestamp:"112911990",bidnumber:"55409110",checkcode:"69f4edbc56a1d721555ab66d61601ff2",version:"1.0",request:{bidamount:88300}}
		public function replaceRequest(priceData,oldData,clientId:String):String{
			
		var price_data:String = decryptTimeData(priceData);
		trace("crypt:"+price_data);
		var price_data_Array:Array = price_data.split(",");
		var basePrice:String = price_data_Array[11];
		var i:int=int(basePrice)+300;
		basePrice=String(i);
		trace("crypt:"+basePrice);
		var old_data:String = decryptData(oldData);
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
		var checkcode:String=myCheckCode(clientId +basePrice + data_timestamp + data_bidnumber + data_bidnumber + data_version);
		trace("crypt:"+checkcode);
		var _loc4_:* = "{requestid:\"" + data_requestid + "\",timestamp:\"" + data_timestamp + "\",bidnumber:\"" + data_bidnumber + "\",checkcode:\"" + checkcode + "\",version:\"" +data_version + "\",request:{bidamount:" + basePrice+ "}}";
		trace("crypt:"+_loc4_);
		var _loc5_:String = cryptData(_loc4_);
		trace("crypt:"+_loc5_);
		return _loc5_;
	}
	public function getNewData(priceData,oldData,clientId,priceCode:String):String
	{
		var price_data:String =decryptTimeData(priceData);
		trace(price_data);
		var price_data_Array:Array = price_data.split(",");
		var basePrice:String = price_data_Array[11];
		var i:int=int(basePrice)+300;
		basePrice=String(i);
		trace(basePrice);
		var old_data:String = decryptData(oldData);
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
		  checkcode =myCheckCode( data_imagenumber + data_bidnumber+basePrice + data_version+data_bidnumber+ clientId+ data_timestamp);
		else
		  checkcode = myCheckCode(data_version + clientId +data_requestid + data_bidnumber + data_imagenumber + basePrice + priceCode + data_timestamp);
		trace(checkcode);
		var new_data:* = "{requestid:\"" + data_requestid+ "\",timestamp:\"" + data_timestamp + "\",bidnumber:\"" +data_bidnumber + "\",checkcode:\"" + checkcode + "\",version:\"" + data_version + "\",request:{bidamount:\"" + basePrice+ "\",imagenumber:\"" + data_imagenumber + "\"}}";
		trace(new_data);
		var _loc8_:String = cryptData(new_data);
		trace("crypt:"+_loc8_);
		return _loc8_;
	}
	private function exter():void{

			ExternalInterface.addCallback("cryptData", cryptData);
			ExternalInterface.addCallback("decryptData", decryptData);
	  		ExternalInterface.addCallback("cryptTimeData", cryptTimeData);
	 		ExternalInterface.addCallback("decryptTimeData", decryptTimeData);
	  
	  		ExternalInterface.addCallback("getNewData", getNewData);
	  		ExternalInterface.addCallback("replaceRequest", replaceRequest);
	 	 	ExternalInterface.addCallback("getPriceCode", getPriceCode);

	}
	public function cryptTime(param1:String) : String{
        var _loc4_:Number = NaN;
        var _loc5_:Number = NaN;
        var _loc6_:Number = NaN;
        var _loc7_:Number = NaN;
        var _loc8_:Number = NaN;
		var _loc2_:Array = param1.split("");
       _loc4_ = _loc2_.length;
       if((_loc5_ = _loc4_ % 7) != 0)
       {
          _loc4_ = _loc4_ + 7 - _loc5_;
       }
       var _loc9_:Array = new Array(_loc4_);
       _loc8_ = _loc4_ / 7;
       _loc6_ = 0;
       while(_loc6_ < 7)
       {
          _loc7_ = 0;
          while(_loc7_ < _loc8_)
          {
         	 var a:Number=_loc6_ * _loc8_ + _loc7_;
         	 var b:Number=_loc6_ + _loc7_ * 7;
             if(a< _loc9_.length)
             {
            	 if(b>= _loc2_.length)
            		 _loc9_[a] = " ";
            	 else
            	  _loc9_[a] = _loc2_[b];
             }
             _loc7_++;
          }
          _loc6_++;
       }
       while(_loc9_[_loc4_ - 1] == " ")
       {
          _loc4_--;
       }
       var _loc10_:String = "";
       _loc6_ = 0;
       while(_loc6_ < _loc4_)
       {
          _loc10_ = _loc10_ + _loc9_[_loc6_];
          _loc6_++;
       }
       return _loc10_;
    }

	}
	
}
