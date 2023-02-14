({
	doInit : function(cmp, event, helper) {
        alert('This is init method');
		cmp.set("v.str","Init data");
	},
    doRender : function(cmp, event, helper) {
         alert('This is Renderer method');
		cmp.set("v.str","Render data");
	},
    handleClick : function(cmp, event, helper) {
		cmp.set("v.str","Dighe");
	}
})