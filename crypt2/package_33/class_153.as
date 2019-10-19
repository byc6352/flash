package package_33
{
   public class class_153 extends class_147
   {
       
      
      private var var_431:class_154;
      
      public function class_153(param1:class_154)
      {
         super();
         this.var_431 = param1;
      }
      
      override public function getBoolean() : Boolean
      {
         var _loc1_:Array = class_134.method_593(var_431.var_432) as Array;
         var _loc2_:int = class_134.method_593(var_431.var_433) as int;
         if(_loc2_ >= _loc1_.length)
         {
            return false;
         }
         class_134.method_601(var_431.var_434,_loc1_[_loc2_]);
         class_134.method_601(var_431.var_433,_loc2_ + 1);
         return true;
      }
   }
}
