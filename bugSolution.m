The safe approach involves checking the type of `NSNumber` before casting.  If it's not a decimal number, you might choose to use `decimalNumberByAdding:` or other methods to handle it safely. 

```objectivec
// Correct approach
NSNumber *number = [json objectForKey:@"amount"];
NSDecimalNumber *decimal;
if ([number isKindOfClass:[NSDecimalNumber class]]) {
    decimal = (NSDecimalNumber *)number;
} else if ([number isKindOfClass:[NSNumber class]]) {
    decimal = [NSDecimalNumber decimalNumberWithDecimal:[number decimalValue]];
} else {
    // Handle cases where the number is not an NSNumber or NSDecimalNumber
    NSLog("Warning: Unexpected number type received");
    decimal = [NSDecimalNumber zero]; // Or handle the error in a more appropriate way
}
```
This solution ensures type safety and gracefully handles unexpected number types, preventing crashes.