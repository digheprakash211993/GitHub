public class wire {
    public string str{set;get;}
    
    Public void method()
    {
        Opportunity oppobj= new Opportunity();
oppobj.Name=str;
oppobj.StageName='Qualification';
oppobj.closedate=date.today();
insert oppobj;
system.debug(oppobj);   
        
        
        
    }

    
    
    
    
    
}