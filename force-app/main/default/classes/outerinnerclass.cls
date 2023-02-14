public class outerinnerclass {
    public list<innerclass> llist{set;get;}
    public outerinnerclass(){
        llist= new list<innerclass>();
        Country__c cobjquery= [select id, name from Country__c limit 1];
        Hotel__c hobjquery= [select id, name from Hotel__c limit 1];
        innerclass iobj= new innerclass('Hello', 21,  cobjquery, hobjquery);
        llist.add(iobj);
    }
    
    public class innerclass{
        public string fname{set;get;}
        public integer age{set;get;}
        public Country__c cobj{set;get;}
         public Hotel__c hobj{set;get;}
        public innerclass(string fname,integer age, Country__c cobj, Hotel__c hobj){
            this.fname= fname;
                this.age=age;
            this.cobj=cobj;
        }
        
        
        
        
    }

}