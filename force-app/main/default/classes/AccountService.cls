public with sharing class AccountService {
    // Added a comment for Assignment 2 Manual Change tracking
    public static Account createAccount(String accName) {
        Account acc = new Account(
            Name = accName
        );
        insert acc;
        return acc;
    }
}