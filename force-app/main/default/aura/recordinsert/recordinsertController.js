({
	insertmethod : function(cmp, event, helper) {
		//component.find("inputauraid").get("v.value");
        var cmpArray ={};
        cmpArray.Name= cmp.find("inputauraid").get("v.value");
        
        	
        var action=cmp.get("c.Insertconrecord");
        action.setParams({cmp:cmpArray});
        action.setCallback(this,function(resp){
            alert('This record'+JSON.stringify(resp.getReturnValue())+"HAS been inserted");
                           
        });
        $A.enqueueAction(action);
	}
})