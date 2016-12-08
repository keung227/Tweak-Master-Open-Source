#include <substrate.h>

%hook PremiumManager
-(unsigned long long) expireTime {
return 1;
}
%end

%hook PremiumModel
-(void) setServerTime:(unsigned long long)arg1 {
arg1 = 1;
return %orig;
}
%end

%hook SingerCluster
-(bool) isVip {
return TRUE;
}
%end

%hook SongInfo
-(bool) isVipSong {
return FALSE;
}
%end

%hook AllSongSubViewController
-(bool) allSongVip {
return TRUE;
}
%end

%hook PremiumModel
-(bool) isDTS {
return TRUE;
}
%end

%hook PremiumManager
-(bool) isDTS {
return TRUE;
}
%end

%hook DTSManager
-(bool) isDTSServiceExpire {
return FALSE;
}
%end

%hook PremiumModel
-(void) setIsDTS:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook PremiumModel
-(bool) isPremiumForCurrentUser {
return TRUE;
}
%end

%hook QQMusicAppDelegate

-(void)applicationDidBecomeActive:(id)arg {

UIAlertView *credits = [[UIAlertView alloc] initWithTitle:@"JOOX Music Premium"
					          message:@"VIP Music, Download Music, Streaming HIFI, DTS 2063, Enjoy Music!!!Hacked by pxcex"
                                                 delegate:self
  					cancelButtonTitle:@"Close"
  					otherButtonTitles:@"Visit Us", nil];
[credits show];
[credits release];
return %orig;
}

%new
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {

NSString *button = [alertView buttonTitleAtIndex:buttonIndex];

	if([button isEqualToString:@"Visit Us"])
	{
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://instagram/pxcex"]];
	}
}
%end
