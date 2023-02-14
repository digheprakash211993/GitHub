public class mobile {
    //public,private are the access modifier
    private integer p1;
    public string p2;
    public boolean p3;
    public void firstmethod()
    {
       system.debug('inside method');
        p1= 100;
        p2= 'abc';
        p3= true;
        system.debug(p1);
        system.debug(p2);
        system.debug(p3);
    }

}