trigger tocalclassmethod on Country__c (before insert) {

    classmethod.demo1(trigger.new);
    classmethod.demo(trigger.new);
}