public class pageredirect {
    public Object_C__c acc;
    public pageredirect(apexpages.StandardController cobj){
        system.debug(cobj.getRecord());
        acc= (Object_C__c)cobj.getRecord();
        
    }
    public void demo(){
        insert acc;
    }

}