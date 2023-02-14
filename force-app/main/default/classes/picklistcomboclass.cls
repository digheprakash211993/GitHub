public class picklistcomboclass {
    @auraenabled
    public static list<String> slist(){
    list<String> cobject= new list<String>();
        Schema.DescribeFieldResult F = Country__c.Country_rigion__c.getDescribe();
        List<Schema.PicklistEntry> P = F.getPicklistValues();
        
        for(Schema.PicklistEntry acc:P){
           cobject.add(acc.getLabel());
        }
      return cobject;
    }

}