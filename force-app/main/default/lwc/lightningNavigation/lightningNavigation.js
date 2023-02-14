import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
export default class LightningNavigation extends NavigationMixin(LightningElement) {

    Handleclick(){
    this[NavigationMixin.Navigate]({
        "type": "standard__webPage",
        "attributes": {
            "url": "https://salesforce.com"
        } 
    });    
    }
    Handleclick1(){
        this[NavigationMixin.Navigate]({
            "type": "standard__navItemPage",
    "attributes": {
        "apiName": "LWC_Tab"    
    }
        });    
        }
        Handleclick2(){
            this[NavigationMixin.Navigate]({
                type: "standard__objectPage",
    attributes: {
        objectApiName: "Account",
        actionName: "new"
    },
    state: {
        defaultFieldValues :"AccountNumber=3456,Name=Navigate Lwc,NumberOfEmployees=35000",
        nooverride: "1"
    }
            });    
            }

}