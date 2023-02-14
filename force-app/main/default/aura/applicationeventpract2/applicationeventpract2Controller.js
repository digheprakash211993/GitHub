({
	handleApplicationEvent : function(component, event, helper) {
		alert('This is 2nd component '+event.getParam("msg"));
	}
})