// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "IndustryModel.pb.h"
// @@protoc_insertion_point(imports)

@implementation IndustryModelRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [IndustryModelRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface IndustryModel ()
@property SInt32 industryId;
@property (strong) NSString* industryName;
@property (strong) NSString* fontColor;
@end

@implementation IndustryModel

- (BOOL) hasIndustryId {
  return !!hasIndustryId_;
}
- (void) setHasIndustryId:(BOOL) _value_ {
  hasIndustryId_ = !!_value_;
}
@synthesize industryId;
- (BOOL) hasIndustryName {
  return !!hasIndustryName_;
}
- (void) setHasIndustryName:(BOOL) _value_ {
  hasIndustryName_ = !!_value_;
}
@synthesize industryName;
- (BOOL) hasFontColor {
  return !!hasFontColor_;
}
- (void) setHasFontColor:(BOOL) _value_ {
  hasFontColor_ = !!_value_;
}
@synthesize fontColor;
- (instancetype) init {
  if ((self = [super init])) {
    self.industryId = 0;
    self.industryName = @"";
    self.fontColor = @"";
  }
  return self;
}
static IndustryModel* defaultIndustryModelInstance = nil;
+ (void) initialize {
  if (self == [IndustryModel class]) {
    defaultIndustryModelInstance = [[IndustryModel alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultIndustryModelInstance;
}
- (instancetype) defaultInstance {
  return defaultIndustryModelInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasIndustryId) {
    [output writeInt32:1 value:self.industryId];
  }
  if (self.hasIndustryName) {
    [output writeString:2 value:self.industryName];
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
  if (self.hasIndustryId) {
    size_ += computeInt32Size(1, self.industryId);
  }
  if (self.hasIndustryName) {
    size_ += computeStringSize(2, self.industryName);
  }
  if (self.hasFontColor) {
    size_ += computeStringSize(3, self.fontColor);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (IndustryModel*) parseFromData:(NSData*) data {
  return (IndustryModel*)[[[IndustryModel builder] mergeFromData:data] build];
}
+ (IndustryModel*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (IndustryModel*)[[[IndustryModel builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (IndustryModel*) parseFromInputStream:(NSInputStream*) input {
  return (IndustryModel*)[[[IndustryModel builder] mergeFromInputStream:input] build];
}
+ (IndustryModel*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (IndustryModel*)[[[IndustryModel builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (IndustryModel*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (IndustryModel*)[[[IndustryModel builder] mergeFromCodedInputStream:input] build];
}
+ (IndustryModel*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (IndustryModel*)[[[IndustryModel builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (IndustryModelBuilder*) builder {
  return [[IndustryModelBuilder alloc] init];
}
+ (IndustryModelBuilder*) builderWithPrototype:(IndustryModel*) prototype {
  return [[IndustryModel builder] mergeFrom:prototype];
}
- (IndustryModelBuilder*) builder {
  return [IndustryModel builder];
}
- (IndustryModelBuilder*) toBuilder {
  return [IndustryModel builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasIndustryId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"industryId", [NSNumber numberWithInteger:self.industryId]];
  }
  if (self.hasIndustryName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"industryName", self.industryName];
  }
  if (self.hasFontColor) {
    [output appendFormat:@"%@%@: %@\n", indent, @"fontColor", self.fontColor];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasIndustryId) {
    [dictionary setObject: [NSNumber numberWithInteger:self.industryId] forKey: @"industryId"];
  }
  if (self.hasIndustryName) {
    [dictionary setObject: self.industryName forKey: @"industryName"];
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
  if (![other isKindOfClass:[IndustryModel class]]) {
    return NO;
  }
  IndustryModel *otherMessage = other;
  return
      self.hasIndustryId == otherMessage.hasIndustryId &&
      (!self.hasIndustryId || self.industryId == otherMessage.industryId) &&
      self.hasIndustryName == otherMessage.hasIndustryName &&
      (!self.hasIndustryName || [self.industryName isEqual:otherMessage.industryName]) &&
      self.hasFontColor == otherMessage.hasFontColor &&
      (!self.hasFontColor || [self.fontColor isEqual:otherMessage.fontColor]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasIndustryId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.industryId] hash];
  }
  if (self.hasIndustryName) {
    hashCode = hashCode * 31 + [self.industryName hash];
  }
  if (self.hasFontColor) {
    hashCode = hashCode * 31 + [self.fontColor hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface IndustryModelBuilder()
@property (strong) IndustryModel* resultIndustryModel;
@end

@implementation IndustryModelBuilder
@synthesize resultIndustryModel;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultIndustryModel = [[IndustryModel alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultIndustryModel;
}
- (IndustryModelBuilder*) clear {
  self.resultIndustryModel = [[IndustryModel alloc] init];
  return self;
}
- (IndustryModelBuilder*) clone {
  return [IndustryModel builderWithPrototype:resultIndustryModel];
}
- (IndustryModel*) defaultInstance {
  return [IndustryModel defaultInstance];
}
- (IndustryModel*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (IndustryModel*) buildPartial {
  IndustryModel* returnMe = resultIndustryModel;
  self.resultIndustryModel = nil;
  return returnMe;
}
- (IndustryModelBuilder*) mergeFrom:(IndustryModel*) other {
  if (other == [IndustryModel defaultInstance]) {
    return self;
  }
  if (other.hasIndustryId) {
    [self setIndustryId:other.industryId];
  }
  if (other.hasIndustryName) {
    [self setIndustryName:other.industryName];
  }
  if (other.hasFontColor) {
    [self setFontColor:other.fontColor];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (IndustryModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (IndustryModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
        [self setIndustryId:[input readInt32]];
        break;
      }
      case 18: {
        [self setIndustryName:[input readString]];
        break;
      }
      case 26: {
        [self setFontColor:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasIndustryId {
  return resultIndustryModel.hasIndustryId;
}
- (SInt32) industryId {
  return resultIndustryModel.industryId;
}
- (IndustryModelBuilder*) setIndustryId:(SInt32) value {
  resultIndustryModel.hasIndustryId = YES;
  resultIndustryModel.industryId = value;
  return self;
}
- (IndustryModelBuilder*) clearIndustryId {
  resultIndustryModel.hasIndustryId = NO;
  resultIndustryModel.industryId = 0;
  return self;
}
- (BOOL) hasIndustryName {
  return resultIndustryModel.hasIndustryName;
}
- (NSString*) industryName {
  return resultIndustryModel.industryName;
}
- (IndustryModelBuilder*) setIndustryName:(NSString*) value {
  resultIndustryModel.hasIndustryName = YES;
  resultIndustryModel.industryName = value;
  return self;
}
- (IndustryModelBuilder*) clearIndustryName {
  resultIndustryModel.hasIndustryName = NO;
  resultIndustryModel.industryName = @"";
  return self;
}
- (BOOL) hasFontColor {
  return resultIndustryModel.hasFontColor;
}
- (NSString*) fontColor {
  return resultIndustryModel.fontColor;
}
- (IndustryModelBuilder*) setFontColor:(NSString*) value {
  resultIndustryModel.hasFontColor = YES;
  resultIndustryModel.fontColor = value;
  return self;
}
- (IndustryModelBuilder*) clearFontColor {
  resultIndustryModel.hasFontColor = NO;
  resultIndustryModel.fontColor = @"";
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
