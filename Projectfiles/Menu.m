/*
 * Kobold2D™ --- http://www.kobold2d.org
 *
 * Copyright (c) 2010-2011 Steffen Itterheim.
 * Released under MIT License in Germany (LICENSE-Kobold2D.txt).
 --------------------------------------------------------------------------------------------------
 Master in Computer Engineering
 
 Mobile Applications Development
 ISCTE-IUL 2013/2014
 
 Assistant Professor Carlos Serrão
 
 
 "Singularity Wars - ABGWR"
 Project by Vasco Patrício
 
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
        CCSprite* background = [CCSprite spriteWithFile:@"teste.png"];
        background.anchorPoint = ccp(0,0);
        [self addChild:background];
		
		/*
		// Grid, above background
        CCSprite* grid = [CCSprite spriteWithFile:@"grid.png"];
        grid.anchorPoint = ccp(0,0);
        [self addChild:grid];
		*/
		
		// Fade-in animation for background
		CCFadeIn* animatingBackground = [CCFadeIn actionWithDuration:2];
		animatingBackground.duration = 2;
		[background runAction:animatingBackground];
		
		
		//Background particles
		CCParticleExplosion* particulasBackground = [CCParticleExplosion particleWithTotalParticles:2000];
		particulasBackground.speed = 150.0f;
		particulasBackground.duration = -1;
		particulasBackground.emissionRate = 700;
		particulasBackground.sourcePosition = ccp(0,0);
		particulasBackground.startColor = ccc4f(0.1f, 0.7f, 0.3f, 1.0f);
		[self addChild:particulasBackground];
		
		
		CCWaves3D* backgroundWaves = [CCWaves3D actionWithDuration:40
															  size:ccg(20,20)
															 waves:15
														 amplitude:20.0f];

        // Repeat the "backgroundWaves" instance forever, and apply it to the background sprite
        CCRepeatForever* repeatWaves = [CCRepeatForever actionWithAction:backgroundWaves];;
        [background runAction:repeatWaves];
        
        
		// "Singularity Wars" title, with its attributes
		CCLabelTTF* title = [CCLabelTTF labelWithString:@"Singularity Wars" fontName:@"technoid" fontSize:80];
		title.anchorPoint = ccp(0,0);
		title.position = ccp(70,650);
		title.color = ccWHITE;
		[self addChild:title];
		
		
		// Fade-in animation for title
		CCFadeIn* animatingTitle = [CCFadeIn actionWithDuration:3];
		animatingTitle.duration = 3;
		[title runAction:animatingTitle];
		
		
		// "Singularity Wars" subtitle, "ABGWR"
		CCLabelTTF* subTitle = [CCLabelTTF labelWithString:@"-ABGWR-" fontName:@"technoid" fontSize:45];
		subTitle.anchorPoint = ccp(0,0);
		subTitle.position = ccp(400,600);
		subTitle.color = ccWHITE;
		[self addChild:subTitle];
		
		
		// Fade-in animation for subtitle
		CCFadeIn* animatingSubTitle = [CCFadeIn actionWithDuration:3];
		animatingSubTitle.duration = 3;
		[subTitle runAction:animatingSubTitle];
		
	}
	
	return self;
}

@end