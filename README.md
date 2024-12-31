# Objective-C: Unexpected Crash when Casting NSNumber to NSDecimalNumber

This repository demonstrates a common yet subtle error in Objective-C related to casting `NSNumber` to `NSDecimalNumber`.  The problem arises when an `NSNumber` isn't actually an `NSDecimalNumber`, leading to unexpected crashes.

The `bug.m` file showcases the flawed code, while `bugSolution.m` provides a corrected version with proper type checking and handling of different number types.

## Problem Description

Directly casting an `NSNumber` to `NSDecimalNumber` without checking its type is unsafe and can cause crashes. The crash often occurs unexpectedly, making debugging difficult.

## Solution

The solution involves explicitly checking the number's type using `[number isKindOfClass:[NSDecimalNumber class]]` before casting.  If the type is different, proper error handling or alternative type conversion is implemented to prevent crashes.