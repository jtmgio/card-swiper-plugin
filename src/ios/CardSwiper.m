/********* CardSwiper.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface CardSwiper : CDVPlugin {
  // Member variables go here.
}

- (void)test:(CDVInvokedUrlCommand*)command;

@end

@implementation CardSwiper

- (void)test:(CDVInvokedUrlCommand*)command
{
	CDVPluginResult*  pluginResult = nil;
	NSNumber *param1 = [ [command.arguments objectAtIndex:0] valueForKey:@"param1"];
	NSNumber *param2 = [ [command.arguments objectAtIndex:0] valueForKey:@"param2"];

	if(param1 >=0 && param2 >=0 ){
		NSString* total = @"adding";
		pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:total];
	}else{
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
	}
	[self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}



@end
