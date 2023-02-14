public class directpage {
    public Object_B__c acc;
    public directpage(Apexpages.StandardController sobj){
        system.debug(sobj.getRecord());
        acc= (Object_B__c)sobj.getRecord();
    }
    public void data(){
        insert acc;
        
    }

}