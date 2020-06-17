#import <UIKit/UIKit.h>
%hook SBControlCenterController
- (void)_willPresent {
	UIImpactFeedbackGenerator* gen = [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleMedium];
	[gen prepare];
	[gen impactOccurred];
}
%end
