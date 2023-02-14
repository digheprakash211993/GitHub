({
	handleClick : function(component, event, helper) {
		var createRecordEvent = $A.get("e.force:createRecord");
    createRecordEvent.setParams({
        "entityApiName": "Contact"
    });
    createRecordEvent.fire();
	},
    
    Editmethod: function(component, event, helper) {
        
		var editRecordEvent = $A.get("e.force:editRecord");
    editRecordEvent.setParams({
         "recordId": component.get("v.recordId")
   });
    editRecordEvent.fire();
	},
    
    Webmethod: function(component, event, helper) {
        var path ={   
    type: "standard__webPage",
    attributes: {
        url: "http://Yahoo.com"
    }
   }
        component.find("praa").navigate(path);
    },
    
    recordmethod:function(component, event, helper) {
        var path= {
            type: "standard__recordPage",
       attributes: {
           recordId:  component.get("v.recordId"),
           objectApiName: "Contact",
           actionName: "new"
       }   
        }  
         component.find("praa").navigate(path);
    },
    
   Objectmethod : function(component, event, helper) {
        var path={
    type: "standard__objectPage",
    attributes: {
        objectApiName: "Contact",
        actionName: "new"
    },
    state: {
        defaultFieldValues : "LastName=Finance",
        nooverride: "1"
    }
}
      component.find("Navid").navigate(path);
    }
})