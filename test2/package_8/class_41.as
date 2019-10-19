package package_8
{
   import flash.utils.ByteArray;
   
   public class class_41 extends class_40
   {
       
      
      protected var var_130:uint;
      
      protected var var_133:int;
      
      protected var var_134:int;
      
      protected var var_131:uint;
      
      protected var var_132:ByteArray;
      
      public function class_41(param1:ByteArray, param2:uint, param3:uint = 0, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.var_130 = this.readUInt32();
         this.var_131 = param2;
         this.var_132 = new ByteArray();
         param1.readBytes(this.var_132,0,this.var_131);
         this.var_133 = this.readUInt8();
         this.var_134 = this.readUInt8();
      }
      
      public function get method_224() : uint
      {
         return this.var_130;
      }
      
      public function get method_225() : int
      {
         return this.var_133;
      }
      
      public function get method_226() : int
      {
         return this.var_134;
      }
      
      public function get method_227() : ByteArray
      {
         return this.var_132;
      }
      
      override public function clone() : *
      {
         var_126.position = 0;
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.writeBytes(var_126);
         return new class_41(_loc1_,this.var_131,0,var_125);
      }
   }
}
