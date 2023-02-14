public class wrapping {
    public list<innerclass> iobj{set;get;}
    Public wrapping(){
       iobj= new list<innerclass>();
    Country__c Cnamequery=[select id, name from Country__c limit 1];
    Hotel__c Hnamequery=[select id, name from Hotel__c limit 1];

       innerclass intobj= new innerclass('Praaksh','Dighe', Cnamequery, Hnamequery);
        iobj.add(intobj);
    }
    
 public class innerclass {
        public string fname{set;get;}
        public string lastname{set;get;}
        public Country__c Cname{set;get;}
        public Hotel__c Hname{set;get;}
     public innerclass(string fname,string lastname, Country__c Cname, Hotel__c Hname){
         this.fname=fname;
         this.lastname=lastname;
         this.Cname=Cname;
         this.Hname=Hname;
     }      
        
        
    }

}