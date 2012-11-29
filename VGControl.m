//
//  VGControl.m
//  PokeTypes
//
//  Created by Ricky Ayoub on 4/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "VGControl.h"


@implementation VGControl
- (IBAction)doType:(id)pId;
{
	//NSLog(@"1:  %i",attackvariable1);
} // end doText

- (IBAction)doType2:(id)pId;
{
	//NSLog(@"2:  %i",defendvariable1);
} // end doText2

- (IBAction)doType3:(id)pId;
{
	//NSLog(@"3:  %i",defendvariable2);
} // end doText2

- (IBAction)doType4:(id)pId;
{	
	NSString *bundlePath = [[NSBundle mainBundle] resourcePath];
	 
	 NSTask *task2;
	 task2 = [[NSTask alloc] init];
	 [task2 setLaunchPath: @"/usr/bin/perl"];
	 
	 NSArray *arguments2;
	 NSString *perlPath;
	 
	 NSInteger attackvariable1	= [attack1 indexOfSelectedItem];
     NSInteger defendvariable1	= [defend1 indexOfSelectedItem];
	 NSInteger defendvariable2	= [defend2 indexOfSelectedItem];
	
	NSString *a=[NSString stringWithFormat:@"%i",attackvariable1];
	NSString *d1=[NSString stringWithFormat:@"%i",defendvariable1];
	NSString *d2=[NSString stringWithFormat:@"%i",defendvariable2];


	 perlPath = [bundlePath stringByAppendingString:@"/poketypes.pl"];
	 arguments2 = [NSArray arrayWithObjects: perlPath,a,d1,d2,nil];
	 [task2 setArguments: arguments2];
	 
	 NSPipe *pipe;
	 pipe = [NSPipe pipe];
	 [task2 setStandardOutput: pipe];
	 
	 NSFileHandle *file;
	 file = [pipe fileHandleForReading];
	 
	 [task2 launch];
	 
	 NSData *data;
	 data = [file readDataToEndOfFile];
	 
	 NSString *string;
	 string = [[NSString alloc] initWithData: data encoding: NSUTF8StringEncoding];
	 NSLog (@"returned:\n%@", string);
	 
	 [effective setStringValue:(NSString *)string];
	 
	 [string release];
	 [task2 release];
} // end doText2



@end