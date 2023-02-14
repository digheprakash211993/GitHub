trigger deletechildrecord on Account (after delete) {
list<contact> cont=[select id,lastname from contact where id=:trigger.oldmap.keyset()];

}