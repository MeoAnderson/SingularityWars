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

#import "SingularityWarsMenu.h"

@interface SingularityWarsMenu (PrivateMethods)
@end

@implementation SingularityWarsMenu

-(id) init
{
	if ((self = [super init]))
	{
        // Background music
		[[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"level.mp3"];//play background music

		
        // Sprite with background, and its position (at the center of the screen)
        
        CCSprite* background = [CCSprite spriteWithFile:@"Background.png"];
        background.anchorPoint = ccp(0,0);
        [self addChild:background];
        
        // Grid (same size as the background), with a ripple effect
       
        //CCRipple3D* backgroundWaves = [CCRipple3D actionWithDuration:10 size:background.size position:ccp(0,0) radius:10.0f waves:5 amplitude:10.0f];

        // Repeat the "backgroundWaves" instance forever
        //CCRepeatForever* repeatWaves;
        //backgroundWaves = [CCRepeatForever actionWithAction:repeatWaves];
        //[background runAction:backgroundWaves];
        
        //[background runAction: [CCRepeatForever actionWithAction: backgroundWaves]];
        
        
		// "Singularity Wars" title, with its attributes
		CCLabelTTF* title = [CCLabelTTF labelWithString:@"Singularity Wars" fontName:@"technoid" fontSize:70];
		title.position = [CCDirector sharedDirector].screenCenter;
		//title.position = ccp(0.0f, 0.0f);
		title.color = ccWHITE;
		[self addChild:title];
		
		// "Singularity Wars" subtitle, "ABGWR" 
		CCLabelTTF* subTitle = [CCLabelTTF labelWithString:@"-ABGWR-" fontName:@"technoid" fontSize:30];
		subTitle.position = [CCDirector sharedDirector].screenCenter;
		subTitle.color = ccWHITE;
		[self addChild:subTitle];
		
        
	}

	return self;
}

@end
