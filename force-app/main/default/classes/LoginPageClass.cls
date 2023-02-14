public class LoginPageClass {
 @auraEnabled
    public static String getcontact(String username,String userpassw ){
        List<Object_C__c> lcont=new List<Object_C__c>([select Username__c,Password__c from Object_C__c where Username__c=:username  Limit 1]);
        if(lcont.size()==0){
            return 'User dose not exit!';
        }
        else{
            if(lcont[0].Password__c==userpassw ){
                return 'Login successfully';
            }
            else{
                return 'Invalid Password';
            }  
        }
    }
}