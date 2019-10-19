package package_33
{
   public class class_144 implements class_131
   {
      
      public static const FALSE:class_144 = new class_144(false);
      
      public static const NULL:class_144 = new class_144(null);
      
      public static const const_105:class_144 = new class_144(0);
      
      public static const const_106:class_144 = new class_144("");
      
      public static const const_103:class_144 = new class_144(1);
      
      public static const TRUE:class_144 = new class_144(true);
      
      public static const const_104:class_144 = new class_144(-1);
       
      
      var value:Object;
      
      public function class_144(param1:Object)
      {
         super();
         this.value = param1;
      }
      
      public function method_478() : String
      {
         return value == null?"null":value.toString();
      }
      
      public function getBoolean() : Boolean
      {
         return Boolean(value);
      }
      
      public function getAny() : Object
      {
         return value;
      }
      
      public function getNumber() : Number
      {
         return value == null?Number(0):Number(Number(value));
      }
   }
}
