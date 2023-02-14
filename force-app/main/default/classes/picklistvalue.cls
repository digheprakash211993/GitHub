public class picklistvalue {
    public string str{set;get;}
    public list<SelectOption> cobj{set;get;}
    public picklistvalue(){
        cobj= new list<SelectOption>();
      list<Country__c> cobj1= [select id, name, Country_rigion__c, URL__c from Country__c];
        for(Country__c k:cobj1){
            SelectOption option = new SelectOption(k.id, k.name);
              cobj.add(option);
        }
        
    }
    public void demo(){
list<Country__c> cobj1= [select id, name, Country_rigion__c, URL__c from Country__c where id=:str];
        
    }

}