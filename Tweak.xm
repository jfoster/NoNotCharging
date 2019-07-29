%hook SBUIController
- (BOOL)isConnectedToChargeIncapablePowerSource {
	return NO;
}
%end