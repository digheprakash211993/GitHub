public class laptop {
    //public, private are the access modifier
    private integer m1;
    public string m2;
    public boolean m3;
    public void rosmethod()
    {
        system.debug('inside method');
        m1= 200;
        m2= 'love';
        m3= true;
        system.debug(m1);
        system.debug(m2);
        system.debug(m3);
        
    }

}