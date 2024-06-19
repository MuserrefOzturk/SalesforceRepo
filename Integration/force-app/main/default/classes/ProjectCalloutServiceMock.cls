/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-19-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
global class ProjectCalloutServiceMock implements HttpCalloutMock{
   //Implement http mock callout here
   // Implement this interface method
   global HTTPResponse respond(HTTPRequest request){
       // Create a fake response
       HttpResponse response = new HttpResponse();
       response.setHeader('Content-Type', 'application/json');
       response.setStatus('OK');
       response.setStatusCode(201);
              
       return response;
   }
}