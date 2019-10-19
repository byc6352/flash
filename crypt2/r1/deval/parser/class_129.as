package r1.deval.parser
{
   import package_33.class_131;
   import package_33.class_132;
   import package_33.class_134;
   import package_33.class_143;
   import package_33.class_144;
   import package_33.class_145;
   import package_33.class_148;
   
   public class class_129 extends class_128
   {
      
      protected static const const_99:int = 1 << 17;
      
      protected static const CLEAR_TI_MASK:int = 65535;
      
      protected static const TI_AFTER_EOL:int = 1 << 16;
       
      
      private var var_333:int;
      
      protected var var_330:class_143;
      
      protected var var_334:int;
      
      private var var_332:Boolean;
      
      protected var var_331:class_149;
      
      public function class_129()
      {
         super();
         this.var_330 = new class_143();
      }
      
      protected function method_474(param1:class_131, param2:String, param3:Boolean = false, param4:Boolean = false) : class_131
      {
         var _loc6_:int = 0;
         var _loc5_:class_131 = null;
         if(method_475(COLONCOLON))
         {
            _loc5_ = var_330.method_476(null,param2);
            _loc6_ = method_477();
            switch(_loc6_)
            {
               case NAME:
                  param2 = var_331.method_478();
                  break;
               case MUL:
                  param2 = "*";
                  break;
               case LB:
                  param1 = var_330.method_476(param1,expression(),_loc5_,param3,param4);
                  method_479(RB,"msg.no.bracket.index","k07");
                  return param1;
               default:
                  method_480("msg.no.name.after.coloncolon","K08");
                  param2 = "?";
            }
         }
         return var_330.method_476(param1,param2,_loc5_,param3,param4);
      }
      
      protected function method_481() : void
      {
         var_332 = true;
         var_333 = var_334;
         var_334 = NAME;
      }
      
      private function method_482(param1:class_148) : void
      {
         if(method_475(RP))
         {
            return;
         }
         do
         {
            param1.method_484(method_483());
         }
         while(method_475(COMMA));
         
         method_479(RP,"msg.no.paren.arg","k04");
      }
      
      protected function method_483() : class_131
      {
         var _loc1_:class_131 = method_485();
         var _loc2_:int = method_486();
         if(FIRST_ASSIGN <= _loc2_ && _loc2_ <= LAST_ASSIGN)
         {
            method_487();
            method_488(_loc1_);
            _loc1_ = var_330.method_490(_loc1_ as class_145,method_483(),_loc2_,var_331.method_489());
         }
         return _loc1_;
      }
      
      protected function method_477() : int
      {
         var _loc1_:int = method_486();
         method_487();
         return _loc1_;
      }
      
      public function method_491(param1:String) : void
      {
         throw new class_146(null,param1,var_331.method_489());
      }
      
      public function method_492(param1:String) : class_131
      {
         method_493(param1);
         return expression();
      }
      
      private function method_494() : class_131
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * 提示：在设置您可以尝试启用“自动反混淆”
          * Error type: NullPointerException (null)
          */
		  
         //throw new flash.errors.IllegalOperationError("Not decompiled due to error");
		 var _loc_3:* = null;
            var _loc_4:* = null;
            var _loc_1:* = null;
            var _loc_2:* = var_331.method_495();
            
            _loc_3 = var_330.literal(var_331.method_478());
            switch(_loc_2)
            {
                case XML:
                {
                    method_479(LC, "msg.syntax", "k02");
                    _loc_1 = var_330.method_496(_loc_1, _loc_3);
                    if (method_486() != RC)
                    {
                        _loc_4 = expression();
                        if (var_331.method_497())
                        {
                            _loc_4 = var_330.method_498(_loc_4);
                        }
                        _loc_1 = var_330.method_496(_loc_1, _loc_4);
                    }
                    method_479(RC, "msg.syntax", "k03");
                    break;
                }
                case XMLEND:
                {
                    return var_330.method_499(_loc_1, _loc_3);
                }
                default:
                {
                    method_480("msg.syntax", "K05");
                    break;
                }
            }
            _loc_2 = var_331.method_500();
            ;
      }
      
      private function method_501() : class_131
      {
         var _loc1_:class_131 = null;
         var _loc2_:int = method_486();
         switch(_loc2_)
         {
            case VOID:
            case NOT:
            case BITNOT:
            case TYPEOF:
            case SUB:
            case ADD:
            case INC:
            case DEC:
            case DELETE:
               method_487();
               _loc1_ = method_501();
               if(_loc2_ == INC || _loc2_ == DEC)
               {
                  method_488(_loc1_);
               }
               return var_330.method_502(_loc1_,_loc2_);
            case ERROR:
               method_487();
               method_480("msg.syntax","K04");
               return null;
            case LT:
               method_487();
               return method_503(true,method_494());
            default:
               _loc1_ = method_504(true);
               _loc2_ = method_505();
               while(_loc2_ == INC || _loc2_ == DEC)
               {
                  method_487();
                  _loc1_ = var_330.method_502(_loc1_,_loc2_ == INC?int(POSTFIX_INC):int(POSTFIX_DEC));
                  _loc2_ = method_505();
               }
               return _loc1_;
         }
      }
      
      protected function method_493(param1:String) : void
      {
         this.var_331 = new class_149(param1);
         this.var_334 = EOF;
      }
      
      private function method_506() : class_131
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * 提示：在设置您可以尝试启用“自动反混淆”
          * Error type: NullPointerException (null)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      protected function method_509() : void
      {
         if((var_334 & CLEAR_TI_MASK) != NAME)
         {
            method_491("K01");
         }
         var_334 = var_334 | const_99;
      }
      
      protected function method_510() : int
      {
         method_486();
         var _loc1_:int = var_334;
         method_487();
         return _loc1_;
      }
      
      private function method_511() : class_131
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * 提示：在设置您可以尝试启用“自动反混淆”
          * Error type: NullPointerException (null)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function method_514() : class_131
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * 提示：在设置您可以尝试启用“自动反混淆”
          * Error type: NullPointerException (null)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      protected function method_479(param1:int, param2:String, param3:String) : void
      {
         if(!method_475(param1))
         {
            method_480(param2,param3);
         }
      }
      
      protected function method_486() : int
      {
         if(var_332)
         {
            return NAME;
         }
         var _loc1_:* = int(var_334);
         if(_loc1_ == EOF)
         {
            _loc1_ = int(var_331.method_516());
            if(_loc1_ == EOL)
            {
               do
               {
                  _loc1_ = int(var_331.method_516());
               }
               while(_loc1_ == EOL);
               
               _loc1_ = _loc1_ | TI_AFTER_EOL;
            }
            var_334 = _loc1_;
         }
         return _loc1_ & CLEAR_TI_MASK;
      }
      
      private function method_517(param1:class_131 = null, param2:Boolean = false) : class_131
      {
         var _loc3_:int = method_477();
         switch(_loc3_)
         {
            case NAME:
               return method_474(param1,var_331.method_478(),true,param2);
            case MUL:
               return method_474(param1,"*",true,param2);
            case LB:
               param1 = var_330.method_476(param1,expression(),null,true,param2);
               method_479(RB,"msg.no.bracket.index","k68");
               return param1;
            default:
               method_480("msg.no.name.after.xmlAttr","K69");
               return null;
         }
      }
      
      protected function method_505() : int
      {
         var _loc1_:int = method_486();
         if((var_334 & TI_AFTER_EOL) != 0)
         {
            _loc1_ = EOL;
         }
         return _loc1_;
      }
      
      private function method_518() : class_131
      {
         var _loc1_:class_131 = method_519();
         var _loc2_:int = method_486();
         while(_loc2_ == BITXOR)
         {
            method_487();
            _loc1_ = var_330.method_520(_loc1_,method_519(),BITXOR);
            _loc2_ = method_486();
         }
         return _loc1_;
      }
      
      protected function method_487() : void
      {
         if(var_332)
         {
            var_332 = false;
            var_334 = var_333;
            return;
         }
         var_334 = EOF;
      }
      
      private function method_521() : class_131
      {
         var _loc1_:class_131 = method_518();
         var _loc2_:int = method_486();
         while(_loc2_ == BITOR)
         {
            method_487();
            _loc1_ = var_330.method_520(_loc1_,method_518(),BITOR);
            _loc2_ = method_486();
         }
         return _loc1_;
      }
      
      private function method_519() : class_131
      {
         var _loc1_:class_131 = method_506();
         var _loc2_:int = method_486();
         while(_loc2_ == BITAND)
         {
            method_487();
            _loc1_ = var_330.method_520(_loc1_,method_506(),BITAND);
            _loc2_ = method_486();
         }
         return _loc1_;
      }
      
      protected function expression() : class_131
      {
         var _loc1_:class_131 = method_483();
         while(method_475(COMMA))
         {
            _loc1_ = var_330.method_522(_loc1_,method_483());
         }
         return _loc1_;
      }
      
      protected function method_523(param1:Boolean = false) : class_132
      {
         method_480("msg.function.expr.not.supported","K09");
         return null;
      }
      
      private function method_524() : class_131
      {
         var _loc3_:int = 0;
         var _loc4_:* = false;
         var _loc1_:class_131 = method_521();
         var _loc2_:int = method_486();
         if(_loc2_ == AND || _loc2_ == NAND)
         {
            _loc3_ = _loc2_;
            _loc4_ = _loc2_ == NAND;
            while(_loc2_ == _loc3_)
            {
               method_487();
               _loc1_ = var_330.method_525(_loc1_,method_524(),true,_loc4_);
               _loc2_ = method_486();
            }
         }
         return _loc1_;
      }
      
      private function method_507() : class_131
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * 提示：在设置您可以尝试启用“自动反混淆”
          * Error type: NullPointerException (null)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function method_504(param1:Boolean) : class_131
      {
         var _loc2_:class_131 = null;
         if(method_486() == NEW)
         {
            method_487();
            _loc2_ = var_330.method_527(method_504(false));
            if(method_475(LP))
            {
               method_482(_loc2_ as class_148);
            }
         }
         else
         {
            _loc2_ = method_528();
         }
         return method_503(param1,_loc2_);
      }
      
      private function method_488(param1:*) : void
      {
         if(!(param1 is class_145))
         {
            method_480("msg.not.assignable","K03");
         }
      }
      
      public function method_480(param1:String, param2:String, param3:String = null, param4:String = null, param5:String = null) : void
      {
         throw new class_146(class_134.method_529(param1,param3,param4,param5),param2,var_331.method_489());
      }
      
      private function method_503(param1:Boolean, param2:class_131) : class_131
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * 提示：在设置您可以尝试启用“自动反混淆”
          * Error type: NullPointerException (null)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function method_512() : class_131
      {
         var _loc1_:class_131 = method_514();
         var _loc2_:int = method_486();
         while(_loc2_ == ADD || _loc2_ == SUB)
         {
            method_487();
            _loc1_ = var_330.method_496(_loc1_,method_514(),_loc2_ == ADD);
            _loc2_ = method_486();
         }
         return _loc1_;
      }
      
      private function method_485() : class_131
      {
         var _loc2_:class_131 = null;
         var _loc1_:class_131 = method_532();
         if(method_475(HOOK))
         {
            _loc2_ = method_483();
            method_479(COLON,"msg.no.colon.cond","k01");
            _loc1_ = var_330.method_533(_loc1_,_loc2_,method_483());
         }
         return _loc1_;
      }
      
      private function method_532() : class_131
      {
         var _loc3_:int = 0;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc1_:class_131 = method_524();
         var _loc2_:int = method_486();
         if(_loc2_ == OR || _loc2_ == NOR || _loc2_ == XOR)
         {
            _loc3_ = _loc2_;
            _loc4_ = _loc2_ == NOR;
            _loc5_ = _loc2_ == XOR;
            while(_loc2_ == _loc3_)
            {
               method_487();
               _loc1_ = var_330.method_525(_loc1_,method_532(),false,_loc4_,_loc5_);
               _loc2_ = method_486();
            }
         }
         return _loc1_;
      }
      
      private function method_528() : class_131
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * 提示：在设置您可以尝试启用“自动反混淆”
          * Error type: NullPointerException (null)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      protected function method_538() : int
      {
         method_486();
         return var_334;
      }
      
      protected function method_475(param1:int) : Boolean
      {
         var _loc2_:int = method_486();
         if(_loc2_ != param1)
         {
            return false;
         }
         method_487();
         return true;
      }
      
      protected function eof() : Boolean
      {
         return var_331.eof();
      }
   }
}
