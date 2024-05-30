import { LightningElement } from 'lwc';

export default class Childmessage extends LightningElement {

    msgtoparent='hello';


    changehandler(event){
 this.msgtoparent=event.target.value;
 //conlole.log(event);

    }
    clickhandler(){

        const sendtoparent = new CustomEvent("messagechange",{
            detail:this.msgtoparent

        });
        this.dispatchEvent(sendtoparent);

    }
}