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

@implementation MSGraphServiceDriveFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSGraphServiceDrive class]]) {

		_operations = [[MSGraphServiceDriveOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSGraphServiceDrive *drive, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSGraphServiceDriveFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSGraphServiceDriveFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

- (MSGraphServiceDriveFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSGraphServiceDriveFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (void) readWithCallback:(void (^)(MSGraphServiceDrive *drive, MSOrcError *error))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSGraphServiceDriveItemCollectionFetcher *)items {

    return [[MSGraphServiceDriveItemCollectionFetcher alloc] initWithUrl:@"items" parent:self asClass:[MSGraphServiceDriveItem class]];
}

- (MSGraphServiceDriveItemFetcher *)itemsById:(NSString *)identifier {

    return [[[MSGraphServiceDriveItemCollectionFetcher alloc] initWithUrl:@"items" parent:self asClass:[MSGraphServiceDriveItem class]] getById:identifier];

}

- (MSGraphServiceDriveItemCollectionFetcher *)special {

    return [[MSGraphServiceDriveItemCollectionFetcher alloc] initWithUrl:@"special" parent:self asClass:[MSGraphServiceDriveItem class]];
}

- (MSGraphServiceDriveItemFetcher *)specialById:(NSString *)identifier {

    return [[[MSGraphServiceDriveItemCollectionFetcher alloc] initWithUrl:@"special" parent:self asClass:[MSGraphServiceDriveItem class]] getById:identifier];

}

- (MSGraphServiceDriveItemFetcher *)root {

	 return [[MSGraphServiceDriveItemFetcher alloc] initWithUrl:@"root" parent:self asClass:[MSGraphServiceDriveItem class]];
}

@end
