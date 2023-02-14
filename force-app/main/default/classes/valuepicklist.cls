public class valuepicklist {
  @auraenabled
    public static list<string> strmethod(){
        list<string> str1= new list<string>();
        Schema.DescribeFieldResult F = Object_B__c.Pick_value__c.getDescribe();
        List<Schema.PicklistEntry> P = F.getPicklistValues();
        
        for(Schema.PicklistEntry acc:P){
            str1.add(acc.getLabel());
        }
        
      return str1;  
    }
}