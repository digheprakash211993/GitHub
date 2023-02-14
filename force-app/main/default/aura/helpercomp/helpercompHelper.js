({
	helperMethod1: function(component, XYZ, helper) {
		alert('This is helper1 method'+XYZ);
	},
    helperMethod2: function(component, XYZ, helper) {
		alert('This is helper2 method'+XYZ);
	},
    helperMethod3: function(component, XYZ, helper) {
		alert('This is helper3 method'+XYZ);
        this.helperMethod1(component, 1000)
	}
})