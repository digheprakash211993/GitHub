({
	fireApplicationEvent : function(component, event, helper) {
		var appEvent1 = $A.get("e.c:applicationevent1event");
        component.find("idtag").get("v.value");
        appEvent1.setParams({
            "msg" : component.find("idtag").get("v.value")});
        appEvent1.fire();
	}
})