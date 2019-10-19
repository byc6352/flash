package package_33
{
   class class_169 extends class_162
   {
       
      
      private var var_458:Boolean;
      
      private var var_459:Boolean;
      
      private var var_460:Boolean;
      
      function class_169(param1:class_131, param2:*, param3:Boolean, param4:Boolean, param5:Boolean)
      {
         super(param1,param2);
         this.var_458 = param3;
         this.var_459 = param4;
         this.var_460 = param5;
      }
      
      override public function method_478() : String
      {
         return getBoolean().toString();
      }
      
      override public function getBoolean() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc3_:int = var_454.length;
         var _loc4_:Boolean = var_453.getBoolean();
         if(var_460)
         {
            _loc5_ = !!_loc4_?1:0;
            _loc6_ = !!_loc4_?0:1;
            _loc1_ = 0;
            while(_loc1_ < _loc3_)
            {
               if(class_131(var_454[_loc1_]).getBoolean())
               {
                  _loc5_++;
               }
               else
               {
                  _loc6_++;
               }
               _loc1_++;
            }
            return _loc5_ != ++_loc3_ && _loc6_ != _loc3_;
         }
         _loc1_ = 0;
         while(_loc1_ < _loc3_)
         {
            _loc2_ = class_131(var_454[_loc1_]).getBoolean();
            if(var_460)
            {
               _loc5_ = _loc5_ + (!!_loc2_?1:0);
            }
            else if(var_458)
            {
               _loc4_ = _loc4_ && _loc2_;
            }
            else
            {
               _loc4_ = _loc4_ || _loc2_;
            }
            _loc1_++;
         }
         return !!var_459?!_loc4_:Boolean(_loc4_);
      }
      
      override public function getAny() : Object
      {
         return getBoolean();
      }
      
      public function method_611(param1:Boolean, param2:Boolean, param3:Boolean) : Boolean
      {
         if(param3)
         {
            return this.var_460;
         }
         return param1 == this.var_458 && param2 == this.var_459;
      }
      
      override public function getNumber() : Number
      {
         return Number(getBoolean());
      }
   }
}
