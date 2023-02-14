({
	handleApplicationEvent : function(component, event, helper) {
		var Eventvar = event.getParam("str");
        alert('This is 2nd comp '+Eventvar);
        component.set("v.inputvar",Eventvar);
	}
})