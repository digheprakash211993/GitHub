import { LightningElement,api } from 'lwc';
import uploadFile from '@salesforce/apex/fileuploadapex.uploadFile'
import {ShowToastEvent} from 'lightning/platformShowToastEvent'
import { CloseActionScreenEvent } from 'lightning/actions'
import remark_FIELD from '@salesforce/schema/Account.Remarks__c';
import comment_FIELD from '@salesforce/schema/Account.Comment__c';
export default class Fileuploadcode extends LightningElement {
@api recordid;
@api objectApiName;
fileData
remarkfield=remark_FIELD;
Commentfield=comment_FIELD;
Handlevent(event){
const file= event.target.files[0];
var reader= new FileReader()
reader.onload =()=>{
    var base64= reader.result.split(',')[1]
    this.fileData={
        'filename':file.name,
        'base64':base64,
        'recordId':this.recordid
    }
    console.log(this.fileData);
}
reader.readAsDataURL(file)
}
Handleclick(){
    const{base64, filename, recordId}=this.fileData
    uploadFile({ base64, filename, recordId }).then(result=>{
    this.fileData=null
    let title='${filename} uploaded succesfully!!'
    this.toast(title)
    })
}
toast(title){
const toastEvent=new ShowToastEvent({
title,
varient:"success"
})
this.dispatchEvent(toastEvent)
}
}