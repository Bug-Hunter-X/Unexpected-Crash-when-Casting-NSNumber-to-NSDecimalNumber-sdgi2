In Objective-C, a common yet subtle error arises when dealing with `NSDecimalNumber` and its interaction with `NSNumber`.  Consider this scenario: you receive an `NSNumber` from a JSON response or user input, expecting it to be a decimal number.  If you directly cast it to `NSDecimalNumber` without checking its type, it will cause a crash if the number is not a decimal.  This crash is not always straightforward to debug, as it might manifest as a generic exception or a seemingly unrelated crash later in the code.

```objectivec
// Incorrect approach
NSNumber *number = [json objectForKey:@"amount"];
NSDecimalNumber *decimal = (NSDecimalNumber *)number; // Potential crash!
```