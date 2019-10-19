package package_33
{
   import r1.deval.parser.class_128;
   
   public class class_155 extends class_151
   {
       
      
      private var value:class_131;
      
      private var type:int;
      
      public function class_155(param1:int, param2:*, param3:int)
      {
         super(param3);
         this.type = param1;
         this.value = param2;
      }
      
      override public function method_592() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Namespace = null;
         switch(type)
         {
            case class_128.DEFAULT_NS:
               if(value != null)
               {
                  _loc2_ = value.getAny() as Namespace;
                  default xml namespace = _loc2_;
                  break;
               }
               break;
            case class_128.THROW:
               _loc1_ = value.getAny();
               if(_loc1_ is Error)
               {
                  throw _loc1_ as Error;
               }
               throw new Error(_loc1_.toString());
         }
      }
   }
}
