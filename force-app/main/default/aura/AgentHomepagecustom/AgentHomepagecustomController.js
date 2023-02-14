({
	handleClick : function(component, event, helper) {
       var path={
            "type": "standard__webPage",
             "attributes": {
             "url": "https://metagraph-dev-ed.lightning.force.com/lightning/o/Agent__c/list?filterName=Recent"
    }
        }
      component.find("Navid").navigate(path);
       },
    handleClick1 : function(component, event, helper) {
       var path={
            "type": "standard__webPage",
             "attributes": {
             "url": "https://metagraph-dev-ed.lightning.force.com/lightning/o/Policy_Holder__c/list?filterName=Recent"
    }
        }
      component.find("Navid").navigate(path);
       },
    handleClick2 : function(component, event, helper) {
       var path={
            "type": "standard__webPage",
             "attributes": {
             "url": "https://metagraph-dev-ed.lightning.force.com/lightning/o/Life_Insurance__c/list?filterName=Recent"
    }
        }
      component.find("Navid").navigate(path);
       },
    handleClick3 : function(component, event, helper) {
       var path={
            "type": "standard__webPage",
             "attributes": {
             "url": "https://metagraph-dev-ed.lightning.force.com/lightning/o/Motor_Insurance__c/list?filterName=Recent"
    }
        }
      component.find("Navid").navigate(path);
       },
     handleClick4 : function(component, event, helper) {
       var path={
            "type": "standard__webPage",
             "attributes": {
             "url": "https://metagraph-dev-ed.lightning.force.com/lightning/o/Payments__c/list?filterName=Recent"
    }
        }
      component.find("Navid").navigate(path);
       }
})