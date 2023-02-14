trigger Persistanceinterview on Contact (before insert) {

    for(Contact cobj:trigger.new){
        if(cobj.email==null){
            cobj.adderror('This feild is required');
        }
    }
}