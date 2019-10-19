﻿package package_16
{
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class class_79
   {
      
      private static const delta:uint = uint(2654435769);
       
      
      public function class_79()
      {
         super();
      }
      
      private static function K17493575CA2B7B524A40059F5ACF93819431DB445898K(param1:Array, param2:Boolean) : ByteArray
      {
         var _loc7_:uint = 0;
         var _loc3_:uint = param1.length;
         var _loc4_:uint = _loc3_ - 1 << 2;

         if(param2)
         {
            _loc7_ = param1[_loc3_ - 1];
            if(_loc7_ < _loc4_ - 3 || _loc7_ > _loc4_)
            {
               return null;
            }
            _loc4_ = _loc7_;
         }
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.endian = Endian.LITTLE_ENDIAN;
         var _loc6_:uint = 0;
         while(_loc6_ < _loc3_)
         {
            _loc5_.writeUnsignedInt(param1[_loc6_]);
            _loc6_++;
         }
         if(param2)
         {
            _loc5_.length = _loc4_;
            return _loc5_;
         }
         return _loc5_;
      }
      
      private static function K17493524E0EEE7EE69486C852BF109E33EB8A4445898K(param1:ByteArray, param2:Boolean) : Array
      {
         var _loc3_:uint = param1.length;
         var _loc4_:uint = _loc3_ >> 2;
         if(_loc3_ % 4 > 0)
         {
            _loc4_++;
            param1.length = param1.length + (4 - _loc3_ % 4);
         }
         param1.endian = Endian.LITTLE_ENDIAN;
         param1.position = 0;
         var _loc5_:Array = [];
         var _loc6_:uint = 0;
         while(_loc6_ < _loc4_)
         {
            _loc5_[_loc6_] = param1.readUnsignedInt();
            _loc6_++;
         }
         if(param2)
         {
            _loc5_[_loc4_] = _loc3_;
         }
         param1.length = _loc3_;
         return _loc5_;
      }
      
      public static function K17493532683A0ACAF04F80BA6346F214C15114445898K(param1:ByteArray, param2:ByteArray) : ByteArray
      {
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         if(param1.length == 0)
         {
            return new ByteArray();
         }
         var _loc3_:Array = K17493524E0EEE7EE69486C852BF109E33EB8A4445898K(param1,true);
         var _loc4_:Array = K17493524E0EEE7EE69486C852BF109E33EB8A4445898K(param2,false);
         if(_loc4_.length < 4)
         {
            _loc4_.length = 4;
         }
         var _loc5_:uint = _loc3_.length - 1;
         var _loc6_:uint = _loc3_[_loc5_];
         var _loc7_:uint = _loc3_[0];
         var _loc11_:uint = uint(6 + 52 / (_loc5_ + 1));
         var _loc12_:uint = 0;
         while(0 < _loc11_--)
         {
            _loc12_ = _loc12_ + delta;
            _loc9_ = _loc12_ >>> 2 & 3;
            _loc10_ = 0;
            while(_loc10_ < _loc5_)
            {
               _loc7_ = _loc3_[_loc10_ + 1];
               _loc8_ = (_loc6_ >>> 4 ^ _loc7_ << 2) + (_loc7_ >>> 3 ^ _loc6_ << 6) ^ (_loc12_ ^ _loc7_) + (_loc4_[_loc10_ & 3 ^ _loc9_] ^ _loc6_);
               _loc6_ = _loc3_[_loc10_] = _loc3_[_loc10_] + _loc8_;
               _loc10_++;
            }
            _loc7_ = _loc3_[0];
            _loc8_ = (_loc6_ >>> 4 ^ _loc7_ << 2) + (_loc7_ >>> 3 ^ _loc6_ << 6) ^ (_loc12_ ^ _loc7_) + (_loc4_[_loc10_ & 3 ^ _loc9_] ^ _loc6_);
            _loc6_ = _loc3_[_loc5_] = _loc3_[_loc5_] + _loc8_;
         }
         return K17493575CA2B7B524A40059F5ACF93819431DB445898K(_loc3_,false);
      }
      
      public static function method_194(param1:ByteArray, param2:ByteArray) : ByteArray
      {
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         if(param1.length == 0)
         {
            return new ByteArray();
         }
         var _loc3_:Array = K17493524E0EEE7EE69486C852BF109E33EB8A4445898K(param1,false);
         var _loc4_:Array = K17493524E0EEE7EE69486C852BF109E33EB8A4445898K(param2,false);
         if(_loc4_.length < 4)
         {
            _loc4_.length = 4;
         }
         var _loc5_:uint = _loc3_.length - 1;
         var _loc6_:uint = _loc3_[_loc5_ - 1];
         var _loc7_:uint = _loc3_[0];
         var _loc11_:uint = uint(6 + 52 / (_loc5_ + 1));
         var _loc12_:uint = _loc11_ * delta;
         while(_loc12_ != 0)
         {
            _loc9_ = _loc12_ >>> 2 & 3;
            _loc10_ = _loc5_;
            while(_loc10_ > 0)
            {
               _loc6_ = _loc3_[_loc10_ - 1];
               _loc8_ = (_loc6_ >>> 4 ^ _loc7_ << 2) + (_loc7_ >>> 3 ^ _loc6_ << 6) ^ (_loc12_ ^ _loc7_) + (_loc4_[_loc10_ & 3 ^ _loc9_] ^ _loc6_);
               _loc7_ = _loc3_[_loc10_] = _loc3_[_loc10_] - _loc8_;
               _loc10_--;
            }
            _loc6_ = _loc3_[_loc5_];
            _loc8_ = (_loc6_ >>> 4 ^ _loc7_ << 2) + (_loc7_ >>> 3 ^ _loc6_ << 6) ^ (_loc12_ ^ _loc7_) + (_loc4_[_loc10_ & 3 ^ _loc9_] ^ _loc6_);
            _loc7_ = _loc3_[0] = _loc3_[0] - _loc8_;
            _loc12_ = _loc12_ - delta;
         }
         return K17493575CA2B7B524A40059F5ACF93819431DB445898K(_loc3_,true);
      }
   }
}
