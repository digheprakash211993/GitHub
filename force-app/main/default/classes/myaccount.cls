public class myaccount {
@auraenabled
    public static list<account> demo(){
        list<account> mylist=[select id,name,phone from account limit 5];
        return mylist;
    }
    @auraenabled
    public static list<contact> demo1(ID contid){
        
        list<contact> clist=[select id,lastname from contact  where accountid=:contid];
        return clist;
    }
}