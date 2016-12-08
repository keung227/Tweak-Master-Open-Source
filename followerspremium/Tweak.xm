#include <substrate.h>

%hook TCMainViewController
-(void) setIsAnimatingBlockedRow:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook TCSharedDataSuper
-(bool) isBlockedPackAvailable {
return TRUE;
}
%end

%hook TCMainViewController
-(bool) isAnimatingBlockedRow {
return TRUE;
}
%end

%hook TCMainViewController
-(bool) shouldShowBlockedList {
return TRUE;
}
%end

%hook TCSharedDataSuper
-(bool) isTwitterPackAvailable {
return TRUE;
}
%end

%hook TCSharedDataSuper
-(bool) isEngagementPackAvailable {
return TRUE;
}
%end

%hook TCSharedDataSuper
-(bool) isInsightsPackAvailable {
return TRUE;
}
%end

%hook TCSharedDataSuper
-(bool) isDCLPackAvailable {
return TRUE;
}
%end

%hook AFHTTPBodyPart
-(bool) hasBytesAvailable {
return TRUE;
}
%end

%hook AFMultipartBodyStream
-(bool) hasBytesAvailable {
return TRUE;
}
%end

%hook CLSNetworkClient
-(bool) NSURLSessionAvailable {
return TRUE;
}
%end

%hook CLSAnalyticsMetadataController
+(bool) hostJailbroken {
return FALSE;
}
%end
