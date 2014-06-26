//
//  CASToken+NSCoding.h
//  ClassyLexer
//
//  Created by Imre Mihaly on 25/06/14.
//  Copyright (c) 2014 Ustream. All rights reserved.
//

#import "CASToken.h"

@interface CASToken (NSCoding)<NSCoding>

@property (nonatomic, assign, readwrite) CASTokenType type;

@end
