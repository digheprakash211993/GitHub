({
	fireComponentEvent : function(cmp, event, helper) {
		var cmpEvent1 = cmp.getEvent("cmpEvent");
        cmpEvent1.setParams({
            "msg" : "A component1 event fired me." });
        cmpEvent1.fire();
	}
})