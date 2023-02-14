({
	handleClick : function(component, event, helper) {
		var createRecordEvent = $A.get("e.force:createRecord");
    createRecordEvent.setParams({
        "entityApiName": "Life_Insurance__c"
    });
    createRecordEvent.fire();
	},
    
   editrecord : function(component, event, helper) {
       alert(component.get("v.recordId"));
    var editRecordEvent = $A.get("e.force:editRecord");
    editRecordEvent.setParams({
         "recordId": component.get("v.recordId")
   });
    editRecordEvent.fire();
    },
    
    Navigatemethod : function(component, event, helper) {
        var path={
            "type": "standard__webPage",
             "attributes": {
             "url": "https://nationalinsurance.nic.co.in/"
    }
        }
      component.find("Navid").navigate(path);
    },
    handleDeleteRecord : function(component, event, helper) {
        component.find("recordHandler").deleteRecord();
        alert("Record deleted");
	}
    
})