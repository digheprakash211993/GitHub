public class countrymainclasss {
    public  list<Country__c> cobj{set;get;}
    public  list<Object_B__c> hot{set;get;}
    public  list<Object_A__c> Aobj{set;get;}
    public countrymainclasss(){
       /// system.debug('Record id from url '+ApexPages.currentPage(). getParameters(). get('mmname'));
      
    }
    public void conmethod(){
        cobj= [select id,name, Phone__c from Country__c limit 3];
        system.debug('Record list of con '+cobj); 
    }
    public void hottmethod(){
        hot= [select id,name from Object_B__c limit 3];
        system.debug('Record list of obj B'+hot);
    }
    public void objAmethod(){
        Aobj= [select id,name from Object_A__c limit 3];
        system.debug('Record list OF obj A '+Aobj);
    }
}