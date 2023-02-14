import { LightningElement,api,wire,track } from 'lwc';
import { getRecord, getFieldValue } from 'lightning/uiRecordApi';

import Industry_FIELD from '@salesforce/schema/Account.Industry';
const fields = [Industry_FIELD];
export default class Displaypicklistfield extends LightningElement {
    checkboxVal = true;
    @api recordId;
    @track selectedControlling=[];
picklist;
    @wire(getRecord, { recordId: '$recordId', fields })
    account;
    get revenue() {
        return getFieldValue(this.account.data, Industry_FIELD);
        this.picklist=JSON.stringify(this.getFieldValue(this.account.data));
        this.selectedControlling = this.getFieldValue(this.account.data, Industry_FIELD);
        console.log('Picklist value '+picklist);
    }

    handleChange(e) {
        this.picklist = e.target.value;
    }
}