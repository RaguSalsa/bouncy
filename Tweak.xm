@interface SBFSpringAnimationFactory
-(id)_initWithMass:(CGFloat)mass stiffness:(CGFloat)stiffness damping:(CGFloat)damping epsilon:(CGFloat)epsilon;
@end

%hook SBFSpringAnimationFactory
-(id)_initWithMass:(CGFloat)mass stiffness:(CGFloat)stiffness damping:(CGFloat)damping epsilon:(CGFloat)epsilon {
	return %orig(mass,stiffness,75.0f,epsilon);
}
%end
