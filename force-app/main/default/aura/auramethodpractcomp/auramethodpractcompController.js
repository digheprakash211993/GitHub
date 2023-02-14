({
	doAction : function(component, event, helper) {
		 var params = event.getParam('arguments');
        alert('This is child '+params.str);
	}
})