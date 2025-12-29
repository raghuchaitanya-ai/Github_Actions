@isTest
private class CalculatorTest {
    @isTest
    static void testAddition() {
        Integer result = Calculator.add(5, 5);
        System.assertEquals(10, result, 'Addition logic failed!');
    }
}