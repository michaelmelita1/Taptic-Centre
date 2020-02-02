#import <UIKit/UIKit.h>
NSString *tapticLevel = @"0";
UIImpactFeedbackGenerator *gen;
void prepareCustomFeedback() {
		[gen prepare];
		gen = [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleRigid];
		[gen impactOccurred];
}
void triggerCustomFeedback() {
		prepareCustomFeedback();
}
%hook SBControlCenterController
- (void)_willPresent {
	%orig;
		triggerCustomFeedback();
}
%end
