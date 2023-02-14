import { LightningElement,track,wire } from 'lwc';
import mydemo from '@salesforce/apex/RecordSearchFunctionalityclass.mydemo'
export default class RecordSearchFunctionality extends LightningElement {
  myvar;
@track recordlist;
@track error;
  @wire(mydemo,{namedata:'$myvar'})listvar({data,error}){
if(data){
this.recordlist=data;
this.error=error;
}else{
this.recordlist=undefined;
this.error=error;
}
  }
    Mymethod(event){
        this.myvar=event.target.value;

    }
}