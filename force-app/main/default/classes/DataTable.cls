public class DataTable {
@auraenabled
    public static list<Account> acclist(){
        
        
        return [select id,name,industry,phone from account limit 5];
    }
}