import { LightningElement,api,wire } from 'lwc';
import mystateclass from '@salesforce/apex/States_di.demo1';
export default class States_di extends LightningElement {
    finalId;
    @wire(mystateclass, {finalId:'$finalId'})
    statelist;
@api get cmprecordid(){
    return this.finalId;
}
set cmprecordid(value){
this.finalId=value;
}


}