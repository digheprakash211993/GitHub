import { LightningElement,wire,track } from 'lwc';
import {getPicklistValues} from 'lightning/uiObjectInfoApi';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
export default class Picklistvalueget extends LightningElement {
    @track picklistvalues;
  @track error;
  @track values;
    @wire(getPicklistValues, { recordTypeId: '012000000000000AAA', fieldApiName: INDUSTRY_FIELD })
    picklistvalue({data,error}){
    if(data){
        console.log('picklist value are',data.values);
        this.picklistvalues=data.values;
        this.error=undefined;
    }
    if(error){
        console.log('picklist values ${error}');
        this.error=error;
        this.picklistvalues=undefined;
    }
    }
}