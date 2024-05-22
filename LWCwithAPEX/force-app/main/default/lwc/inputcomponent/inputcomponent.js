import { LightningElement,wire,track } from 'lwc';

import getList  from "@salesforce/apex/apexinlwc.retrive";

export default class Inputcomponent extends LightningElement {

@track multiacc;

searchtext;

@wire(getList,{searchterm:'$searchtext'}) Accounts;


/*renderedCallback() {
    console.log(this.Accounts);
}

*/

changehandler(event){
this.searchtext=event.target.value;
console.log(this.searchtext);
}


connectedCallback(){

/*
getList({
    searchterm:This.searchtext
})

.then(data => {
    this.multiacc=data;
})
.catch(error => {
    console.error(error);
});
*/

}
}