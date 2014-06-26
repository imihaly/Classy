//
//  DummyColor.m
//  ClassyLexer
//
//  Created by Imre Mihaly on 25/06/14.
//  Copyright (c) 2014 Ustream. All rights reserved.
//

#import "DummyColor.h"

@implementation DummyColor

- (void)encodeWithCoder:(NSCoder *)aCoder {
	CGFloat red, green, blue, alpha;
	[self getRed:&red green:&green blue:&blue alpha:&alpha];
	
	[aCoder encodeFloat:red forKey:@"r"];
	[aCoder encodeFloat:green forKey:@"g"];
	[aCoder encodeFloat:blue forKey:@"b"];
	[aCoder encodeFloat:alpha forKey:@"a"];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
	CGFloat red = [aDecoder decodeFloatForKey:@"r"];
	CGFloat green = [aDecoder decodeFloatForKey:@"g"];
	CGFloat blue = [aDecoder decodeFloatForKey:@"b"];
	CGFloat alpha = [aDecoder decodeFloatForKey:@"a"];

	return [self initWithRed:red green:green blue:blue alpha:alpha];
}


@end
