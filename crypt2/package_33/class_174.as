package package_33
{
   import r1.deval.parser.class_128;
   
   class class_174 extends class_163
   {
       
      
      function class_174(param1:class_131, param2:*, param3:*)
      {
         super(param1,param2,param3);
      }
      
      override public function getNumber() : Number
      {
         return Number(getBoolean());
      }
      
      override public function method_478() : String
      {
         return getBoolean().toString();
      }
      
      override public function getBoolean() : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * 提示：在设置您可以尝试启用“自动反混淆”
          * Error type: NullPointerException (null)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override public function getAny() : Object
      {
         return getBoolean();
      }
   }
}
