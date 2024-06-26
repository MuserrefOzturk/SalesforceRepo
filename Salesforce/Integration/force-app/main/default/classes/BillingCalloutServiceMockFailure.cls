/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-19-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
global class BillingCalloutServiceMockFailure implements WebServiceMock {
    global void doInvoke(Object stub,Object request,Map<String, Object> response,String endpoint,String soapAction, String requestName, String responseNS,String responseName,String responseType) {
        BillingServiceProxy.billProjectResponse_element response_x = new BillingServiceProxy.billProjectResponse_element();
        response_x.status = 'ERROR';
        response.put('response_x', response_x);
    }
}