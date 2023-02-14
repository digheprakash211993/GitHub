public with sharing class mergevfdoc {
transient public Blob attachment1Blob {get;set;}
public String tempString  {get;set;}
    Public void save(){
         Document resume = new Document();
         tempString= EncodingUtil.base64Encode(attachment1Blob);
         system.debug('##'+tempString);
         resume.body = attachment1Blob;
         resume.name = 'test';
         resume.Folderid = UserInfo.getUserId();
         insert resume;

    }
}