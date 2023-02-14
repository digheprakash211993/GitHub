({
	Method2 : function(component, event, helper) {
		alert('Record insert');
        var objaArray={};
       objaArray.Name= component.find("inputaura").get("v.value");
        
        var action = component.get("c.method1");
        action.setParams({obja:objaArray});
        action.setCallback(this,function(resp){
            alert("This record"+JSON.stringify(resp.getReturnValue())+"are succesfully inserted");
            
        });
        $A.enqueueAction(action);
	}
})