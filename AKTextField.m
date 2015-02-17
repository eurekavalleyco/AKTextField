//
//  AKTextField.m
//  Giftbox
//
//  Created by Ken M. Haggerty on 12/31/13.
//  Copyright (c) 2013 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Private) //

#pragma mark - // IMPORTS (Private) //

#import "AKTextField.h"
#import "AKDebugger.h"

#pragma mark - // DEFINITIONS (Private) //

#define DEFAULT_COPY_ENABLED YES
#define DEFAULT_CUT_ENABLED YES
#define DEFAULT_PASTE_ENABLED YES
#define DEFAULT_SELECT_ENABLED YES
#define DEFAULT_SELECTALL_ENABLED YES
#define DEFAULT_REPLACE_ENABLED YES
#define DEFAULT_DEFINE_ENABLED YES
#define DEFAULT_TEXTALIGNMENT_ENABLED YES

@interface AKTextField ()
- (void)setup;
- (void)teardown;
@end

@implementation AKTextField

#pragma mark - // SETTERS AND GETTERS //

@synthesize copyEnabled = _copyEnabled;
@synthesize cutEnabled = _cutEnabled;
@synthesize pasteEnabled = _pasteEnabled;
@synthesize selectEnabled = _selectEnabled;
@synthesize selectAllEnabled = _selectAllEnabled;
@synthesize replaceEnabled = _replaceEnabled;
@synthesize defineEnabled = _defineEnabled;
@synthesize textAlignmentEnabled = _textAlignmentEnabled;

#pragma mark - // INITS AND LOADS //

- (id)initWithFrame:(CGRect)frame
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
    
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setup];
    }
    else if ([AKDebugger printForMethod:METHOD_NAME logType:AKLogTypeWarning methodType:AKMethodTypeSetup]) NSLog(@"[WARNING] Could not initialize self for %s", __PRETTY_FUNCTION__);
    return self;
}

- (void)awakeFromNib
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
    
    [self setup];
}

- (void)dealloc
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
    
    [self teardown];
}

#pragma mark - // PUBLIC METHODS //

#pragma mark - // DELEGATED METHODS //

#pragma mark - // OVERWRITTEN METHODS //

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeUnspecified customCategory:nil message:nil];
    
    BOOL canPerformAction = [super canPerformAction:action withSender:sender];
    if (canPerformAction)
    {
        if (action == @selector(copy:))
        {
            canPerformAction = self.copyEnabled;
        }
        if (action == @selector(cut:))
        {
            canPerformAction = self.cutEnabled;
        }
        if (action == @selector(paste:))
        {
            canPerformAction = self.pasteEnabled;
        }
        if (action == @selector(select:))
        {
            canPerformAction = self.selectEnabled;
        }
        if (action == @selector(selectAll:))
        {
            canPerformAction = self.selectAllEnabled;
        }
        if (action == @selector(_promptForReplace:))
        {
            canPerformAction = self.replaceEnabled;
        }
        if (action == @selector(_define:))
        {
            canPerformAction = self.defineEnabled;
        }
        if ((action == @selector(makeTextWritingDirectionLeftToRight:)) || (action == @selector(makeTextWritingDirectionRightToLeft:)))
        {
            canPerformAction = self.textAlignmentEnabled;
        }
    }
    return canPerformAction;
}

#pragma mark - // PRIVATE METHODS //

- (void)setup
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
    
    [self setCopyEnabled:DEFAULT_COPY_ENABLED];
    [self setCutEnabled:DEFAULT_CUT_ENABLED];
    [self setPasteEnabled:DEFAULT_PASTE_ENABLED];
    [self setSelectEnabled:DEFAULT_SELECT_ENABLED];
    [self setSelectAllEnabled:DEFAULT_SELECTALL_ENABLED];
    [self setReplaceEnabled:DEFAULT_REPLACE_ENABLED];
    [self setDefineEnabled:DEFAULT_DEFINE_ENABLED];
    [self setTextAlignmentEnabled:DEFAULT_TEXTALIGNMENT_ENABLED];
}

- (void)teardown
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
}

@end