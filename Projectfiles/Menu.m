/*
 * Kobold2D™ --- http://www.kobold2d.org
 *
 * Copyright (c) 2010-2011 Steffen Itterheim.
 * Released under MIT License in Germany (LICENSE-Kobold2D.txt).
 --------------------------------------------------------------------------------------------------
 */

#import "Menu.h"

@interface Menu (PrivateMethods)
@end

@implementation Menu

-(id) init
{
	if ((self = [super init]))
	{
        // Background music
		[[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"menu2.m4a"];
		
		
        // Sprite with background, and its position (at the center of the screen)
        CCSprite* background = [CCSprite spriteWithFile:@"background3.png"];
        background.anchorPoint = ccp(0,0);
        [self addChild:background];
		
		// Fade-in animation for background
		CCFadeIn* animatingBackground = [CCFadeIn actionWithDuration:2];
		animatingBackground.duration = 2;
		[background runAction:animatingBackground];
		
		
		/*
		//Background particles
		CCParticleExplosion* particulasBackground = [CCParticleExplosion particleWithTotalParticles:2000];
		particulasBackground.speed = 150.0f;
		particulasBackground.duration = -1;
		particulasBackground.emissionRate = 700;
		particulasBackground.sourcePosition = ccp(0,0);
		particulasBackground.startColor = ccc4f(0.1f, 0.7f, 0.3f, 1.0f);
		[self addChild:particulasBackground];
		 */
		
		CCParticleGalaxy* particleGalaxy = [CCParticleGalaxy particleWithTotalParticles:2000];
		particleGalaxy.duration = -1;
		particleGalaxy.emissionRate = 700;
		particleGalaxy.position = ccp(0,0);
		
		[self addChild:particleGalaxy];
		
		// Grid, above background
        CCSprite* grid = [CCSprite spriteWithFile:@"grid.png"];
		grid.opacity = 1;
        grid.anchorPoint = ccp(0,0);
        [self addChild:grid];
		
		
		CCWaves3D* gridWaves = [CCWaves3D actionWithDuration:40
														size:ccg(20,20)
													   waves:15
												   amplitude:20.0f];
		
		
		
        // Repeat the "gridWaves" instance forever, and apply it to the background sprite
        CCRepeatForever* repeatGridWaves = [CCRepeatForever actionWithAction:gridWaves];;
        [grid runAction:repeatGridWaves];
		
		
		
		// Fade-in animation for the grid
		CCFadeIn* animatingGrid = [CCFadeIn actionWithDuration:2];
		[grid runAction:animatingGrid];
				
		
        
		// "Singularity Wars" title, with its attributes
		CCLabelTTF* title = [CCLabelTTF labelWithString:@"Singularity Wars" fontName:@"technoid" fontSize:80];
		title.anchorPoint = ccp(0,0);
		title.position = ccp(70,650);
		title.color = ccWHITE;
		[self addChild:title];
		
		
		
		// Fade-in animation for title
		CCFadeIn* animatingTitle = [CCFadeIn actionWithDuration:3];
		[title runAction:animatingTitle];
		
		
		
		// Shaky effect for the logo
		//CCShaky3D* shakingTitle = [CCShaky3D actionWithDuration:1 size:ccg(1,1) range:1 shakeZ:NO];
		//CCRepeatForever* repeatShakingTitle = [CCRepeatForever actionWithAction:shakingTitle];
		//[title runAction:repeatShakingTitle];
		
		
		
		// "Singularity Wars" subtitle, "ABGWR"
		CCLabelTTF* subTitle = [CCLabelTTF labelWithString:@"-ABGWR-" fontName:@"technoid" fontSize:45];
		subTitle.anchorPoint = ccp(0,0);
		subTitle.position = ccp(400,600);
		subTitle.color = ccWHITE;
		[self addChild:subTitle];
		
		
		
		// Fade-in animation for subtitle
		CCFadeIn* animatingSubTitle = [CCFadeIn actionWithDuration:3];
		[subTitle runAction:animatingSubTitle];
				
		
	}
	
	return self;
}

@end