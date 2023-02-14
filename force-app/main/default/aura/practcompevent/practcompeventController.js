({
	fireComponentEvent : function(cmp, event, helper) {
       
		var cmpEvent = cmp.getEvent("cmpEvent");
        cmpEvent.setParams({
            "info" : "A component event of Child."});
        cmpEvent.fire();
	}
})