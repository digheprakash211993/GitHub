({
	fireComponentEvent : function(cmp, event, helper) {
		var cmpEvent = cmp.getEvent("cmpEvent");
        cmpEvent.setParams({
            "msg" : "Child prakash "});
        cmpEvent.fire();
        
	}
})