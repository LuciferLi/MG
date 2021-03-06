// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import <ProtocolBuffers/ProtocolBuffers.h>

#import "BasicDataModel.pb.h"
// @@protoc_insertion_point(imports)

@class AreaModel;
@class AreaModelBuilder;
@class BasicDataModel;
@class BasicDataModelBuilder;
@class BasicDataModelResult;
@class BasicDataModelResultBuilder;
@class CityModel;
@class CityModelBuilder;
@class DisclaimerModel;
@class DisclaimerModelBuilder;
@class FinancingStageModel;
@class FinancingStageModelBuilder;
@class IndustryModel;
@class IndustryModelBuilder;
@class KeyValuePairStringBool;
@class KeyValuePairStringBoolBuilder;
@class PositionModel;
@class PositionModelBuilder;
@class ProductStageModel;
@class ProductStageModelBuilder;
@class ProvinceModel;
@class ProvinceModelBuilder;
@class ServiceScopeModel;
@class ServiceScopeModelBuilder;



@interface BasicDataModelResultRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

#define BasicDataModelResult_Code @"code"
#define BasicDataModelResult_InternalCode @"internalCode"
#define BasicDataModelResult_Message @"message"
#define BasicDataModelResult_DebugMessage @"debugMessage"
#define BasicDataModelResult_Data @"data"
@interface BasicDataModelResult : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasCode_:1;
  BOOL hasInternalCode_:1;
  BOOL hasMessage_:1;
  BOOL hasDebugMessage_:1;
  BOOL hasData_:1;
  SInt32 code;
  SInt32 internalCode;
  NSString* message;
  NSString* debugMessage;
  BasicDataModel* data;
}
- (BOOL) hasCode;
- (BOOL) hasInternalCode;
- (BOOL) hasMessage;
- (BOOL) hasDebugMessage;
- (BOOL) hasData;
@property (readonly) SInt32 code;
@property (readonly) SInt32 internalCode;
@property (readonly, strong) NSString* message;
@property (readonly, strong) NSString* debugMessage;
@property (readonly, strong) BasicDataModel* data;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (BasicDataModelResultBuilder*) builder;
+ (BasicDataModelResultBuilder*) builder;
+ (BasicDataModelResultBuilder*) builderWithPrototype:(BasicDataModelResult*) prototype;
- (BasicDataModelResultBuilder*) toBuilder;

+ (BasicDataModelResult*) parseFromData:(NSData*) data;
+ (BasicDataModelResult*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (BasicDataModelResult*) parseFromInputStream:(NSInputStream*) input;
+ (BasicDataModelResult*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (BasicDataModelResult*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (BasicDataModelResult*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface BasicDataModelResultBuilder : PBGeneratedMessageBuilder {
@private
  BasicDataModelResult* resultBasicDataModelResult;
}

- (BasicDataModelResult*) defaultInstance;

- (BasicDataModelResultBuilder*) clear;
- (BasicDataModelResultBuilder*) clone;

- (BasicDataModelResult*) build;
- (BasicDataModelResult*) buildPartial;

- (BasicDataModelResultBuilder*) mergeFrom:(BasicDataModelResult*) other;
- (BasicDataModelResultBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (BasicDataModelResultBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasCode;
- (SInt32) code;
- (BasicDataModelResultBuilder*) setCode:(SInt32) value;
- (BasicDataModelResultBuilder*) clearCode;

- (BOOL) hasInternalCode;
- (SInt32) internalCode;
- (BasicDataModelResultBuilder*) setInternalCode:(SInt32) value;
- (BasicDataModelResultBuilder*) clearInternalCode;

- (BOOL) hasMessage;
- (NSString*) message;
- (BasicDataModelResultBuilder*) setMessage:(NSString*) value;
- (BasicDataModelResultBuilder*) clearMessage;

- (BOOL) hasDebugMessage;
- (NSString*) debugMessage;
- (BasicDataModelResultBuilder*) setDebugMessage:(NSString*) value;
- (BasicDataModelResultBuilder*) clearDebugMessage;

- (BOOL) hasData;
- (BasicDataModel*) data;
- (BasicDataModelResultBuilder*) setData:(BasicDataModel*) value;
- (BasicDataModelResultBuilder*) setDataBuilder:(BasicDataModelBuilder*) builderForValue;
- (BasicDataModelResultBuilder*) mergeData:(BasicDataModel*) value;
- (BasicDataModelResultBuilder*) clearData;
@end


// @@protoc_insertion_point(global_scope)
