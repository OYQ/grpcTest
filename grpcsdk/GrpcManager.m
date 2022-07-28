//
//  GrpcManager.m
//  grpcsdk
//
//  Created by QuanOuyang on 2022/7/28.
//

#import "GrpcManager.h"
#import "Test.pbrpc.h"

static NSString *const kHostAddress = @"localhost:10086";

@implementation GrpcManager

+ (instancetype)sharedManager {
    static GrpcManager *manager;
    static dispatch_once_t sharedOnceToken;
    dispatch_once(&sharedOnceToken, ^{
        manager = [[self alloc] init];
    });
    
    return manager;
}

- (void)start {
    [GRPCCall useInsecureConnectionsForHost:kHostAddress];

    TESTTestService *service = [[TESTTestService alloc] initWithHost:kHostAddress];
    TESTTestRequest *req = [[TESTTestRequest alloc] init];
    [service pingWithRequest:req
                     handler:^(TESTTestResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"grpc return error %@", error);
        NSLog(@"grpc response %@", response);
    }];
}

@end
