#include <substrate.h>

%hook BBMCoreAccess
-(void) sendTypingNotificationForConversationURI:(id)arg1 isTyping:(bool)arg2 {
arg1 = NULL;
arg2 = FALSE;
return %orig;
}
%end

%hook BBMCoreAccessGroup
-(void) sendTypingNotificationForConversationURI:(id)arg1 {
arg1 = NULL;
return %orig;
}
%end

%hook BBMCoreAccess
-(void) markEphemeralMessageAsViewed:(id)arg1 {
arg1 = NULL;
return %orig;
}
%end

%hook BBMCoreAccess
-(void) markMessagesRead:(id)arg1 withConversationURI:(id)arg2 {
arg2 = NULL;
arg1 = NULL;
return %orig;
}
%end

%hook BBMCoreAccess
-(bool) isRateBBMEnabled {
return FALSE;
}
%end

%hook BBMCoreAccess
-(void) setRateBBMEnabled:(bool)arg1 {
arg1 = FALSE;
return %orig;
}
%end

%hook BBMCoreAccess
-(id) adsEnabled {
return NULL;
}
%end

%hook BBMCoreAccess
-(id) getAllAds {
return NULL;
}
%end

%hook BBMEphemeralMetaData
-(double) remainingTime {
return FALSE;
}
%end

%hook BBMPingLimitHelper
-(bool) isLimitReached {
return FALSE;
}
%end

%hook BBMSystemMessageCell
-(bool) isRead {
return TRUE;
}
%end

%hook BBMSystemMessageCell
-(void) setIsRead:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook BBMMessage
-(bool) canBeMarkedRead {
return TRUE;
}
%end

%hook BBMMessageCell
+(bool) automaticallyNotifiesObserversOfMessage {
return TRUE;
}
%end

%hook BBMGenEphemeralMetaData
-(bool) isScreenshot {
return TRUE;
}
%end

%hook BBMAppDelegate
-(void)applicationDidBecomeActive:(id)arg {
UIAlertView *credits = [[UIAlertView alloc] initWithTitle:@"Tweak Sukses Diterapkan"
                                                  message:@"Selamat Menikmati"
                                                 delegate:self
                                        cancelButtonTitle:@"CLOSE"
                                        otherButtonTitles:@"PXCEX", nil];
[credits show];
[credits release];
%orig;
}


-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {

NSString *credits = [alertView buttonTitleAtIndex:buttonIndex];

        if([credits isEqualToString:@"PXCEX"])
        {
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://instagram/pxcex"]];
        }
}
%end
