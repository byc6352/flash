package package_33
{
   class class_178 extends class_177
   {
       
      
      var var_464:class_131;
      
      var var_470:int;
      
      var var_469:Boolean;
      
      function class_178(param1:class_131, param2:*, param3:class_131, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param2);
         this.var_469 = param4;
         this.var_464 = param3;
         this.var_470 = 0;
         if(param5)
         {
            var_470 = var_470 | 2;
         }
         if(param6)
         {
            var_470 = var_470 | 1;
         }
      }
      
      override public function method_614(param1:Object) : void
      {
         var _loc2_:Object = method_662();
         if(var_464 != null)
         {
            _loc2_ = new QName(var_464.getAny(),_loc2_);
         }
         var _loc3_:Object = var_322.getAny();
         switch(var_470)
         {
            case 0:
               _loc3_[_loc2_] = param1;
               break;
            case 2:
               _loc3_[_loc2_] = param1;
               break;
            default:
               throw new class_158("msg.unknown.xml.operator");
         }
      }
      
      override public function getAny() : Object
      {
         var _loc1_:Object = null;
         if(var_469)
         {
            return method_664();
         }
         var _loc2_:Object = method_662();
         if(var_464 != null)
         {
            _loc2_ = new QName(var_464.getAny(),_loc2_);
         }
         if(var_322 == null)
         {
            _loc1_ = class_134.method_605();
            switch(var_470)
            {
               case 0:
                  return _loc1_[_loc2_];
               case 1:
                  return _loc1_.descendants(_loc2_);
               case 2:
                  return _loc1_[_loc2_];
               case 3:
                  return _loc1_..[_loc2_];
            }
         }
         else
         {
            _loc1_ = var_322.getAny();
            switch(var_470)
            {
               case 0:
                  return _loc1_[_loc2_];
               case 1:
                  return _loc1_.descendants(_loc2_);
               case 2:
                  return _loc1_[_loc2_];
               case 3:
                  return _loc1_..[_loc2_];
            }
         }
         throw new class_158("msg.unknown.xml.operator");
      }
      
      private function method_664() : Object
      {
         var _loc2_:XML = null;
         var _loc3_:* = undefined;
         var _loc1_:Object = var_322.getAny();
         if(_loc1_ is XML)
         {
            class_134.method_583(_loc1_);
            if(!method_663())
            {
               return new XMLList("");
            }
            class_134.method_586();
         }
         else
         {
            _loc2_ = <root/>;
            for each(_loc3_ in _loc1_ as XMLList)
            {
               class_134.method_583(_loc3_);
               if(method_663())
               {
                  _loc2_.appendChild(_loc3_);
               }
               class_134.method_586();
            }
            _loc1_ = _loc2_.children();
         }
         return _loc1_;
      }
   }
}
