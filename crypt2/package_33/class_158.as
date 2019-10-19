package package_33
{
   import r1.deval.parser.class_146;
   
   public class class_158 extends Error
   {
       
      
      private var var_438:String;
      
      private var var_439:String;
      
      private var var_403:int;
      
      public function class_158(param1:String, param2:String = null, param3:String = null)
      {
         super(class_146.method_615(param1));
         var_438 = param2;
         var_439 = param3;
      }
      
      public function set name_11(param1:int) : void
      {
         var_403 = param1;
      }
      
      public function get name_11() : int
      {
         return var_403;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "Runtime Error: " + super.message;
         if(var_403 > 0)
         {
            _loc1_ = _loc1_ + (" [line:" + var_403 + "]");
         }
         return _loc1_;
      }
   }
}
