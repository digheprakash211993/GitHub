({
	fireApplicationEvent : function(component, event, helper) {
		var appEvent = $A.get("e.c:applicationeventpract1event");
        appEvent.setParams({
            "msg" : "My name is prakash"});
        appEvent.fire();
	}
})