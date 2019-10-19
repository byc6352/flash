package package_1
{
   import flash.utils.ByteArray;
   import package_16.class_78;
   import package_16.class_79;
   
   public class K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K   //对通讯数据解密
   {
       
      
      private var var_32:String = "gfheru3";
      
      private var key:ByteArray;
      
      private var var_119:String = "abcd";
      
      private var name_5:Object;
      
      private var name_6:Object;
      
      private var a:Array;
      
      private var var_118:String = "This is a regular string";
      
      private var K1749328382B5BEFAA84220BC6B9835F6A9659D445895K:String;
      
      public function K1749382B8F4F96F87243ECB30BED0971F5A4A3445901K(param1:String)
      {
         this.key = new ByteArray();
         this.name_5 = new Object();
         this.name_6 = new Object();
         this.a = " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".split("");
         this.K1749328382B5BEFAA84220BC6B9835F6A9659D445895K = this.K174932208D89BF49B44B84830D22CFE26CB08B445895K(this.var_118);
         super();
         this.key.writeMultiByte(param1.substr(2,5),"utf-8");
      }
      
      public function method_30(param1:String) : String
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeMultiByte(class_78.name_5(param1),"utf-8");
         var _loc3_:ByteArray = class_79.K17493532683A0ACAF04F80BA6346F214C15114445898K(_loc2_,this.key);
         var _loc4_:String = class_78.method_193(_loc3_);
         return _loc4_;
      }
      
      public function K174932DBF359861A934E418C935A3443E70CC8445895K(param1:String) : String
      {
         var _loc2_:ByteArray = class_78.K174934591B086177E14424939F16E126F9E72C445897K(param1);
         var _loc3_:ByteArray = class_79.method_194(_loc2_,this.key);
         var _loc4_:String = _loc3_.toString();
         var _loc5_:String = class_78.name_6(_loc4_);
         return _loc5_;
      }
      
      public function method_195(param1:String) : String
      {
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
               if(_loc6_ * _loc8_ + _loc7_ < _loc2_.length)
               {
                  _loc9_[_loc6_ + _loc7_ * 7] = _loc2_[_loc6_ * _loc8_ + _loc7_];
               }
               else
               {
                  _loc9_[_loc6_ + 7 * _loc7_] = " ";
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
	  public function method_195c(param1:String) : String
     {
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
      
      private function K174932208D89BF49B44B84830D22CFE26CB08B445895K(param1:String) : String
      {
         return this.method_196(param1,this.name_5);
      }
      
      private function method_197(param1:String) : String
      {
         return this.method_196(param1,this.name_6);
      }
      
      private function method_196(param1:String, param2:Object) : String
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc3_:String = "";
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            _loc5_ = param1.charAt(_loc4_);
            _loc6_ = param2[_loc5_];
            if(_loc6_)
            {
               _loc3_ = _loc3_ + _loc6_;
            }
            else
            {
               _loc3_ = _loc3_ + _loc5_;
            }
            _loc4_++;
         }
         return _loc3_;
      }
   }
}
