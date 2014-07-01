//
//  CASUnitToken+NSCoding.m
//  ClassyLexer
//
//  Created by Imre Mihaly on 26/06/14.
//  Copyright (c) 2014 Ustream. All rights reserved.
//

#import "CASUnitToken+NSCoding.h"
#import "CASToken+NSCoding.h"

@implementation CASUnitToken (NSCoding)

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
	self = [super initWithCoder:aDecoder];
	if(self) {
		self.suffix = [aDecoder decodeObject];
		self.rawValue = [aDecoder decodeObject];
	}
	return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
	[super encodeWithCoder:aCoder];
	[aCoder encodeObject:self.suffix];
	[aCoder encodeObject:self.rawValue];
}

@end
