public class picklistlass {
    public string str{set;get;}
    public list<SelectOption> sobj{set;get;}
    public picklistlass(){
        sobj= new list<SelectOption>();
        list<Country__c> cobj= [select id, name, Country_rigion__c, Phone__c, URL__c from Country__c];
        for(Country__c k:cobj){
            SelectOption option = new SelectOption(k.id, k.name);
            sobj.add(option);
        }  
    }
    public void demo(){
        list<Country__c> cobj= [select id, name, Country_rigion__c, Phone__c, URL__c from Country__c where id=:str];
    }

}