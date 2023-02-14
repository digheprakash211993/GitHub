public class Wrapperclassinout {
    public list<innerclass> demo{set;get;}
    public Wrapperclassinout(){
        demo= new list<innerclass>();
        Country__c cobjquery=[select id, name from Country__c limit 1];
        Hotel__c hobjquery=[select id, name from Hotel__c limit 1];
        innerclass data= new innerclass('Prakash', 'Dighe', cobjquery, hobjquery);
        demo.add(data);
    }
    public class innerclass{
        public string fname{set;get;}
        public string lastname{set;get;}
        public Country__c cobj{set;get;}
        public Hotel__c hobj{set;get;}
        public innerclass(string fname, string lastname,Country__c cobj, Hotel__c hobj){
            this.fname=fname;
            this.lastname=lastname;
            this.cobj=cobj;
            this.hobj=hobj;
            
        }     
    }

}