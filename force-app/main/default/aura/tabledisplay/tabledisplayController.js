({

	tableview : function(component, event, helper) {
        alert('List display');
        var action= component.get("c.method1");
        action.setCallback(this,function(resp){
            alert(JSON.stringify(resp.getReturnValue()));
           component.set("v.Tableshow",resp.getReturnValue());
            
        });
        $A.enqueueAction(action);
		
	},
    divmethod: function(component, event, helper) {
       window.location.href = '/'+event.target.getAttribute("data-prak")+'/e';
    },
    viewmethod: function(component, event, helper) {
        window.location.href = '/'+event.currentTarget.name;
    
    },
    Editmethod: function(component, event, helper) {
        window.location.href = '/'+event.currentTarget.name+'/e';
    }
    
    
    
    
})