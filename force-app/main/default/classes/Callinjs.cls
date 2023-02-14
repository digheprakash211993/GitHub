public class Callinjs {
@auraenabled
    public static string method1(list<account> acc){
        
        return 'xyz';
    }
    @auraenabled
    public static integer method2(list<account> acc){
        
        return 123;
    }
    
    @auraenabled
    public static list<string> method3(){
        list<string> sobj= new list<string>();
        sobj.add('AA');
        sobj.add('BA');
        sobj.add('CA');
        return sobj;
    }
}