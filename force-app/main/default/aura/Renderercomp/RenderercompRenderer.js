({
	render : function(cmp, helper) {
    var ret = this.superRender();
    alert('this is render');
        cmp.set("v.str","skywalk");
    return ret;
},
    afterRender: function (cmp, helper) {
    this.superAfterRender();
        alert('this is AFTERrender');
    cmp.set("v.str","ABC");
},
    rerender : function(cmp, helper){
    this.superRerender();
         alert('this is RERrender');
     cmp.set("v.str","XYZ");
},
    unrender: function () {
    this.superUnrender();
     alert('this is UNrender');
}
})