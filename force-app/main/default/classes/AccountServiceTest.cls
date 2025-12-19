@isTest
private class AccountServiceTest {
    @isTest
    static void testCreateAccount() {
        // Test data setup
        String testName = 'Test CI/CD Account';
        
        // Execute the service method
        Test.startTest();
        Account result = AccountService.createAccount(testName);
        Test.stopTest();
        
        // Verify the results
        System.assertNotEquals(null, result.Id, 'Account should have been inserted.');
        System.assertEquals(testName, result.Name, 'Account name should match the input.');
    }
}