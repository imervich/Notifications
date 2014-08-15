//
//  ColorView.m
//  Notifications
//
//  Created by Iván Mervich on 8/14/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ColorView.h"

@implementation ColorView

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
		[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeColor:) name:@"ChangeColorNotification" object:nil];
    }
    return self;
}

- (void)changeColor:(NSNotification *)notification
{
	NSString *colorName = [NSString stringWithFormat:@"%@Color", notification.object];
	self.backgroundColor = [[UIColor class] performSelector:NSSelectorFromString(colorName)];
	NSLog(@"Change Color %@", notification.object);
}

@end
