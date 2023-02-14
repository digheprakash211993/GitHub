public class customevent {
@auraenabled
    public static list<Account> method1(){
        list<Account> cobj=[select id,Name, Phone from Account limit 5];
        
        return cobj;
    }
    @auraenabled
    public static list<Contact> method2(ID oppid){
    list<Contact> copp=[select id,LastName from Contact where accountid=:oppid];
        
        return copp;
    }
}