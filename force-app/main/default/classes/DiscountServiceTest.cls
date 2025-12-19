@isTest
private class DiscountServiceTest {

    @isTest
    static void testHighAmountDiscount() {
        Test.startTest();
        // Salesforce treats numbers with decimals as Decimal types by default  Updated 12/18
        Decimal result = DiscountService.calculateDiscount(2000.0);
        Test.stopTest();
        
        System.assertEquals(1800.0, result, 'A 2000.0 amount should result in 1800.0.');
    }

    @isTest
    static void testLowAmountNoDiscount() {
        Test.startTest();
        Decimal result = DiscountService.calculateDiscount(500.0);
        Test.stopTest();
        
        System.assertEquals(500.0, result, 'Amounts 1000 or less should not receive a discount.');
    }

    @isTest
    static void testNullHandling() {
        Test.startTest();
        Decimal result = DiscountService.calculateDiscount(null);
        Test.stopTest();
        
        System.assertEquals(0.0, result, 'Null input should return 0.0.');
    }
}