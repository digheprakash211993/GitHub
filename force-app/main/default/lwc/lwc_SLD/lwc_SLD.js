import { LightningElement } from 'lwc';
import { deleteRecord } from 'lightning/uiRecordApi';
import { updateRecord } from 'lightning/uiRecordApi';
import { createRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class Lwc_SLD extends LightningElement {
    handleClick(event){
        deleteRecord('0018c00002K0JCxAAN');

    }
    UPDATEClick(event){
        const fieldvalue= {};
        fieldvalue['Id']='0018c00002IfWgvAAF';
        fieldvalue['Phone']='222';
        fieldvalue['Industry']='Banking';
        const recordInput = { "fields": fieldvalue };
        updateRecord(recordInput);

    }
    CreateClick(event){
        const recordInput = {
            "apiName": "Account",
            "fields": {
          "Name": "LwcAccount",
          "Phone": "100",
          "Industry": "Banking"
         } };
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