public class picklistdyn {
    public list<SelectOption> selist{set;get;}
    public string str{set;get;}
    public picklistdyn(){
        selist= new list<SelectOption>();
        list<Country__c> cobj= [select id, name, Country_rigion__c, Phone__c, URL__c from Country__c];
        for(Country__c c1:cobj){
            SelectOption option = new SelectOption(c1.id,c1.name);
            selist.add(option);    
        }
         system.debug(selist);
    }
        public void demo(){
            system.debug(str);
          list<Country__c> cobj= [select id, name, Country_rigion__c, Phone__c, URL__c from Country__c where id=:str];   
        system.debug(cobj);
    }

}