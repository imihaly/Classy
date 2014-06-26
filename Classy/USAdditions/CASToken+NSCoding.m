//
//  CASToken+NSCoding.m
//  ClassyLexer
//
//  Created by Imre Mihaly on 25/06/14.
//  Copyright (c) 2014 Ustream. All rights reserved.
//

#import "CASToken+NSCoding.h"

@implementation CASToken (NSCoding)

@dynamic type;

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
	self = [self init];
	if(self) {
		self.type = [aDecoder decodeIntegerForKey:@"t"];
		self.value = [aDecoder decodeObjectForKey:@"v"];
	}
	return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {	
	[aCoder encodeInteger:self.type forKey:@"t"];
	[aCoder encodeObject:self.value forKey:@"v"];
}

@end
