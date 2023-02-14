({
	firecomponent : function(component, event, helper) {
		var cmpEventvar= component.getEvent("cmpEvent");
        cmpEventvar.setParams({msg:component.find("Enter").get("v.value")});
        cmpEventvar.fire();
	}
})