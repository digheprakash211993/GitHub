({
	handleComponentEvent : function(component, event, helper) {
		var message = event.getParam("info");
        alert('This is parent '+event.getParam("info"));
	}
})