package package_33
{
   class class_163 extends class_162
   {
       
      
      var var_455:Array;
      
      function class_163(param1:class_131, param2:Array, param3:Array)
      {
         super(param1,param2);
         this.var_455 = param3;
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
      
      override public function addOperand(param1:*, param2:* = null) : void
      {
         var _loc4_:int = 0;
         var _loc5_:Array = null;
         super.addOperand(param1);
         var _loc3_:int = param1 is Array?int((param1 as Array).length):1;
         if(param2 is Array)
         {
            _loc5_ = param2 as Array;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               var_455.push(_loc5_[_loc4_]);
               _loc4_++;
            }
         }
         else
         {
            _loc4_ = _loc3_;
            while(_loc4_ > 0)
            {
               var_455.push(param2);
               _loc4_--;
            }
         }
      }
   }
}
