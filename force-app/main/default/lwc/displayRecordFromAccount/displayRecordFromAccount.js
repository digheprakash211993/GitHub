import { LightningElement,api,wire} from 'lwc';
import myclass from '@salesforce/apex/DisplayRecordFromAccount.demo';
export default class DisplayRecordFromAccount extends LightningElement {
accvar;
@wire(myclass) varofwire({data,error}){
this.accvar=data;
}
}