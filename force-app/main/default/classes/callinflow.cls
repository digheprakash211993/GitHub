public class callinflow {
@invocablemethod
    public static void method(list<innerclass> intvar){
        for(innerclass acc:intvar){
            system.debug('This is name '+acc.str);
            system.debug('This is name '+acc.indstr);
        }
    }
    
    public class innerclass {
        @invocablevariable public string str;
        @invocablevariable public string indstr;

}
}