package
{
   import package_16.class_32;
   
   public class class_31
   {
      
      private static var var_116:class_31;
      
      private static var K174930C4B16B8F74D148B986454B0641AA1055445893K:Boolean;
       
      
      private var K174930676C2F17DCE54209BD24E6CDDA77B16F445893K:String = "8.1.1";
      
      private var var_117:String = "ji!@p!a";
      
      public function class_31()
      {
         super();
         if(!K174930C4B16B8F74D148B986454B0641AA1055445893K)
         {
            throw new Error("Error: Instantiation failed: Use AppConfig.getInstance() instead of new.");
         }
         if(false)//class_4.method_1.method_40
         {
            this.K174930676C2F17DCE54209BD24E6CDDA77B16F445893K = this.K174930676C2F17DCE54209BD24E6CDDA77B16F445893K + "[D]";
         }
         else
         {
            this.var_117 = class_32.K174935233BFFAEF86B437BB2687FB3F1876E20445898K(this.K174930676C2F17DCE54209BD24E6CDDA77B16F445893K + this.var_117);
         }
      }
      
      public static function getInstance() : class_31
      {
         if(var_116 == null)
         {
            K174930C4B16B8F74D148B986454B0641AA1055445893K = true;
            var_116 = new class_31();
            K174930C4B16B8F74D148B986454B0641AA1055445893K = false;
         }
         return var_116;
      }
      
      public function K17493097A3A574023F4F9F868C864995F27EBC445893K() : String
      {
         return this.K174930676C2F17DCE54209BD24E6CDDA77B16F445893K;
      }
      
      public function name_1() : String
      {
         return this.var_117;
      }
   }
}
