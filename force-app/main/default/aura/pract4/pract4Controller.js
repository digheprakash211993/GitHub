({
	handleClick : function(component, event, helper) {
		alert("This is html tag "+event.currentTarget.name);
	},
    handleClick1 : function(component, event, helper) {
		//alert("This is lightnng tag "+event.getSource().get('v.label'));
        component.get('v.str');
        component.set('v.str','Rani');
        alert(component.find('Idtag').get('v.value'));
        console.log(component.find('Idtag').get('v.value'));
	},
    inputmethod : function(component, event, helper) {
		console.log(event.detail.value);
	}
})