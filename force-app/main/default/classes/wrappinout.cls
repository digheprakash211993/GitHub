public class wrappinout {
    public list<innerclass> demo{set;get;}
    public wrappinout(){
        demo= new list<innerclass>();
        Country__c Cobjquery= [select id , name from Country__c limit 1];
        Hotel__c hobjquery= [select id , name from Hotel__c limit 1];
       innerclass data= new innerclass('RAM', 'DIGHE',Cobjquery,hobjquery); 
        demo.add(data);
    }
    public class innerclass{
        public string fname{set;get;}
        public string lastname{set;get;}
        public Country__c Cobj{set;get;}
        public Hotel__c hobj{set;get;}
        public innerclass(string fname, string lastname,Country__c Cobj, Hotel__c hobj){
            this.fname=fname;
            this.lastname=lastname;
            this.Cobj=Cobj;
            this.hobj=hobj;
        }
        
        
    }
}