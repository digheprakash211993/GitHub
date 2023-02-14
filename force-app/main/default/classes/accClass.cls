public with sharing class accClass {
    @AuraEnabled
    public static void methodName(string Namestr){
       System.debug('This is class parametre '+Namestr);
    }
}