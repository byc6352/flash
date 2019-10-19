package package_33
{
   import r1.deval.parser.class_128;
   
   class class_166 extends class_163
   {
       
      
      function class_166(param1:class_131, param2:Array, param3:Array)
      {
         super(param1,param2,param3);
      }
      
      override public function getNumber() : Number
      {
         var _loc3_:Number = NaN;
         var _loc1_:Number = var_453.getNumber();
         var _loc2_:int = 0;
         while(_loc2_ < var_454.length)
         {
            _loc3_ = (var_454[_loc2_] as class_131).getNumber();
            switch(var_455[_loc2_])
            {
               case class_128.MUL:
                  _loc1_ = _loc1_ * _loc3_;
                  break;
               case class_128.DIV:
                  _loc1_ = _loc1_ / _loc3_;
                  break;
               case class_128.MOD:
                  _loc1_ = _loc1_ % _loc3_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
