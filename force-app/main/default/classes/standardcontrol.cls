public class standardcontrol {
    public Object_C__c pobj;
    public standardcontrol(apexpages.StandardController cobj){
        system.debug(cobj.getRecord());
        pobj= (Object_C__c)cobj.getRecord();
    }
    public void demo(){
        insert pobj;
    }

}