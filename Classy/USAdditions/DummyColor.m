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
	
	uint8_t r = 255 * red;
	uint8_t g = 255 * green;
	uint8_t b = 255 * blue;
	uint8_t a = 255 * alpha;
	
	uint32_t components = (r << 24) | (g << 16) | (b << 8) | (a << 0);
	[aCoder encodeValueOfObjCType:@encode(uint32_t) at:&components];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
	uint32_t components;
	[aDecoder decodeValueOfObjCType:@encode(uint32_t) at:&components];
	
	uint8_t r = (components >> 24) & 0xff;
	uint8_t g = (components >> 16) & 0xff;
	uint8_t b = (components >>  8) & 0xff;
	uint8_t a = (components >>  0) & 0xff;

	CGFloat red = r / 255.0;
	CGFloat green = g / 255.0;
	CGFloat blue = b / 255.0;
	CGFloat alpha = a / 255.0;
	
	return [self initWithRed:red green:green blue:blue alpha:alpha];
}


@end
