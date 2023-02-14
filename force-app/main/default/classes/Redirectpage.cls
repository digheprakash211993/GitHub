public class Redirectpage {
    public Object_B__c acc;
    public Redirectpage(ApexPages.StandardController Robj){
        system.debug(Robj.getRecord());
        acc= (Object_B__c)Robj.getRecord();
        
    }
    
    public void data(){
        upsert acc;
        system.debug(acc.Id);
        
        
        
    }

}