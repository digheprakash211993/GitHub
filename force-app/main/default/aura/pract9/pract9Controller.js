({
	handleClick : function(cmp, event, helper) {
        var action=cmp.get('c.method1');
        action.setCallback(this,function(resp){
            //alert(JSON.stringify(resp.getReturnValue()));
            cmp.set('v.str',resp.getReturnValue());
        });
        $A.enqueueAction(action);
	},
    divmethod: function(cmp, event, helper) {
        //alert(event.target.getAttribute('data-recid'));
        //window.location.href='/' +event.target.getAttribute('data-recid')+'/e';
         var action=cmp.get('c.method2');
        action.setParams({Acclist:event.currentTarget.name});
        action.setCallback(this,function(resp){
            alert(JSON.stringify(resp.getReturnValue()));
            
        });
        $A.enqueueAction(action);
    },
    handleClick2: function(cmp, event, helper) {
        window.location.href='/' +event.getSource().get("v.value");
    }
})