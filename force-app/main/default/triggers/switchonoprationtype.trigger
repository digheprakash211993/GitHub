trigger switchonoprationtype on Country__c (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
switch on Trigger.operationType {
         
        when BEFORE_INSERT {
            //Invoke before insert trigger handler
            system.debug('Before Insert');
        }
        when AFTER_INSERT {
            //Invoke after insert trigger handler
            system.debug('After Insert');
        }
        when BEFORE_UPDATE {
            //Invoke before update trigger handler
            system.debug('Before Update');
        }
        when AFTER_UPDATE {
            //Invoke after update trigger handler
            system.debug('After Update');
        }
        when BEFORE_DELETE {
            //Invoke before delete trigger handler
            system.debug('Before Delete');
        }
        when AFTER_DELETE {
            //Invoke after delete trigger handler
            system.debug('After Delete');
        }
        when AFTER_UNDELETE {
            //Invoke after undelete trigger handler
            system.debug('After Undelete');
        }
    }
}