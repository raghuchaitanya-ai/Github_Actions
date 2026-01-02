@isTest
        // Updating test calss with comments
private class AccountServiceTest {
    @isTest
    static void testCreateAccountSuccess() {
        String testAccountName = 'Clean Pipeline Account';
        
        Test.startTest();
        Account result = AccountService.createAccount(testAccountName);
        Test.stopTest();
        
        System.assertNotEquals(null, result.Id, 'Account should be inserted.');
        System.assertEquals(testAccountName, result.Name, 'Names should match.');
    }
}