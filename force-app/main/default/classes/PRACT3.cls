public class PRACT3 {
    public string str{set;get;}
    public integer int1{set;get;}
    public boolean b1;
    public PRACT3(){
        system.debug('Inside constructor');
        str='abc';
    }
    public void method(){
        system.debug('Inside method');
        str='xyz';
        int1=100;
    }
}