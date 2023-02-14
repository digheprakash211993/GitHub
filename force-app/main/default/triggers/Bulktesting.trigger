trigger Bulktesting on Account (before insert) {
    system.debug('Number of trigger');
    for(Account k:trigger.new){
        system.debug('Number of records');
    }
}