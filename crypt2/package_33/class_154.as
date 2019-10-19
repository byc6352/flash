package package_33
{
   public class class_154 extends class_151
   {
       
      
      var var_436:Boolean;
      
      var var_434:String;
      
      var var_432:String;
      
      var var_433:String;
      
      var var_435:class_131;
      
      public function class_154(param1:int, param2:String, param3:class_131, param4:Boolean, param5:int)
      {
         super(param5);
         this.var_434 = param2;
         this.var_435 = param3;
         this.var_436 = param4;
         this.var_432 = "_tmp_arr_" + param1;
         this.var_433 = "_tmp_idx_" + param1;
      }
      
      override public function method_592() : void
      {
         var _loc2_:Array = null;
         var _loc3_:* = undefined;
         var _loc1_:Object = var_435.getAny();
         if(var_436)
         {
            if(_loc1_ is Array)
            {
               _loc2_ = _loc1_ as Array;
            }
            else
            {
               _loc2_ = [];
               for each(_loc3_ in _loc1_)
               {
                  _loc2_.push(_loc3_);
               }
            }
         }
         else
         {
            _loc2_ = [];
            for(_loc3_ in _loc1_)
            {
               _loc2_.push(_loc3_);
            }
         }
         class_134.method_601(var_432,_loc2_);
         class_134.method_601(var_433,0);
      }
   }
}
