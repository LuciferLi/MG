// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import <ProtocolBuffers/ProtocolBuffers.h>

// @@protoc_insertion_point(imports)

@class IndustryModel;
@class IndustryModelBuilder;



@interface IndustryModelRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

#define IndustryModel_IndustryId @"industryId"
#define IndustryModel_IndustryName @"industryName"
#define IndustryModel_FontColor @"fontColor"
@interface IndustryModel : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasIndustryId_:1;
  BOOL hasIndustryName_:1;
  BOOL hasFontColor_:1;
  SInt32 industryId;
  NSString* industryName;
  NSString* fontColor;
}
- (BOOL) hasIndustryId;
- (BOOL) hasIndustryName;
- (BOOL) hasFontColor;
@property (readonly) SInt32 industryId;
@property (readonly, strong) NSString* industryName;
@property (readonly, strong) NSString* fontColor;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (IndustryModelBuilder*) builder;
+ (IndustryModelBuilder*) builder;
+ (IndustryModelBuilder*) builderWithPrototype:(IndustryModel*) prototype;
- (IndustryModelBuilder*) toBuilder;

+ (IndustryModel*) parseFromData:(NSData*) data;
+ (IndustryModel*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (IndustryModel*) parseFromInputStream:(NSInputStream*) input;
+ (IndustryModel*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (IndustryModel*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (IndustryModel*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface IndustryModelBuilder : PBGeneratedMessageBuilder {
@private
  IndustryModel* resultIndustryModel;
}

- (IndustryModel*) defaultInstance;

- (IndustryModelBuilder*) clear;
- (IndustryModelBuilder*) clone;

- (IndustryModel*) build;
- (IndustryModel*) buildPartial;

- (IndustryModelBuilder*) mergeFrom:(IndustryModel*) other;
- (IndustryModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (IndustryModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasIndustryId;
- (SInt32) industryId;
- (IndustryModelBuilder*) setIndustryId:(SInt32) value;
- (IndustryModelBuilder*) clearIndustryId;

- (BOOL) hasIndustryName;
- (NSString*) industryName;
- (IndustryModelBuilder*) setIndustryName:(NSString*) value;
- (IndustryModelBuilder*) clearIndustryName;

- (BOOL) hasFontColor;
- (NSString*) fontColor;
- (IndustryModelBuilder*) setFontColor:(NSString*) value;
- (IndustryModelBuilder*) clearFontColor;
@end


// @@protoc_insertion_point(global_scope)