import { LightningElement, wire } from 'lwc';
import getList  from "@salesforce/apex/inputWithTable.retrive";


const columns = [
    { label: 'First Name', fieldName: 'FirstName' },
    { label: 'Last Name', fieldName: 'LastName' },
    { label: 'Phone', fieldName: 'Phone', type: 'phone' },
    
];
export default class Tabledinput extends LightningElement {


    error;
    columns = columns;
    
    searchtext;

    @wire(getList,{searchterm:'$searchtext'}) Contacts;

    changehandler(event){
        this.searchtext=event.target.value;
        console.log(this.searchtext);
        }
    


}