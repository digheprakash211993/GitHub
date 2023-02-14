public class dog{
    public string p1{set;get;}
    public dog()
    {
       p1='abc';
       system.debug('inside constructor');
    }
    public void demo()
    {
        p1='xyz';
        system.debug('inside method');
    }

}