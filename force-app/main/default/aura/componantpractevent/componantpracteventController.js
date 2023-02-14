({
    fireComponentEvent : function(cmp, event, helper) {
        var cmpEvent = cmp.getEvent("cmpEvent");
        cmpEvent.setParams({
            "msg" : "My name is prakash" });
        //alert('This is Parent componant ');
        cmpEvent.fire();
	}
})