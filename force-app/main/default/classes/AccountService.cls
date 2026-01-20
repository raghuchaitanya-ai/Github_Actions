public with sharing class AccountService {
    /**
     * @description: Creates a basic Account. Simplified for CI/CD stability.
     * Updated by: @raghuchaitanya-ai
     */
    public static Account createAccount(String accountName) {
        if (String.isBlank(accountName)) {
            throw new IllegalArgumentException('Account name cannot be null or empty');
        }
        
        // We only use the Name field to avoid 'Inaccessible Field' errors
        Account newAcc = new Account(Name = accountName);
        
        try {
            insert newAcc;
            return newAcc;
        } catch (DmlException e) {
            System.debug('Account Creation Failed: ' + e.getMessage());
            throw e;
        }
    }
}