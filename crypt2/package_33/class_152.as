package package_33
{
   import flash.system.ApplicationDomain;
   
   public class class_152 extends class_151
   {
       
      
      private var var_428:Array;
      
      public function class_152(param1:Array, param2:int)
      {
         super(param2);
         this.var_428 = param1;
      }
      
      override public function method_592() : void
      {
         var var_429:String = null;
         var x:* = undefined;
         var var_430:ApplicationDomain = ApplicationDomain.currentDomain;
         for each(var_429 in var_428)
         {
            try
            {
               x = var_430.getDefinition(var_429);
               if(x != null && x is Class)
               {
                  class_134.method_458(x as Class,var_429);
                  continue;
               }
               throw new class_158("msg.rt.no.class");
            }
            catch(e:Error)
            {
               throw new class_158("msg.rt.no.class");
            }
         }
      }
   }
}
