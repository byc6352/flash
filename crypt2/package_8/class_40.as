package package_8
{
   import flash.utils.ByteArray;
   
   public class class_40
   {
       
      
      protected var var_126:ByteArray;
      
      protected var var_127:String = "utf-8";
      
      protected var var_128:uint;
      
      protected var var_125:Boolean;
      
      protected var var_129:uint;
      
      public function class_40(param1:ByteArray, param2:uint = 0, param3:Boolean = false)
      {
         super();
         this.var_125 = param3;
         if(param3)
         {
            this.var_126 = new ByteArray();
            param1.readBytes(this.var_126);
         }
         else
         {
            this.var_126 = param1;
         }
         this.var_126.position = param2;
      }
      
      public function method_217() : int
      {
         return this.var_126.readByte();
      }
      
      public function readUInt8() : int
      {
         return this.var_126.readUnsignedByte();
      }
      
      public function method_218() : int
      {
         return this.var_126.readShort();
      }
      
      public function method_219() : int
      {
         return this.var_126.readUnsignedShort();
      }
      
      public function readUInt32() : uint
      {
         return this.var_126.readUnsignedInt();
      }
      
      public function method_220() : int
      {
         return this.var_126.readInt();
      }
      
      public function method_221() : Number
      {
         return this.method_222();
      }
      
      public function method_222() : Number
      {
         return this.var_126.readDouble();
      }
      
      public function readString() : String
      {
         var _loc1_:int = this.var_126.readUnsignedInt();
         var _loc2_:String = this.var_126.readMultiByte(_loc1_,this.var_127);
         return _loc2_;
      }
      
      public function readBoolean() : Boolean
      {
         return this.var_126.readBoolean();
      }
      
      public function readFloat() : Number
      {
         return this.var_126.readFloat();
      }
      
      public function get position() : uint
      {
         return this.var_126.position;
      }
      
      public function set position(param1:uint) : void
      {
         this.var_126.position = param1;
      }
      
      public function get method_223() : String
      {
         return this.var_127;
      }
      
      public function set method_223(param1:String) : void
      {
         this.var_127 = param1;
      }
      
      public function get endian() : String
      {
         return this.var_126.endian;
      }
      
      public function set endian(param1:String) : void
      {
         this.var_126.endian = param1;
      }
      
      public function get length() : uint
      {
         return this.var_126.length;
      }
      
      public function get bytes() : ByteArray
      {
         return this.var_126;
      }
      
      public function clear() : void
      {
         this.var_126.clear();
      }
      
      public function clone() : *
      {
         this.var_126.position = 0;
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.writeBytes(this.var_126);
         return new class_40(_loc1_,0,this.var_125);
      }
   }
}
