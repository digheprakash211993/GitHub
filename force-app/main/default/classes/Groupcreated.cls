public class Groupcreated {
    List<User> uobj= new List<User>();
    public void demo(string groupname){
        Group test = new Group();
       test.Name = groupname;
        insert test;
        
        uobj = [select id, Country__c from User];
    for(User U1:uobj){
        if(U1.Country__C=='China'){
            Groupmember grpmem= new Groupmember();
            grpmem.GroupId=test.Id;
            grpmem.UserOrGroupId= U1.Id;
            insert grpmem;
            system.debug('Public group member added'+test.name);     
        }    
    }
 }  
}