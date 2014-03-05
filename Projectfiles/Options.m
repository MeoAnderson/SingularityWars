//
//  Options.m
//  SingularityWars
//
//  Created by Vasco Patrício on 04/03/14.
//
//

#import "Options.h"

@implementation Options

- (id)init
{
    self = [super init];
    if (self) {
        
        
        CCLabelTTF* antialiasing = [CCLabelTTF labelWithString:@"Anti-aliasing" fontName:@"technoid" fontSize:45];
        antialiasing.position = ccp(0,0);
        
        
        
    }
    return self;
}

@end
