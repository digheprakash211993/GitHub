({
	render : function(cmp, helper) {
    var ret = this.superRender();
    alert('This is renderer');
        cmp.set("v.str","PQR");
    return ret;
},
    afterRender: function (cmp, helper) {
    this.superAfterRender();
   cmp.set("v.str","XYZ");
},
    rerender : function(cmp, helper){
    this.superRerender();
    alert('This is re-renderer');
},
    unrender: function () {
    this.superUnrender();
    alert('this is UN-Renderer');
}
})