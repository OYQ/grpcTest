//
//  GrpcManager.h
//  grpcsdk
//
//  Created by QuanOuyang on 2022/7/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GrpcManager : NSObject
+ (instancetype)sharedManager;
- (void)start;

@end

NS_ASSUME_NONNULL_END
