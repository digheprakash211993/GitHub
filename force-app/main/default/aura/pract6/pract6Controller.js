({
	doInit : function(component, event, helper) {
        var action=component.get('c.method1');
        action.setCallback(this,function(resp){
            //alert(resp.getReturnValue());
            component.set('v.str',resp.getReturnValue());
        });
        $A.enqueueAction(action);
	},
    handleClick : function(component, event, helper) {
       var action =component.get('c.method2');
        action.setCallback(this,function(resp){
            //alert(resp.getReturnValue());
            component.set('v.int',resp.getReturnValue());
        });
        $A.enqueueAction(action);
	},
    handleClick1 : function(component, event, helper) {
       var action =component.get('c.method3');
        action.setCallback(this,function(resp){
            alert(resp.getReturnValue());
            component.set('v.Liststr',resp.getReturnValue());
        });
        $A.enqueueAction(action);
	}
})