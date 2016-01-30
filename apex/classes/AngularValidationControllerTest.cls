@isTest
private class AngularValidationControllerTest {
    
    private static User testAdminUser = new User(Id = UserInfo.getUserId());
    
    /**
     * コンストラクタ
     */
    static testMethod void AngularValidationControllerTest1() {
        
        System.runAs(testAdminUser) {

            Test.startTest();
            
            AngularValidationController cls = new AngularValidationController();
            
            Test.stopTest();
        }
    }
    
    /**
     * 取引先責任者情報の登録
     */
    static testMethod void doSaveAccountTest1() {
        
        System.runAs(testAdminUser) {
            
            Contact contact = new Contact(LastName = 'Salesforce', FirstName = 'Saasy');
            System.assertEquals(String.isEmpty(contact.Id), true);

            Test.startTest();
            
            AngularValidationResult result = AngularValidationController.doSaveContact(contact);
            
            Test.stopTest();
            
            System.assertEquals(String.isNotEmpty(result.recordId), true);
        }
    }
}