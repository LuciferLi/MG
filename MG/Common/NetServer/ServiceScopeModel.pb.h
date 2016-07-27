// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import <ProtocolBuffers/ProtocolBuffers.h>

// @@protoc_insertion_point(imports)

@class ServiceScopeModel;
@class ServiceScopeModelBuilder;



@interface ServiceScopeModelRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

#define ServiceScopeModel_ScopeId @"scopeId"
#define ServiceScopeModel_ScopeName @"scopeName"
#define ServiceScopeModel_BgImg @"bgImg"
#define ServiceScopeModel_ShowProcesses @"showProcesses"
@interface ServiceScopeModel : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasShowProcesses_:1;
  BOOL hasScopeId_:1;
  BOOL hasScopeName_:1;
  BOOL hasBgImg_:1;
  BOOL showProcesses_:1;
  SInt32 scopeId;
  NSString* scopeName;
  NSString* bgImg;
}
- (BOOL) hasScopeId;
- (BOOL) hasScopeName;
- (BOOL) hasBgImg;
- (BOOL) hasShowProcesses;
@property (readonly) SInt32 scopeId;
@property (readonly, strong) NSString* scopeName;
@property (readonly, strong) NSString* bgImg;
- (BOOL) showProcesses;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (ServiceScopeModelBuilder*) builder;
+ (ServiceScopeModelBuilder*) builder;
+ (ServiceScopeModelBuilder*) builderWithPrototype:(ServiceScopeModel*) prototype;
- (ServiceScopeModelBuilder*) toBuilder;

+ (ServiceScopeModel*) parseFromData:(NSData*) data;
+ (ServiceScopeModel*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (ServiceScopeModel*) parseFromInputStream:(NSInputStream*) input;
+ (ServiceScopeModel*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (ServiceScopeModel*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (ServiceScopeModel*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface ServiceScopeModelBuilder : PBGeneratedMessageBuilder {
@private
  ServiceScopeModel* resultServiceScopeModel;
}

- (ServiceScopeModel*) defaultInstance;

- (ServiceScopeModelBuilder*) clear;
- (ServiceScopeModelBuilder*) clone;

- (ServiceScopeModel*) build;
- (ServiceScopeModel*) buildPartial;

- (ServiceScopeModelBuilder*) mergeFrom:(ServiceScopeModel*) other;
- (ServiceScopeModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (ServiceScopeModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasScopeId;
- (SInt32) scopeId;
- (ServiceScopeModelBuilder*) setScopeId:(SInt32) value;
- (ServiceScopeModelBuilder*) clearScopeId;

- (BOOL) hasScopeName;
- (NSString*) scopeName;
- (ServiceScopeModelBuilder*) setScopeName:(NSString*) value;
- (ServiceScopeModelBuilder*) clearScopeName;

- (BOOL) hasBgImg;
- (NSString*) bgImg;
- (ServiceScopeModelBuilder*) setBgImg:(NSString*) value;
- (ServiceScopeModelBuilder*) clearBgImg;

- (BOOL) hasShowProcesses;
- (BOOL) showProcesses;
- (ServiceScopeModelBuilder*) setShowProcesses:(BOOL) value;
- (ServiceScopeModelBuilder*) clearShowProcesses;
@end


// @@protoc_insertion_point(global_scope)