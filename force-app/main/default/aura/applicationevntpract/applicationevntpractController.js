({
	fireApplicationEvent : function(component, event, helper) {
		var appEvent = $A.get("e.c:applicationevntpract1");
        appEvent.setParams({
            "msg" : "My name is praaksh" });
        alert('This is application event 1');
        appEvent.fire();
	}
})