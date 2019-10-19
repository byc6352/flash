package package_33
{
   class class_165 extends class_147
   {
       
      
      var var_457:Array;
      
      var var_456:Object;
      
      function class_165(param1:Object, param2:Array)
      {
         super();
         var_456 = param1;
         this.var_457 = param2;
      }
      
      override public function getAny() : Object
      {
         var _loc1_:* = undefined;
         var _loc3_:String = null;
         var _loc4_:Array = null;
         if(var_456 is Array)
         {
            _loc4_ = [];
            for each(_loc1_ in var_456 as Array)
            {
               if(_loc1_ is class_131)
               {
                  _loc1_ = (_loc1_ as class_131).getAny();
               }
               _loc4_.push(_loc1_);
            }
            return _loc4_;
         }
         var _loc2_:Object = {};
         for each(_loc3_ in var_457)
         {
            _loc1_ = var_456[_loc3_];
            if(_loc1_ is class_131)
            {
               _loc1_ = (_loc1_ as class_131).getAny();
            }
            _loc2_[_loc3_] = _loc1_;
         }
         return _loc2_;
      }
   }
}
