({
	handleApplicationEvent : function(component, event, helper) {
        alert('Inside the component2 '+event.getParam("msg"));
		component.set("v.test",event.getParam("msg"))
	}
})