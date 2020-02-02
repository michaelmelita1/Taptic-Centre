#import "CRose.h"
void prepareCustomFeedback() {
		[gen prepare];
		gen = [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleRigid];
		[gen impactOccurred];
	}

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
