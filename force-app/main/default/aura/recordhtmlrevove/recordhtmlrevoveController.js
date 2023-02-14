({
	doInit : function(component, event, helper) {
        var jsArray=[{Name:'Rani',Phone:'500',URL:'Google.com'},
                     {Name:'Kajal',Phone:'800',URL:'Yahoo.com'},
                     {Name:'Avinash',Phone:'900',URL:'India.com'},
                     {Name:'Nishant',Phone:'900',URL:'Tom.com'}];
        component.set("v.recordlist",jsArray);
	},
    Removerowmethod : function(component, event, helper) {
		alert(event.currentTarget.name);
        alert(JSON.stringify(component.get("v.recordlist").splice(event.currentTarget.name,1)));
        component.set("v.recordlist",component.get("v.recordlist"));
	}
})