import { LightningElement ,track} from 'lwc';
import getAccList from "@salesforce/apex/AccountsImperative.retrieve";
export default class AccountImperative extends LightningElement {

    // imperatively
@track multiAccounts;

connectedCallback(){

    getAccList()
    .then(data => {
         
        this.multiAccounts=data;
    })
    .catch(err => {
        console.log(err);
    });

}

}