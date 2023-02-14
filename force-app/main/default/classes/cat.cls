public class cat {
    public string str{set;get;}
    public cat()
    {
         str='abc';
        system.debug('inside construction');   
    }
    public void demo()
    {
        str='xyz';
        system.debug('inside method');
    }

}