// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "ProductStageModel.pb.h"
// @@protoc_insertion_point(imports)

@implementation ProductStageModelRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [ProductStageModelRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface ProductStageModel ()
@property SInt32 productStageId;
@property (strong) NSString* productStageName;
@property (strong) NSString* fontColor;
@end

@implementation ProductStageModel

- (BOOL) hasProductStageId {
  return !!hasProductStageId_;
}
- (void) setHasProductStageId:(BOOL) _value_ {
  hasProductStageId_ = !!_value_;
}
@synthesize productStageId;
- (BOOL) hasProductStageName {
  return !!hasProductStageName_;
}
- (void) setHasProductStageName:(BOOL) _value_ {
  hasProductStageName_ = !!_value_;
}
@synthesize productStageName;
- (BOOL) hasFontColor {
  return !!hasFontColor_;
}
- (void) setHasFontColor:(BOOL) _value_ {
  hasFontColor_ = !!_value_;
}
@synthesize fontColor;
- (instancetype) init {
  if ((self = [super init])) {
    self.productStageId = 0;
    self.productStageName = @"";
    self.fontColor = @"";
  }
  return self;
}
static ProductStageModel* defaultProductStageModelInstance = nil;
+ (void) initialize {
  if (self == [ProductStageModel class]) {
    defaultProductStageModelInstance = [[ProductStageModel alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultProductStageModelInstance;
}
- (instancetype) defaultInstance {
  return defaultProductStageModelInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasProductStageId) {
    [output writeInt32:1 value:self.productStageId];
  }
  if (self.hasProductStageName) {
    [output writeString:2 value:self.productStageName];
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
  if (self.hasProductStageId) {
    size_ += computeInt32Size(1, self.productStageId);
  }
  if (self.hasProductStageName) {
    size_ += computeStringSize(2, self.productStageName);
  }
  if (self.hasFontColor) {
    size_ += computeStringSize(3, self.fontColor);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (ProductStageModel*) parseFromData:(NSData*) data {
  return (ProductStageModel*)[[[ProductStageModel builder] mergeFromData:data] build];
}
+ (ProductStageModel*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ProductStageModel*)[[[ProductStageModel builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (ProductStageModel*) parseFromInputStream:(NSInputStream*) input {
  return (ProductStageModel*)[[[ProductStageModel builder] mergeFromInputStream:input] build];
}
+ (ProductStageModel*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ProductStageModel*)[[[ProductStageModel builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ProductStageModel*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (ProductStageModel*)[[[ProductStageModel builder] mergeFromCodedInputStream:input] build];
}
+ (ProductStageModel*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ProductStageModel*)[[[ProductStageModel builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ProductStageModelBuilder*) builder {
  return [[ProductStageModelBuilder alloc] init];
}
+ (ProductStageModelBuilder*) builderWithPrototype:(ProductStageModel*) prototype {
  return [[ProductStageModel builder] mergeFrom:prototype];
}
- (ProductStageModelBuilder*) builder {
  return [ProductStageModel builder];
}
- (ProductStageModelBuilder*) toBuilder {
  return [ProductStageModel builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasProductStageId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"productStageId", [NSNumber numberWithInteger:self.productStageId]];
  }
  if (self.hasProductStageName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"productStageName", self.productStageName];
  }
  if (self.hasFontColor) {
    [output appendFormat:@"%@%@: %@\n", indent, @"fontColor", self.fontColor];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasProductStageId) {
    [dictionary setObject: [NSNumber numberWithInteger:self.productStageId] forKey: @"productStageId"];
  }
  if (self.hasProductStageName) {
    [dictionary setObject: self.productStageName forKey: @"productStageName"];
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
  if (![other isKindOfClass:[ProductStageModel class]]) {
    return NO;
  }
  ProductStageModel *otherMessage = other;
  return
      self.hasProductStageId == otherMessage.hasProductStageId &&
      (!self.hasProductStageId || self.productStageId == otherMessage.productStageId) &&
      self.hasProductStageName == otherMessage.hasProductStageName &&
      (!self.hasProductStageName || [self.productStageName isEqual:otherMessage.productStageName]) &&
      self.hasFontColor == otherMessage.hasFontColor &&
      (!self.hasFontColor || [self.fontColor isEqual:otherMessage.fontColor]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasProductStageId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.productStageId] hash];
  }
  if (self.hasProductStageName) {
    hashCode = hashCode * 31 + [self.productStageName hash];
  }
  if (self.hasFontColor) {
    hashCode = hashCode * 31 + [self.fontColor hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface ProductStageModelBuilder()
@property (strong) ProductStageModel* resultProductStageModel;
@end

@implementation ProductStageModelBuilder
@synthesize resultProductStageModel;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultProductStageModel = [[ProductStageModel alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultProductStageModel;
}
- (ProductStageModelBuilder*) clear {
  self.resultProductStageModel = [[ProductStageModel alloc] init];
  return self;
}
- (ProductStageModelBuilder*) clone {
  return [ProductStageModel builderWithPrototype:resultProductStageModel];
}
- (ProductStageModel*) defaultInstance {
  return [ProductStageModel defaultInstance];
}
- (ProductStageModel*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (ProductStageModel*) buildPartial {
  ProductStageModel* returnMe = resultProductStageModel;
  self.resultProductStageModel = nil;
  return returnMe;
}
- (ProductStageModelBuilder*) mergeFrom:(ProductStageModel*) other {
  if (other == [ProductStageModel defaultInstance]) {
    return self;
  }
  if (other.hasProductStageId) {
    [self setProductStageId:other.productStageId];
  }
  if (other.hasProductStageName) {
    [self setProductStageName:other.productStageName];
  }
  if (other.hasFontColor) {
    [self setFontColor:other.fontColor];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (ProductStageModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (ProductStageModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
        [self setProductStageId:[input readInt32]];
        break;
      }
      case 18: {
        [self setProductStageName:[input readString]];
        break;
      }
      case 26: {
        [self setFontColor:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasProductStageId {
  return resultProductStageModel.hasProductStageId;
}
- (SInt32) productStageId {
  return resultProductStageModel.productStageId;
}
- (ProductStageModelBuilder*) setProductStageId:(SInt32) value {
  resultProductStageModel.hasProductStageId = YES;
  resultProductStageModel.productStageId = value;
  return self;
}
- (ProductStageModelBuilder*) clearProductStageId {
  resultProductStageModel.hasProductStageId = NO;
  resultProductStageModel.productStageId = 0;
  return self;
}
- (BOOL) hasProductStageName {
  return resultProductStageModel.hasProductStageName;
}
- (NSString*) productStageName {
  return resultProductStageModel.productStageName;
}
- (ProductStageModelBuilder*) setProductStageName:(NSString*) value {
  resultProductStageModel.hasProductStageName = YES;
  resultProductStageModel.productStageName = value;
  return self;
}
- (ProductStageModelBuilder*) clearProductStageName {
  resultProductStageModel.hasProductStageName = NO;
  resultProductStageModel.productStageName = @"";
  return self;
}
- (BOOL) hasFontColor {
  return resultProductStageModel.hasFontColor;
}
- (NSString*) fontColor {
  return resultProductStageModel.fontColor;
}
- (ProductStageModelBuilder*) setFontColor:(NSString*) value {
  resultProductStageModel.hasFontColor = YES;
  resultProductStageModel.fontColor = value;
  return self;
}
- (ProductStageModelBuilder*) clearFontColor {
  resultProductStageModel.hasFontColor = NO;
  resultProductStageModel.fontColor = @"";
  return self;
}
@end


// @@protoc_insertion_point(global_scope)