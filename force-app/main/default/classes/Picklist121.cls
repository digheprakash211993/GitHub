public class Picklist121 {
    public string str{set;get;}
    public list<SelectOption> sobj{set;get;}
    public Picklist121(){
        sobj=new list<SelectOption>();
        list<Country__c> cobj= [select id, name, Phone__c, URL__c from Country__c];
        for(Country__c k:cobj){
            SelectOption option = new SelectOption(k.id, k.name);
            sobj.add(option);
        }
    }
    public void demo(){
        list<Country__c> cobj= [select id, name, Phone__c, URL__c from Country__c where id=:str];
        system.debug(cobj);
    }

}