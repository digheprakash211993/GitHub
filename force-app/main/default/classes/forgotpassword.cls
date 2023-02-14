public class forgotpassword {

      public String username{get;set;}
    {
    List<Object_C__c> reglist = new List<Object_C__c>();
    try
    {
    if(!String.isBlank(username))
    {
        reglist=[SELECT Username__c,Password__c FROM Object_C__c where Username__c =:username];
        for(Object_C__c c:reglist)
        {
                if(username == c.Username__c)
                {
                        String LoginURL='http://purnimacompnova-developer-edition.ap2.force.com/DigitalCampus';
                        String str;
                        
                        String[] toAddresses = new String[] {str};
                        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                        mail.setSenderDisplayName('Salesforce Admin');
                        mail.setSubject('Login URL and Password');
                        mail.setBccSender(false);  
                        mail.setUseSignature(false);
                        mail.setToAddresses(toAddresses);
           
                          
                        mail.setPlainTextBody(
             
                        ' Please use your Username and the  password, listed below, to login. \n\n' +
                        'User Name: ' +c.Username__c + ' \n' +
                        '(Temporary or Set) Password: ' + c.Password__c + ' \n' +
                        'Login Link: ' + LoginURL
              
                        );
           
                        // send email
                      Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });  
           
                }
                else{
                     ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error,'No Record exists in our database'));
                }
            }
         }
         else
        {
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error,'Please enter your username'));
        }
    }
      catch(Exception e)
      {    
          
            ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.Fatal,'No Record');
            ApexPages.addMessage(msg);
            //return null;
      }
    
    //return null;
 }
}