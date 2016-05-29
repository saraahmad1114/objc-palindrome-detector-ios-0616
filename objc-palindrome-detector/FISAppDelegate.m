//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    
    NSString *palindrome = @"palindrome";
    NSString *racecar = @"racecar";
    
    NSString *bob = @"Bob";
    BOOL bobIsPalindrome = [self stringIsPalindrome:bob];
    NSLog(@"%d: %@", bobIsPalindrome, bob);
    
    NSString *kanakanak = @"Kanakanak";
    BOOL kanakanakIsPalindrome = [self stringIsPalindrome:kanakanak];
    NSLog(@"%d: %@", kanakanakIsPalindrome, kanakanak);
    
    NSString aibophobia = @"Aibophobia";
    BOOL aibophobiaIsPalindrome = [self stringIsPalindrome:aibophobia];
    NSLog(@"%d: %@", aibophobiaIsPalindrome, aibophobia);
    
    NSString *notAPalindrome = @"this is not a palindrome";
    BOOL notAPalindromeIsPalindrome = [self stringIsPalindrome:notAPalindrome];
    NSLog(@"%d : %@", notAPalindromeIsPalindrome, notAPalindrome);
    
    NSString *neverOdd = @"never odd or even";
    BOOL neverOddIsPalindrome = [self stringIsPalindrome:neverOdd];
    NSLog(@"%d : %@", neverOddIsPalindrome, neverOdd);
    
    NSString *iPreferPi = @"I prefer pi";
    BOOL iPreferPiIsPalindrome = [self stringIsPalindrome:iPreferPi];
    NSLog(@"%d : %@", iPreferPiIsPalindrome, iPreferPi);
    
    NSString *fleeToMe = @"Flee to me, remote elf.";
    BOOL fleeToMeIsPalindrome = [self stringIsPalindrome:fleeToMe];
    NSLog(@"%d : %@", fleeToMeIsPalindrome, fleeToMe);
    
    NSString *norma = @"Norma is as selfless as I am, Ron.";
    BOOL normaIsPalindrome = [self stringIsPalindrome:norma];
    NSLog(@"%d : %@", normaIsPalindrome, norma);
    
    NSString *papayaWar = @"No sir! Away! A papaya war is on.";
    BOOL papayaWarIsPalindrome = [self stringIsPalindrome:papayaWar];
    NSLog(@"%d : %@", papayaWarIsPalindrome, papayaWar);
    
    //this will be our test string
    NSString *reversed = [self stringByReversingString: palindrome];
    //this string variable will store the contents of the string reversed by calling on the stringByReversingString method and taking in the argument palindrome to be reversed.
    
    BOOL racecarIsPalindrome = [self stringIsPalindrome:racecar];
    BOOL palindromeIsPalindrome = [self stringIsPalindrome:palindrome];
    NSLog(@"%d: %@", racecarIsPalindrome, racecar);
    
    NSLog(@"%@ : %@", palindrome, reversed );
    
    NSLog(@"%d: %@", palindromeIsPalindrome, palindrome);
    // do not alter
    return YES;  //
}   ///////////////


-(BOOL) stringIsPalindrome:(NSString*)string
{
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];
    NSString *withoutPunctuation = [string copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    NSString *spaceless = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [string lowercaseString];// first take the string arguement and convert it into all lowercase
    NSString *reverse = [self stringByReversingString: string]; //then reverse the lowercase string and store it in reverse
    //the lowercaseString will return the lowercase version of that string
    BOOL stringIsEqualToReverse = [lowercase isEqualToString: reverse];
    NSLog (@"lowercase: %@ reverse: %@", lowercase, reverse);
    return stringIsEqualToReverse;
}
//Comments to understand what is going on!
//another more efficient way to do this would have been to use a built in method in objective c: methodName = stringByReversingString
-(NSString*) stringByReversingString:(NSString*)string
{
    NSString *result = @"";
    //this will be the string that I will be storing the new reversed string
    
    for(NSUInteger i = [string length]; i < 0; i --)
        //so here we are decrementing and going back since we want the reverse of the string or word in order for the comparison to take place between regular input word and the reversed word
    {
        NSUInteger index = i - 1;
        //since i is equal to the string lenth, we want to be able to acess all the indexes so for that reason why subtract 1 so it acesses the correct index that we need
        unichar c = [string characterAtIndex: index];
        //each of those characters from the string will come from a specific index and will be stored in the c variable of the type unichar
        //unichar is coming from C for that reason we weren't really given too much information
        result = [result stringByAppendingFormat: @"%C", c];
        //And slowly as we decrement through the loop we go ahead and append or add that letter to the result string
    
    }

    return result;
    //return the word that has now been reversed!
}

@end
