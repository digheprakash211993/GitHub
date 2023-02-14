({
	handleClick : function(component, event, helper) {
		var createRecordEvent = $A.get("e.force:createRecord");
    createRecordEvent.setParams({
        "entityApiName": "Account"
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
             "url": "https://yahoo.com"
    }
        }
      component.find("Navid").navigate(path);
    },
    
    Navigatemethod1 : function(component, event, helper) {
        var path={    
       type: "standard__recordPage",
       attributes: {
           recordId: component.get("v.recordId"),
           objectApiName: "Account",
           actionName: "edit"
       }
}
            
            
      component.find("Navid").navigate(path);
    },
    Navigatemethod2 : function(component, event, helper) {
        var path={
    type: "standard__objectPage",
    attributes: {
        objectApiName: "Account",
        actionName: "new"
    },
    state: {
        defaultFieldValues : "Name=Prak234,Industry=Finance,Phone=345,NumberOfEmployees=35000",
        nooverride: "1"
    }
}
      component.find("Navid").navigate(path);
    }
})