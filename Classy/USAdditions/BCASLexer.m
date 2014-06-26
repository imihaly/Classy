//
//  BCASLexer.m
//  ClassyLexer
//
//  Created by Imre Mihaly on 25/06/14.
//  Copyright (c) 2014 Ustream. All rights reserved.
//

#import "BCASLexer.h"
#import "UIColor+CASAdditions.h"

@interface BCASLexer()

@property(nonatomic, strong) NSArray *tokens;
@property(nonatomic,assign) NSInteger cursorPosition;

@end

@implementation BCASLexer

- (instancetype)initWithData:(NSData *)data {
	self = [super init];
	if(self) {
		self.tokens = [NSKeyedUnarchiver unarchiveObjectWithData:data];
		self.cursorPosition = 0;
	}
	return self;
}

- (CASToken *)peekToken {
	return self.tokens[self.cursorPosition];
}

- (CASToken *)nextToken {
	CASToken *token = self.peekToken;
	if(self.cursorPosition < self.tokens.count - 1) self.cursorPosition++;
	return token;
}

- (CASToken *)lookaheadByCount:(NSUInteger)count {
	NSInteger pos = MIN(self.cursorPosition + count - 1, self.tokens.count - 1);
	return self.tokens[pos];
}

@end
