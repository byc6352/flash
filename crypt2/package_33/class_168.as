package package_33
{
   import r1.deval.parser.class_128;
   
   class class_168 extends class_162
   {
       
      
      var var_458:int;
      
      function class_168(param1:class_131, param2:*, param3:int)
      {
         super(param1,param2);
         this.var_458 = param3;
      }
      
      public function method_611(param1:int) : Boolean
      {
         return param1 == this.var_458;
      }
      
      override public function getBoolean() : Boolean
      {
         return Boolean(getNumber());
      }
      
      override public function getAny() : Object
      {
         return getNumber();
      }
      
      override public function method_478() : String
      {
         return getNumber().toString();
      }
      
      override public function getNumber() : Number
      {
         var _loc1_:Number = var_453.getNumber();
         var _loc2_:int = 0;
         while(_loc2_ < var_454.length)
         {
            if(var_458 == class_128.BITAND)
            {
               _loc1_ = _loc1_ & var_454[_loc2_].getNumber();
            }
            else if(var_458 == class_128.BITOR)
            {
               _loc1_ = _loc1_ | var_454[_loc2_].getNumber();
            }
            else
            {
               _loc1_ = _loc1_ ^ var_454[_loc2_].getNumber();
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
