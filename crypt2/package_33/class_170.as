package package_33
{
   import r1.deval.parser.class_128;
   
   public class class_170 implements class_131
   {
       
      
      var var_458:int;
      
      var base:class_131;
      
      public function class_170(param1:class_131, param2:int)
      {
         super();
         this.base = param1;
         this.var_458 = param2;
      }
      
      private function method_659(param1:Boolean, param2:Boolean) : Number
      {
         var _loc3_:class_145 = base as class_145;
         if(_loc3_ == null)
         {
            throw new class_158("msg.rt.incdec.on.const");
         }
         var _loc4_:Number = base.getNumber();
         _loc3_.method_614(_loc4_ + (!!param1?1:-1));
         return !!param2?Number(_loc4_):Number(_loc4_ + (!!param1?1:-1));
      }
      
      public function getNumber() : Number
      {
         switch(var_458)
         {
            case class_128.NOT:
            case class_128.DELETE:
               return Number(getBoolean());
            case class_128.BITNOT:
               return ~base.getNumber();
            case class_128.SUB:
               return -base.getNumber();
            case class_128.INC:
            case class_128.DEC:
               return method_659(var_458 == class_128.INC,false);
            case class_128.POSTFIX_INC:
            case class_128.POSTFIX_DEC:
               return method_659(var_458 == class_128.POSTFIX_INC,true);
            default:
               return 0;
         }
      }
      
      public function method_478() : String
      {
         switch(var_458)
         {
            case class_128.NOT:
            case class_128.DELETE:
               return getBoolean().toString();
            case class_128.ESCXMLATTR:
               return "\"" + base.method_478() + "\"";
            case class_128.ESCXMLTEXT:
               return XML(getAny()).toXMLString();
            case class_128.TYPEOF:
               return typeof base.getAny();
            case class_128.VOID:
               return "";
            default:
               return getNumber().toString();
         }
      }
      
      public function getAny() : Object
      {
         var _loc1_:String = null;
         switch(var_458)
         {
            case class_128.NOT:
            case class_128.DELETE:
               return getBoolean();
            case class_128.TYPEOF:
            case class_128.ESCXMLATTR:
               return method_478();
            case class_128.ESCXMLTEXT:
               _loc1_ = base.method_478();
               if(class_160.method_616(_loc1_,"<>"))
               {
                  return new XMLList(_loc1_);
               }
               return new XML(_loc1_);
            case class_128.VOID:
               return null;
            default:
               return getNumber();
         }
      }
      
      public function getBoolean() : Boolean
      {
         switch(var_458)
         {
            case class_128.NOT:
               return !base.getBoolean();
            case class_128.ESCXMLATTR:
            case class_128.ESCXMLTEXT:
               return false;
            case class_128.DELETE:
               try
               {
                  return (base as class_145).method_613();
               }
               catch(e:Error)
               {
               }
               return false;
            default:
               return Boolean(getNumber());
         }
      }
   }
}
