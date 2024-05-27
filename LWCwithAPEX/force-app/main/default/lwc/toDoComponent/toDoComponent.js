import IsDeleted from '@salesforce/schema/Account.IsDeleted';
import { LightningElement } from 'lwc';

export default class ToDoComponent extends LightningElement {

task;
tasklist=[];
taskitem={

    id:'',
    isDelete:false,
    isDone:false,
    title:''
};

textchange(event){

this.task=event.target.value;
 
  }


  addtolist(){


    let randomId = (Math.random() + 1).toString(36).substring(7);
    
    
    this.taskitem={

        id:randomId,
        isDelete:false,
        isDone:false,
        title:this.task
    };

    this.tasklist=[
   ...this.tasklist,
   this.taskitem
    ];

  }

  keycheck(component, event, helper){
    console.log(component);

    if (component.which == 10 && component.ctrlKey==true ){
        // call the js method i.e. this.handlerfilter();
        
        console.log('ctrl key + enter ');
        //this.todoList.splice(0,this.todoList.length);

    } else if (component.which == 13 && component.shiftKey==true){
        // call the js method i.e. this.handlerfilter();
        console.log('shift key + enter ');
        //this.item='';
    } else if(component.which == 13 ){
      this.addtolist();
      this.task='';
    }
}
}







