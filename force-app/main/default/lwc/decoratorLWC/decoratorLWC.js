import { LightningElement, track,wire} from 'lwc';
import getAccounts from '@salesforce/apex/FetchRecord.accmethod';
export default class DecoratorLWC extends LightningElement {
    @wire(getAccounts) wiredAccounts;
    @track str;
    Handleclick(event){
    this.str=event.target.label;
    }
    Inputchange(event){
        this.str=event.target.value;
    
        }
}