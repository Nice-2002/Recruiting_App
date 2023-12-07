public with sharing class PositionController {
    public static List<Position__c> getAllPositions(){
        return [SELECT Id, Name FROM Position__c];
    }   
    
    public static Position__c getPositionByName(String str){
        return [Select Id, Name, Status__c, Position_Open_Date__c, RecordTypeId from Position__c where Name = :str];
    }
    
    public static List<Position__c> getPositionByStatus(String status){
        return [SELECT Id, Name, Status__c, Position_Open_Date__c, RecordTypeId from Position__c where Status__c = :status];
    }
}