//
//  AKTextField.h
//  Giftbox
//
//  Created by Ken M. Haggerty on 12/31/13.
//  Copyright (c) 2013 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Public) //

#pragma mark - // IMPORTS (Public) //

#import <UIKit/UIKit.h>

#pragma mark - // PROTOCOLS //

#pragma mark - // DEFINITIONS (Public) //

@interface AKTextField : UITextField
@property (nonatomic) BOOL copyEnabled;
@property (nonatomic) BOOL cutEnabled;
@property (nonatomic) BOOL pasteEnabled;
@property (nonatomic) BOOL selectEnabled;
@property (nonatomic) BOOL selectAllEnabled;
@property (nonatomic) BOOL replaceEnabled;
@property (nonatomic) BOOL defineEnabled;
@property (nonatomic) BOOL textAlignmentEnabled;
@end