/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Corporation. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/


#import "MSGraphServiceFetchers.h"
#import "core/core.h"

@implementation MSGraphServiceOutlookItemFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSGraphServiceOutlookItem class]]) {

		_operations = [[MSGraphServiceOutlookItemOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSGraphServiceOutlookItem *outlookItem, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSGraphServiceOutlookItemFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSGraphServiceOutlookItemFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

- (MSGraphServiceOutlookItemFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSGraphServiceOutlookItemFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (void) readWithCallback:(void (^)(MSGraphServiceOutlookItem *outlookItem, MSOrcError *error))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSGraphServiceEventFetcher *)asEvent {

	return [[MSGraphServiceEventFetcher alloc] initWithUrl:@"" parent:self asClass:[MSGraphServiceEvent class]];
}

- (MSGraphServiceMessageFetcher *)asMessage {

	return [[MSGraphServiceMessageFetcher alloc] initWithUrl:@"" parent:self asClass:[MSGraphServiceMessage class]];
}

- (MSGraphServiceContactFetcher *)asContact {

	return [[MSGraphServiceContactFetcher alloc] initWithUrl:@"" parent:self asClass:[MSGraphServiceContact class]];
}

- (MSGraphServicePostFetcher *)asPost {

	return [[MSGraphServicePostFetcher alloc] initWithUrl:@"" parent:self asClass:[MSGraphServicePost class]];
}

@end
