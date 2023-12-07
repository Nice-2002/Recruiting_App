@isTest
public class CheckFirstAndLastNameTest {
    @isTest public static void testFirstAndLastName(){
        Candidate__c can = new Candidate__c();
        
        Test.startTest();
        Database.saveResult result = Database.insert(can, false);
        Test.stopTest();
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('Please Provide First Name', result.getErrors()[0].getMessage()); 
        System.assertEquals('Please Provide Last Name', result.getErrors()[1].getMessage());
        
    }
    
    @isTest public static void testFirstAndLastName2(){
        Candidate__c can = new Candidate__c(First_Name__c = 'Sita');
        Test.startTest();
        Database.saveResult result = Database.insert(can, false);
        Test.stopTest();
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('Last Name Cannot be Empty', result.getErrors()[0].getMessage());
    }
    
    @isTest public static void testFirstAndLastName3(){
        Candidate__c can = new Candidate__c(Last_Name__c = 'Gita');
        Test.startTest();
        Database.saveResult result = Database.insert(can, false);
        Test.stopTest();
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('First Name Cannot be Empty', result.getErrors()[0].getMessage());
    }
      
}