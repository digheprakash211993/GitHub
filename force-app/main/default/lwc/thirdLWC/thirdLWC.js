import { api, LightningElement, wire } from 'lwc';
import classmethodname from '@salesforce/apex/FetchRecord.accmethod'
export default class ThirdLWC extends LightningElement {
@api recordId;
inputvar;
accrecord;
@wire(classmethodname,{namelist:this.inputvar})wireaccountmethod({data,error}){
this.accrecord=data
}
Handlechange(event){
this.inputvar= this.template.querySelector('lightning-input').value;

}
}