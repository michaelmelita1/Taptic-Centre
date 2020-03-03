#import <UIKit/UIKit.h>
%hook SBControlCenterController
- (void)_willPresent {
	[gen prepare];
	UIImpactFeedbackGenerator* gen = [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleRigid];
	[gen impactOccurred];
}
%end
