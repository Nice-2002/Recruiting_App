@isTest
public with sharing class PositionControllerTest {
    @isTest
    public static void testgetAllPositions(){
        Position__c p1 = new Position__c(Name='Position1');
        insert p1;
        Position__c p2 = new Position__c(Name='Position2');
        insert p2;
        List<Position__c> positions = PositionController.getAllPositions();
        System.assertEquals(2, positions.size());
    }
    
    @isTest public static void getPositionByNameTest(){
        Position__c p1 = new Position__c(Name='Position1');
        insert p1;
        Position__c positions = PositionController.getPositionByName('Position1');
        System.assertEquals('Position1', positions.Name);
    }
    
    @isTest public static void getPositionByStatusTest(){
        Position__c p1 = new Position__c(Name='Position1', Status__c = 'New');
        insert p1;
        Position__c p2 = new Position__c(Name='Position2', Status__c = 'New');
        insert p2;
        List<Position__c> positions = PositionController.getPositionByStatus('New');
        System.assertEquals(2, positions.size());
    }
}