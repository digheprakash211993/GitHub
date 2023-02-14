({
    doInit: function(component, event, helper) {
        var action= component.get("c.method1");
        action.setCallback(this,function(resp){
            alert(JSON.stringify(resp.getReturnValue()));
           component.set("v.Tableshow",resp.getReturnValue());
            
        });
        $A.enqueueAction(action);
	},
    mymethod : function(component, event, helper) {
        
		var appEventvariable = $A.get("e.c:EventcustApplicationevent1");
        appEventvariable.setParams({msg:event.currentTarget.dataset.id});
        appEventvariable.fire();
    }
})