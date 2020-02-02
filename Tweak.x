#import "CRose.h"
void prepareCustomFeedback() {
	switch(customFeedbackValue) {
	case 1:
		[gen prepare];
		gen = [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleRigid];
		[gen impactOccurred];
		break;
	}

}

void triggerCustomFeedback() {
		prepareCustomFeedback();
}

%hook SBControlCenterController
- (void)_willPresent {
	%orig;
		customFeedbackValue = 1;
		triggerCustomFeedback();

}
%end
