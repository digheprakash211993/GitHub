({
	doInit : function(component, event, helper) {
        alert('This is init method');
		component.set("v.str",'SKYRain');
	},
    Rendermethod : function(component, event, helper) {
        alert('This is renderer method');
		component.set("v.str",'SKYRain');
	}
})