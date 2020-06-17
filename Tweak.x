#import <UIKit/UIKit.h>
%hook SBControlCenterController
- (void)_willPresent {
	%orig;
	UIImpactFeedbackGenerator* gen = [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleMedium];
	[gen prepare];
	[gen impactOccurred];
}
%end
