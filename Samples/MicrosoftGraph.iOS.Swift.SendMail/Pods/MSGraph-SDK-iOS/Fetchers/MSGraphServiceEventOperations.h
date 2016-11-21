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


#ifndef MSGRAPHSERVICEEVENTOPERATIONS_H
#define MSGRAPHSERVICEEVENTOPERATIONS_H
				  		


#import "MSGraphServiceModels.h"
#import "api/api.h"
#import "core/core.h"
#import "MSGraphServiceOutlookItemOperations.h"


/** MSGraphServiceEventOperations
 *
 */
@interface MSGraphServiceEventOperations : MSGraphServiceOutlookItemOperations

- (instancetype)initOperationWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)acceptWithComment:(NSString *)comment sendResponse:(bool)sendResponse callback:(void (^)(int, MSOrcError*))callback ;
- (void)acceptRawWithComment:(NSString *)comment sendResponse:(NSString *)sendResponse callback:(void (^)(NSString *, MSOrcError*))callback ;
- (void)declineWithComment:(NSString *)comment sendResponse:(bool)sendResponse callback:(void (^)(int, MSOrcError*))callback ;
- (void)declineRawWithComment:(NSString *)comment sendResponse:(NSString *)sendResponse callback:(void (^)(NSString *, MSOrcError*))callback ;
- (void)tentativelyAcceptWithComment:(NSString *)comment sendResponse:(bool)sendResponse callback:(void (^)(int, MSOrcError*))callback ;
- (void)tentativelyAcceptRawWithComment:(NSString *)comment sendResponse:(NSString *)sendResponse callback:(void (^)(NSString *, MSOrcError*))callback ;
- (void)snoozeReminderWithNewReminderTime:(MSGraphServiceDateTimeTimeZone *)newReminderTime callback:(void (^)(int, MSOrcError*))callback ;
- (void)snoozeReminderRawWithNewReminderTime:(NSString *)newReminderTime callback:(void (^)(NSString *, MSOrcError*))callback ;
- (void)dismissReminderWithCallback:(void (^)(int, MSOrcError*))callback ;
- (void)dismissReminderRawWithCallback:(void (^)(NSString *, MSOrcError*))callback ;

@end

#endif
