import { LightningElement,api} from 'lwc';
import { deleteRecord } from 'lightning/uiRecordApi';
import { updateRecord } from 'lightning/uiRecordApi';
import { createRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';


export default class Pract_LDS extends LightningElement {
    @api recordId;
    handleClickdelete(event){
        deleteRecord('recordId');
    }
    handleClickupdate(event){
        const recordInput = {
            "fields": {
                "Id":recordId,
            "India_Region__c": "Goa"
              }
         };
         updateRecord(recordInput);
    }
    handleClickcreate(event){
        const recordInput = {
            "apiName": "Object_C__c",
            "fields": {
                "Name":'Prak',
            "India_Region__c": "Goa"
              }
         };
         createRecord(recordInput);
         this.dispatchEvent(
            new ShowToastEvent({
                title: 'Success',
                message: 'Account Created',
                variant: 'success'
            })
        );
    }


}