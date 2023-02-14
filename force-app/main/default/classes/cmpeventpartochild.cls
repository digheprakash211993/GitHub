public class cmpeventpartochild {
@auraenabled
    public static list<Hotel__c> demo(string hotelname){
        string str= '%'+hotelname+'%';
        list<Hotel__c> Hobj=[select id, name,Services_Types__c,Hotel_MD__c,Mobile_number__c,(select name from Services__r) from Hotel__c where Name like:str];
        
        return Hobj;
    }
}