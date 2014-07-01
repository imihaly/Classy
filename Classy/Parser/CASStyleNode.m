//
//  CASStyleGroup.m
//  Classy
//
//  Created by Jonas Budelmann on 25/09/13.
//  Copyright (c) 2013 cloudling. All rights reserved.
//

#import "CASStyleNode.h"
#import "CASStyler.h"

@implementation CASStyleNode {
    NSMutableArray *_styleProperties;
}

@synthesize styleProperties = _styleProperties;

- (id)init {
    self = [super init];
    if (!self) return nil;

    _styleProperties = NSMutableArray.new;

    return self;
}

- (void)addStyleProperty:(CASStyleProperty *)styleProperty {
    [_styleProperties addObject:styleProperty];
}

- (NSArray *)invocations {
	if(_invocations) return _invocations;

	NSMutableArray *invocations = NSMutableArray.new;
	for (CASStyleProperty *styleProperty in self.styleProperties) {
		// TODO type checking and throw errors
		NSArray *propertyInvocations = [self.styler invocationsForClass:self.styleSelector.objectClass styleProperty:styleProperty keyPath:nil];
		[invocations addObjectsFromArray:propertyInvocations];
	}
	_invocations = invocations;

	return _invocations;
}

- (NSString *)description {
	return [super.description stringByAppendingFormat:@" sell = %@", self.styleSelector];
}

@end
