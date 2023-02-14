public with sharing class wiredclass {
    @AuraEnabled(cacheable=true)
    public static list<contact> methodName(id Namestr){
       System.debug('This is class parametre '+Namestr);

       return[select id, Lastname from contact where id=:Namestr];
    }
}