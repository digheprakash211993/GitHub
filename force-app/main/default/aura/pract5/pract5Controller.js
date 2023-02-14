({
	handleClick : function(component, event, helper) {
		alert('This is lightning button '+event.getSource().get('v.label'));
        alert(component.get('v.str'));
        component.set('v.str','Rani');
       alert(component.find('idtag').get('v.value'));
	},
    handleClick1 : function(component, event, helper) {
		console.log(event.detail.value);
	}
})