//
//  VGControl.h
//  PokeTypes
//
//  Created by Ricky Ayoub on 4/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface  VGControl : NSControl {
	IBOutlet NSPopUpButton *attack1;
	IBOutlet NSPopUpButton *defend1;
	IBOutlet NSPopUpButton *defend2;
	IBOutlet NSTextField *effective;

}
//- (IBAction)doType:(id)pId;
//- (IBAction)doType2:(id)pId;
//- (IBAction)doType3:(id)pId;
- (IBAction)doType4:(id)pId;
- (IBAction)getMoreOnline:(id)pId;


@end
