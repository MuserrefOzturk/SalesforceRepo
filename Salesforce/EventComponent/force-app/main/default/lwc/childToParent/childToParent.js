import { LightningElement } from 'lwc';

export default class ChildToParent extends LightningElement {

titletext='Parent Message';
childmessage;
    msgfromchild(event){
this.titletext='After receieved message From child';
this.childmessage=event.detail;
    }
}