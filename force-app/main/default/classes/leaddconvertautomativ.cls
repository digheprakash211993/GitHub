public class leaddconvertautomativ {
@invocablemethod
    public static void autolead(list<id> Idlist){
        Lead leadstage=[select id,	Name, Status from Lead where isConverted=true limit 1];
        List<Database.LeadConvert> leadconvert= new list<Database.LeadConvert>();
        FOR(id currentid:Idlist){
            Database.LeadConvert convertlead= new Database.LeadConvert();
            convertlead.setLeadId(currentid);
            convertlead.setConvertedStatus(leadstage.Status);
            //convertlead.setDoNotCreateOpportunity(TRUE);
            leadconvert.add(convertlead);
        }
        system.debug('data are '+leadconvert);
        if(!leadconvert.isEmpty()){
             List<Database.LeadConvertResult> lcr= Database.convertLead(leadconvert);
        }
    }
}