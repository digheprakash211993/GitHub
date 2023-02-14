({
	fireComponentEvent: function(component, event, helper) {
		var cmpEvent = component.getEvent("cmpEvent");
        cmpEvent.setParams({
            "cmpmsg" : "My name is prak prak"});
        cmpEvent.fire();
	}
})