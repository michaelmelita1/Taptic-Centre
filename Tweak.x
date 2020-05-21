#import <UIKit/UIKit.h>
%hook SBControlCenterController
- (void)_willPresent {
	UIImpactFeedbackGenerator* gen = [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleRigid];
	[gen prepare];
	[gen impactOccurred];
}
%end
