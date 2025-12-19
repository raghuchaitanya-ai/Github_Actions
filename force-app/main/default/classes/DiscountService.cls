/**
 * @description Simple service to calculate customer discounts using Decimal - Updated 12/18
 */
public with sharing class DiscountService {
    
    /**
     * @description Calculates a 10% discount for amounts over 1000.
     * @param originalAmount The starting price as a Decimal.
     * @return Decimal The discounted price.
     */
    public static Decimal calculateDiscount(Decimal originalAmount) {
        if (originalAmount == null) {
            return 0.0;
        }

        Decimal discountRate = 0.10;
        if (originalAmount > 1000) {
            return originalAmount - (originalAmount * discountRate);
        }
        
        return originalAmount;
    }
}