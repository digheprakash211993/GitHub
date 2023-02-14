({
	callAction : function(component, event, helper) {
		var params = event.getParam('arguments');
        alert('This is Aura child method '+params.param1);
	}
})