({
	handleClick : function(component, event, helper) {
        var path={
            type: 'standard__component',
    attributes: {
        componentName: 'c__Tocomponent'
    },
    state: {
        c__Firstname: 'Prakash'
    }  
            
        };
        
        component.find("prak").navigate(path);
	},
    handleClick1 : function(component, event, helper) {
        var path={
           type: 'standard__app',
    attributes: {
        appTarget: 'standard__Service',
    }
            
        };
        
        component.find("prak").navigate(path);
	}
})