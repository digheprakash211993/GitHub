({
	jsmethod : function(component, event, helper) {
		alert("Java js alert! "+ event.currentTarget.name);
        alert("Variable namr "+ component.get("v.str"));
        component.set("v.str","Rani");
	},
    demo : function(component, event, helper) {
		alert("Java js alert! "+ event.getSource().get("v.label"));
	}
})