public class Processbuilderclass {
    @Invocablemethod
    public static void demo(list<ID>  recid){
        system.debug('Id '+recid);
        list<account> acclist= [select id,name from account where id=:recid];
        
        delete acclist;
    }

}