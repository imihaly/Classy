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
		uint8_t t;
		[aDecoder decodeValueOfObjCType:@encode(unsigned char) at:&t];
		self.type = t;
		self.value = [aDecoder decodeObject];
		
//		switch(self.type) {
//			case CASTokenTypeUnknown:
//			case CASTokenTypeIndent:
//			case CASTokenTypeOutdent:
//			case CASTokenTypeEOS:
//			case CASTokenTypeNilLiteral:
//				// no value
//				break;
//			case CASTokenTypeSemiColon:
//				self.value = @";";
//				break;
//			case CASTokenTypeCarat:
//				self.value = @"^";
//				break;
//			case CASTokenTypeNewline:
//				self.value = @"\n";
//				break;
//			case CASTokenTypeLeftSquareBrace:
//				self.value = @"[";
//				break;
//			case CASTokenTypeRightSquareBrace:
//				self.value = @"]";
//				break;
//			case CASTokenTypeLeftCurlyBrace:
//				self.value = @"{";
//				break;
//			case CASTokenTypeRightCurlyBrace:
//				self.value = @"}";
//				break;
//			case CASTokenTypeLeftRoundBrace:
//				self.value = @"(";
//				break;
//			case CASTokenTypeRightRoundBrace:
//				self.value = @")";
//				break;
//			case CASTokenTypeSpace:
//				self.value = @" ";
//				break;
//			default:
//				self.value = [aDecoder decodeObject];
//				break;
//				
//		}
				
	}
	return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {	
	//[aCoder encodeInteger:self.type forKey:@"t"];
	uint8_t t = self.type;
	[aCoder encodeValueOfObjCType:@encode(unsigned char) at:&t];
	[aCoder encodeObject:self.value];
	
//	switch(self.type) {
//		case CASTokenTypeUnknown:
//		case CASTokenTypeIndent:
//		case CASTokenTypeOutdent:
//		case CASTokenTypeEOS:
//		case CASTokenTypeNilLiteral:
//			// no value
//			break;
//		case CASTokenTypeSemiColon:
//		case CASTokenTypeCarat:
//		case CASTokenTypeNewline:
//		case CASTokenTypeLeftSquareBrace:
//		case CASTokenTypeRightSquareBrace:
//		case CASTokenTypeLeftCurlyBrace:
//		case CASTokenTypeRightCurlyBrace:
//		case CASTokenTypeLeftRoundBrace:
//		case CASTokenTypeRightRoundBrace:
//		case CASTokenTypeSpace:
//			break;
//		default:
//			[aCoder encodeObject:self.value];
//			break;
//			
//	}
}

@end
