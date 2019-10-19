package package_33
{
   class class_176 implements class_131
   {
       
      
      private var var_465:class_131;
      
      private var cond:class_131;
      
      private var var_466:class_131;
      
      function class_176(param1:class_131, param2:class_131, param3:class_131)
      {
         super();
         this.cond = param1;
         this.var_465 = param2;
         this.var_466 = param3;
      }
      
      public function getNumber() : Number
      {
         return !!cond.getBoolean()?Number(var_465.getNumber()):Number(var_466.getNumber());
      }
      
      public function method_478() : String
      {
         return !!cond.getBoolean()?var_465.method_478():var_466.method_478();
      }
      
      public function getBoolean() : Boolean
      {
         return !!cond.getBoolean()?Boolean(var_465.getBoolean()):Boolean(var_466.getBoolean());
      }
      
      public function getAny() : Object
      {
         return !!cond.getBoolean()?var_465.getAny():var_466.getAny();
      }
   }
}
