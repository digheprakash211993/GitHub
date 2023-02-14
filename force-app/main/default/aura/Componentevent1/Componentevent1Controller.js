({
	fireApplicationEvent : function(component, event, helper) {
        alert('This is input field '+component.find("prak").get("v.value"));
		var appEventvariable = $A.get("e.c:Applicationevnt");
        appEventvariable.setParams({msg:component.find("prak").get("v.value")});
        appEventvariable.fire();

	}
})