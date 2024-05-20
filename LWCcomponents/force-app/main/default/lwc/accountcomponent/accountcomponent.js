import { LightningElement ,wire} from 'lwc';
import getAccList from "@salesforce/apex/accountLWCcontroller.retrieve";
export default class Accountcomponent extends LightningElement {

    // wire ile
@wire(getAccList) Accounts;

}