package package_33
{
   public class class_159 extends class_151
   {
       
      
      var var_440:class_131;
      
      public function class_159(param1:class_131, param2:int)
      {
         super(param2);
         this.var_440 = param1;
      }
      
      override public function method_592() : void
      {
         class_134.method_584(var_440.getAny());
      }
      
      public function get expr() : class_131
      {
         return this.var_440;
      }
      
      public function toString() : String
      {
         return String(var_440);
      }
   }
}
