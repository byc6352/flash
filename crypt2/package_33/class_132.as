package package_33
{
   public class class_132 implements class_131
   {
       
      
      private var var_366:class_133;
      
      private var var_365:Array;
      
      public var name:String;
      
      private var var_367:class_156;
      
      public function class_132(param1:String, param2:Array, param3:class_133, param4:class_156)
      {
         super();
         this.name = param1 == null?"_anonymous_":param1;
         this.var_365 = param2;
         this.var_366 = param3;
         this.var_367 = param4;
      }
      
      public function method_574() : void
      {
         if(var_366 != null)
         {
            var_366.method_574();
         }
      }
      
      public function method_478() : String
      {
         throw new class_158("msg.rt.eval.function.to.value");
      }
      
      public function getBoolean() : Boolean
      {
         throw new class_158("msg.rt.eval.function.to.value");
      }
      
      public function run(param1:Array) : Object
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * 提示：在设置您可以尝试启用“自动反混淆”
          * Error type: NullPointerException (null)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function method_540(param1:Object) : void
      {
         var _loc2_:* = "\n<Function name=\"" + name + "\" params=\"";
         var _loc3_:int = var_365 == null?0:int(var_365.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc4_ > 0)
            {
               _loc2_ = _loc2_ + ",";
            }
            _loc2_ = _loc2_ + var_365[_loc4_];
            _loc4_++;
         }
         trace(_loc2_ + "\">");
         var_366.method_540(param1,1);
         trace("\n</Function>");
      }
      
      public function getAny() : Object
      {
         return this;
      }
      
      public function getNumber() : Number
      {
         throw new class_158("msg.rt.eval.function.to.value");
      }
   }
}
