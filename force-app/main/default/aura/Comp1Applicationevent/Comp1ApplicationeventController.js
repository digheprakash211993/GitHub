({
	fireApplicationEvent : function(component, event, helper) {
		var appEvent = $A.get("e.c:Comp1Applicationevent1");
        appEvent.setParams({
            "str" :component.find("idtag").get("v.value") });
        appEvent.fire();
	}
})