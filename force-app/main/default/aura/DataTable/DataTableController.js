({
	doInit : function(cmp, event, helper) {
        var columnjs= [{label: 'Account name', fieldName: 'Name', type: 'text'},
                       {label: 'Account Phone', fieldName: 'Phone', type: 'text'},
                       {label: 'Industry name', fieldName: 'Industry', type: 'text'}];
        cmp.set("v.ColumnHeader",columnjs);
        
        var action= cmp.get("c.acclist");
        action.setCallback(this,function(resp){
            alert(JSON.stringify(resp.getReturnValue()));
            cmp.set("v.Accountrecord",resp.getReturnValue());
        });
        $A.enqueueAction(action);
	}
})