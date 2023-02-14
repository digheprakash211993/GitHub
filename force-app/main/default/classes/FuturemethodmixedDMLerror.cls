public class FuturemethodmixedDMLerror {

    @future
    public static void demo(List<id> idlist){
        /*Account acc = [select id, name from account limit 1];
        acc.phone='258';
        update acc;      pass the premitive data type parametre*/
        list<Account> acc= [select id, name from account where id=:idlist];
        update acc;
    }
}