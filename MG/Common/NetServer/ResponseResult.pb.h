// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import <ProtocolBuffers/ProtocolBuffers.h>

// @@protoc_insertion_point(imports)

@class ResponseResult;
@class ResponseResultBuilder;



@interface ResponseResultRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

#define ResponseResult_Code @"code"
#define ResponseResult_InternalCode @"internalCode"
#define ResponseResult_Message @"message"
#define ResponseResult_DebugMessage @"debugMessage"
@interface ResponseResult : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasCode_:1;
  BOOL hasInternalCode_:1;
  BOOL hasMessage_:1;
  BOOL hasDebugMessage_:1;
  SInt32 code;
  SInt32 internalCode;
  NSString* message;
  NSString* debugMessage;
}
- (BOOL) hasCode;
- (BOOL) hasInternalCode;
- (BOOL) hasMessage;
- (BOOL) hasDebugMessage;
@property (readonly) SInt32 code;
@property (readonly) SInt32 internalCode;
@property (readonly, strong) NSString* message;
@property (readonly, strong) NSString* debugMessage;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (ResponseResultBuilder*) builder;
+ (ResponseResultBuilder*) builder;
+ (ResponseResultBuilder*) builderWithPrototype:(ResponseResult*) prototype;
- (ResponseResultBuilder*) toBuilder;

+ (ResponseResult*) parseFromData:(NSData*) data;
+ (ResponseResult*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (ResponseResult*) parseFromInputStream:(NSInputStream*) input;
+ (ResponseResult*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (ResponseResult*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (ResponseResult*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface ResponseResultBuilder : PBGeneratedMessageBuilder {
@private
  ResponseResult* resultResponseResult;
}

- (ResponseResult*) defaultInstance;

- (ResponseResultBuilder*) clear;
- (ResponseResultBuilder*) clone;

- (ResponseResult*) build;
- (ResponseResult*) buildPartial;

- (ResponseResultBuilder*) mergeFrom:(ResponseResult*) other;
- (ResponseResultBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (ResponseResultBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasCode;
- (SInt32) code;
- (ResponseResultBuilder*) setCode:(SInt32) value;
- (ResponseResultBuilder*) clearCode;

- (BOOL) hasInternalCode;
- (SInt32) internalCode;
- (ResponseResultBuilder*) setInternalCode:(SInt32) value;
- (ResponseResultBuilder*) clearInternalCode;

- (BOOL) hasMessage;
- (NSString*) message;
- (ResponseResultBuilder*) setMessage:(NSString*) value;
- (ResponseResultBuilder*) clearMessage;

- (BOOL) hasDebugMessage;
- (NSString*) debugMessage;
- (ResponseResultBuilder*) setDebugMessage:(NSString*) value;
- (ResponseResultBuilder*) clearDebugMessage;
@end


// @@protoc_insertion_point(global_scope)
