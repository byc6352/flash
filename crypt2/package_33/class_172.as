package package_33
{
   import r1.deval.parser.class_128;
   
   class class_172 extends class_147 implements class_150
   {
       
      
      protected var var_458:int;
      
      protected var left:class_145;
      
      private var var_463:class_150;
      
      private var var_403:int;
      
      protected var right:class_131;
      
      function class_172(param1:class_145, param2:class_131, param3:int, param4:int)
      {
         super();
         this.left = param1;
         this.right = param2;
         this.var_458 = param3;
         this.var_403 = param4;
      }
      
      public function set method_62(param1:class_150) : void
      {
         var_463 = param1;
      }
      
      public function method_592() : void
      {
         class_134.method_584(getAny());
      }
      
      public function get name_11() : int
      {
         return var_403;
      }
      
      override public function getAny() : Object
      {
         var _loc1_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         switch(var_458)
         {
            case class_128.ASSIGN:
               _loc1_ = right.getAny();
               left.method_614(_loc1_);
               return _loc1_;
            case class_128.ASSIGN_ADD:
               _loc1_ = left.getAny();
               _loc4_ = right.getAny();
               if((_loc1_ is XML || _loc1_ is XMLList) && (_loc4_ is XML || _loc4_ is XMLList))
               {
                  if(_loc1_ is XML)
                  {
                     _loc1_ = new XMLList("") + _loc1_;
                  }
                  _loc1_ = _loc1_ + _loc4_;
               }
               else if(_loc1_ is String || _loc4_ is String)
               {
                  _loc1_ = _loc1_.toString() + _loc4_.toString();
               }
               else
               {
                  _loc1_ = Number(_loc1_) + Number(_loc4_);
               }
               left.method_614(_loc1_);
               return _loc1_;
            case class_128.ASSIGN_AND:
            case class_128.ASSIGN_OR:
               _loc5_ = left.getBoolean();
               _loc6_ = right.getBoolean();
               if(var_458 == class_128.ASSIGN_AND)
               {
                  _loc5_ = _loc5_ && _loc6_;
               }
               else
               {
                  _loc5_ = _loc5_ || _loc6_;
               }
               left.method_614(_loc5_);
               return _loc5_;
            default:
               var _loc2_:Number = left.getNumber();
               var _loc3_:Number = right.getNumber();
               switch(var_458)
               {
                  case class_128.ASSIGN_BITOR:
                     _loc2_ = _loc2_ | _loc3_;
                     break;
                  case class_128.ASSIGN_BITXOR:
                     _loc2_ = _loc2_ ^ _loc3_;
                     break;
                  case class_128.ASSIGN_BITAND:
                     _loc2_ = _loc2_ & _loc3_;
                     break;
                  case class_128.ASSIGN_LSH:
                     _loc2_ = _loc2_ << _loc3_;
                     break;
                  case class_128.ASSIGN_RSH:
                     _loc2_ = _loc2_ >> _loc3_;
                     break;
                  case class_128.ASSIGN_URSH:
                     _loc2_ = _loc2_ >>> _loc3_;
                     break;
                  case class_128.ASSIGN_ADD:
                     _loc2_ = _loc2_ + _loc3_;
                     break;
                  case class_128.ASSIGN_SUB:
                     _loc2_ = _loc2_ - _loc3_;
                     break;
                  case class_128.ASSIGN_MUL:
                     _loc2_ = _loc2_ * _loc3_;
                     break;
                  case class_128.ASSIGN_DIV:
                     _loc2_ = _loc2_ / _loc3_;
                     break;
                  case class_128.ASSIGN_MOD:
                     _loc2_ = _loc2_ % _loc3_;
               }
               left.method_614(_loc2_);
               return _loc2_;
         }
      }
      
      public function get method_62() : class_150
      {
         return var_463;
      }
   }
}
