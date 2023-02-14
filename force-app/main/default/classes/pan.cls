public class pan {
    public string p1{set;get;}
    public pan()
    {
       p1='abc';
        system.debug('inside constructor');
    }
     public void demo()
     {
           p1='xys';
         system.debug('inside method');
     }
    
    
}