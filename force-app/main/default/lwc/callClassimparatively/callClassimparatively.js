import { LightningElement } from 'lwc';
import abcd  from '@salesforce/apex/accClass.methodName';
export default class CallClassimparatively extends LightningElement {
    Handleclick(e){
        abcd({Namestr:'This is Prakash'}).then(result=>{
         console.log('Response '+result);
        }).catch(error=>{
            console.log('Error '+error);
        });
    }
}