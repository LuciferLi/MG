// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "FinancingStageModel.pb.h"
// @@protoc_insertion_point(imports)

@implementation FinancingStageModelRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [FinancingStageModelRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface FinancingStageModel ()
@property SInt32 financingStageId;
@property (strong) NSString* financingStageName;
@property (strong) NSString* fontColor;
@end

@implementation FinancingStageModel

- (BOOL) hasFinancingStageId {
  return !!hasFinancingStageId_;
}
- (void) setHasFinancingStageId:(BOOL) _value_ {
  hasFinancingStageId_ = !!_value_;
}
@synthesize financingStageId;
- (BOOL) hasFinancingStageName {
  return !!hasFinancingStageName_;
}
- (void) setHasFinancingStageName:(BOOL) _value_ {
  hasFinancingStageName_ = !!_value_;
}
@synthesize financingStageName;
- (BOOL) hasFontColor {
  return !!hasFontColor_;
}
- (void) setHasFontColor:(BOOL) _value_ {
  hasFontColor_ = !!_value_;
}
@synthesize fontColor;
- (instancetype) init {
  if ((self = [super init])) {
    self.financingStageId = 0;
    self.financingStageName = @"";
    self.fontColor = @"";
  }
  return self;
}
static FinancingStageModel* defaultFinancingStageModelInstance = nil;
+ (void) initialize {
  if (self == [FinancingStageModel class]) {
    defaultFinancingStageModelInstance = [[FinancingStageModel alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultFinancingStageModelInstance;
}
- (instancetype) defaultInstance {
  return defaultFinancingStageModelInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasFinancingStageId) {
    [output writeInt32:1 value:self.financingStageId];
  }
  if (self.hasFinancingStageName) {
    [output writeString:2 value:self.financingStageName];
  }
  if (self.hasFontColor) {
    [output writeString:3 value:self.fontColor];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasFinancingStageId) {
    size_ += computeInt32Size(1, self.financingStageId);
  }
  if (self.hasFinancingStageName) {
    size_ += computeStringSize(2, self.financingStageName);
  }
  if (self.hasFontColor) {
    size_ += computeStringSize(3, self.fontColor);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (FinancingStageModel*) parseFromData:(NSData*) data {
  return (FinancingStageModel*)[[[FinancingStageModel builder] mergeFromData:data] build];
}
+ (FinancingStageModel*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FinancingStageModel*)[[[FinancingStageModel builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (FinancingStageModel*) parseFromInputStream:(NSInputStream*) input {
  return (FinancingStageModel*)[[[FinancingStageModel builder] mergeFromInputStream:input] build];
}
+ (FinancingStageModel*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FinancingStageModel*)[[[FinancingStageModel builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FinancingStageModel*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (FinancingStageModel*)[[[FinancingStageModel builder] mergeFromCodedInputStream:input] build];
}
+ (FinancingStageModel*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FinancingStageModel*)[[[FinancingStageModel builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FinancingStageModelBuilder*) builder {
  return [[FinancingStageModelBuilder alloc] init];
}
+ (FinancingStageModelBuilder*) builderWithPrototype:(FinancingStageModel*) prototype {
  return [[FinancingStageModel builder] mergeFrom:prototype];
}
- (FinancingStageModelBuilder*) builder {
  return [FinancingStageModel builder];
}
- (FinancingStageModelBuilder*) toBuilder {
  return [FinancingStageModel builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasFinancingStageId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"financingStageId", [NSNumber numberWithInteger:self.financingStageId]];
  }
  if (self.hasFinancingStageName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"financingStageName", self.financingStageName];
  }
  if (self.hasFontColor) {
    [output appendFormat:@"%@%@: %@\n", indent, @"fontColor", self.fontColor];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasFinancingStageId) {
    [dictionary setObject: [NSNumber numberWithInteger:self.financingStageId] forKey: @"financingStageId"];
  }
  if (self.hasFinancingStageName) {
    [dictionary setObject: self.financingStageName forKey: @"financingStageName"];
  }
  if (self.hasFontColor) {
    [dictionary setObject: self.fontColor forKey: @"fontColor"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[FinancingStageModel class]]) {
    return NO;
  }
  FinancingStageModel *otherMessage = other;
  return
      self.hasFinancingStageId == otherMessage.hasFinancingStageId &&
      (!self.hasFinancingStageId || self.financingStageId == otherMessage.financingStageId) &&
      self.hasFinancingStageName == otherMessage.hasFinancingStageName &&
      (!self.hasFinancingStageName || [self.financingStageName isEqual:otherMessage.financingStageName]) &&
      self.hasFontColor == otherMessage.hasFontColor &&
      (!self.hasFontColor || [self.fontColor isEqual:otherMessage.fontColor]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasFinancingStageId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.financingStageId] hash];
  }
  if (self.hasFinancingStageName) {
    hashCode = hashCode * 31 + [self.financingStageName hash];
  }
  if (self.hasFontColor) {
    hashCode = hashCode * 31 + [self.fontColor hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface FinancingStageModelBuilder()
@property (strong) FinancingStageModel* resultFinancingStageModel;
@end

@implementation FinancingStageModelBuilder
@synthesize resultFinancingStageModel;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultFinancingStageModel = [[FinancingStageModel alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultFinancingStageModel;
}
- (FinancingStageModelBuilder*) clear {
  self.resultFinancingStageModel = [[FinancingStageModel alloc] init];
  return self;
}
- (FinancingStageModelBuilder*) clone {
  return [FinancingStageModel builderWithPrototype:resultFinancingStageModel];
}
- (FinancingStageModel*) defaultInstance {
  return [FinancingStageModel defaultInstance];
}
- (FinancingStageModel*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (FinancingStageModel*) buildPartial {
  FinancingStageModel* returnMe = resultFinancingStageModel;
  self.resultFinancingStageModel = nil;
  return returnMe;
}
- (FinancingStageModelBuilder*) mergeFrom:(FinancingStageModel*) other {
  if (other == [FinancingStageModel defaultInstance]) {
    return self;
  }
  if (other.hasFinancingStageId) {
    [self setFinancingStageId:other.financingStageId];
  }
  if (other.hasFinancingStageName) {
    [self setFinancingStageName:other.financingStageName];
  }
  if (other.hasFontColor) {
    [self setFontColor:other.fontColor];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (FinancingStageModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (FinancingStageModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setFinancingStageId:[input readInt32]];
        break;
      }
      case 18: {
        [self setFinancingStageName:[input readString]];
        break;
      }
      case 26: {
        [self setFontColor:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasFinancingStageId {
  return resultFinancingStageModel.hasFinancingStageId;
}
- (SInt32) financingStageId {
  return resultFinancingStageModel.financingStageId;
}
- (FinancingStageModelBuilder*) setFinancingStageId:(SInt32) value {
  resultFinancingStageModel.hasFinancingStageId = YES;
  resultFinancingStageModel.financingStageId = value;
  return self;
}
- (FinancingStageModelBuilder*) clearFinancingStageId {
  resultFinancingStageModel.hasFinancingStageId = NO;
  resultFinancingStageModel.financingStageId = 0;
  return self;
}
- (BOOL) hasFinancingStageName {
  return resultFinancingStageModel.hasFinancingStageName;
}
- (NSString*) financingStageName {
  return resultFinancingStageModel.financingStageName;
}
- (FinancingStageModelBuilder*) setFinancingStageName:(NSString*) value {
  resultFinancingStageModel.hasFinancingStageName = YES;
  resultFinancingStageModel.financingStageName = value;
  return self;
}
- (FinancingStageModelBuilder*) clearFinancingStageName {
  resultFinancingStageModel.hasFinancingStageName = NO;
  resultFinancingStageModel.financingStageName = @"";
  return self;
}
- (BOOL) hasFontColor {
  return resultFinancingStageModel.hasFontColor;
}
- (NSString*) fontColor {
  return resultFinancingStageModel.fontColor;
}
- (FinancingStageModelBuilder*) setFontColor:(NSString*) value {
  resultFinancingStageModel.hasFontColor = YES;
  resultFinancingStageModel.fontColor = value;
  return self;
}
- (FinancingStageModelBuilder*) clearFontColor {
  resultFinancingStageModel.hasFontColor = NO;
  resultFinancingStageModel.fontColor = @"";
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
