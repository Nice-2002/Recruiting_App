trigger CheckFirstAndLastName on Candidate__c (before insert) {
    for(Candidate__c can: Trigger.new){
        if((can.first_name__c == null || can.first_name__c == '') && (can.last_name__c == null || can.last_name__c == '')){
            can.first_name__c.addError('Please Provide First Name');
            can.last_name__c.addError('Please Provide Last Name');
        }
        else if(can.first_name__c == null || can.first_name__c == ''){
            can.first_name__c.addError('First Name Cannot be Empty');
        }
        else if(can.last_name__c == null || can.last_name__c == ''){
            can.last_name__c.addError('Last Name Cannot be Empty');
        }
    }
}