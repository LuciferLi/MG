// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "PositionModel.pb.h"
// @@protoc_insertion_point(imports)

@implementation PositionModelRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [PositionModelRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface PositionModel ()
@property SInt32 positionId;
@property (strong) NSString* positionName;
@property (strong) NSString* fontColor;
@end

@implementation PositionModel

- (BOOL) hasPositionId {
  return !!hasPositionId_;
}
- (void) setHasPositionId:(BOOL) _value_ {
  hasPositionId_ = !!_value_;
}
@synthesize positionId;
- (BOOL) hasPositionName {
  return !!hasPositionName_;
}
- (void) setHasPositionName:(BOOL) _value_ {
  hasPositionName_ = !!_value_;
}
@synthesize positionName;
- (BOOL) hasFontColor {
  return !!hasFontColor_;
}
- (void) setHasFontColor:(BOOL) _value_ {
  hasFontColor_ = !!_value_;
}
@synthesize fontColor;
- (instancetype) init {
  if ((self = [super init])) {
    self.positionId = 0;
    self.positionName = @"";
    self.fontColor = @"";
  }
  return self;
}
static PositionModel* defaultPositionModelInstance = nil;
+ (void) initialize {
  if (self == [PositionModel class]) {
    defaultPositionModelInstance = [[PositionModel alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultPositionModelInstance;
}
- (instancetype) defaultInstance {
  return defaultPositionModelInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasPositionId) {
    [output writeInt32:1 value:self.positionId];
  }
  if (self.hasPositionName) {
    [output writeString:2 value:self.positionName];
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
  if (self.hasPositionId) {
    size_ += computeInt32Size(1, self.positionId);
  }
  if (self.hasPositionName) {
    size_ += computeStringSize(2, self.positionName);
  }
  if (self.hasFontColor) {
    size_ += computeStringSize(3, self.fontColor);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (PositionModel*) parseFromData:(NSData*) data {
  return (PositionModel*)[[[PositionModel builder] mergeFromData:data] build];
}
+ (PositionModel*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (PositionModel*)[[[PositionModel builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (PositionModel*) parseFromInputStream:(NSInputStream*) input {
  return (PositionModel*)[[[PositionModel builder] mergeFromInputStream:input] build];
}
+ (PositionModel*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (PositionModel*)[[[PositionModel builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (PositionModel*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (PositionModel*)[[[PositionModel builder] mergeFromCodedInputStream:input] build];
}
+ (PositionModel*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (PositionModel*)[[[PositionModel builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (PositionModelBuilder*) builder {
  return [[PositionModelBuilder alloc] init];
}
+ (PositionModelBuilder*) builderWithPrototype:(PositionModel*) prototype {
  return [[PositionModel builder] mergeFrom:prototype];
}
- (PositionModelBuilder*) builder {
  return [PositionModel builder];
}
- (PositionModelBuilder*) toBuilder {
  return [PositionModel builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasPositionId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"positionId", [NSNumber numberWithInteger:self.positionId]];
  }
  if (self.hasPositionName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"positionName", self.positionName];
  }
  if (self.hasFontColor) {
    [output appendFormat:@"%@%@: %@\n", indent, @"fontColor", self.fontColor];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasPositionId) {
    [dictionary setObject: [NSNumber numberWithInteger:self.positionId] forKey: @"positionId"];
  }
  if (self.hasPositionName) {
    [dictionary setObject: self.positionName forKey: @"positionName"];
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
  if (![other isKindOfClass:[PositionModel class]]) {
    return NO;
  }
  PositionModel *otherMessage = other;
  return
      self.hasPositionId == otherMessage.hasPositionId &&
      (!self.hasPositionId || self.positionId == otherMessage.positionId) &&
      self.hasPositionName == otherMessage.hasPositionName &&
      (!self.hasPositionName || [self.positionName isEqual:otherMessage.positionName]) &&
      self.hasFontColor == otherMessage.hasFontColor &&
      (!self.hasFontColor || [self.fontColor isEqual:otherMessage.fontColor]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasPositionId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.positionId] hash];
  }
  if (self.hasPositionName) {
    hashCode = hashCode * 31 + [self.positionName hash];
  }
  if (self.hasFontColor) {
    hashCode = hashCode * 31 + [self.fontColor hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface PositionModelBuilder()
@property (strong) PositionModel* resultPositionModel;
@end

@implementation PositionModelBuilder
@synthesize resultPositionModel;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultPositionModel = [[PositionModel alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultPositionModel;
}
- (PositionModelBuilder*) clear {
  self.resultPositionModel = [[PositionModel alloc] init];
  return self;
}
- (PositionModelBuilder*) clone {
  return [PositionModel builderWithPrototype:resultPositionModel];
}
- (PositionModel*) defaultInstance {
  return [PositionModel defaultInstance];
}
- (PositionModel*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (PositionModel*) buildPartial {
  PositionModel* returnMe = resultPositionModel;
  self.resultPositionModel = nil;
  return returnMe;
}
- (PositionModelBuilder*) mergeFrom:(PositionModel*) other {
  if (other == [PositionModel defaultInstance]) {
    return self;
  }
  if (other.hasPositionId) {
    [self setPositionId:other.positionId];
  }
  if (other.hasPositionName) {
    [self setPositionName:other.positionName];
  }
  if (other.hasFontColor) {
    [self setFontColor:other.fontColor];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (PositionModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (PositionModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
        [self setPositionId:[input readInt32]];
        break;
      }
      case 18: {
        [self setPositionName:[input readString]];
        break;
      }
      case 26: {
        [self setFontColor:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasPositionId {
  return resultPositionModel.hasPositionId;
}
- (SInt32) positionId {
  return resultPositionModel.positionId;
}
- (PositionModelBuilder*) setPositionId:(SInt32) value {
  resultPositionModel.hasPositionId = YES;
  resultPositionModel.positionId = value;
  return self;
}
- (PositionModelBuilder*) clearPositionId {
  resultPositionModel.hasPositionId = NO;
  resultPositionModel.positionId = 0;
  return self;
}
- (BOOL) hasPositionName {
  return resultPositionModel.hasPositionName;
}
- (NSString*) positionName {
  return resultPositionModel.positionName;
}
- (PositionModelBuilder*) setPositionName:(NSString*) value {
  resultPositionModel.hasPositionName = YES;
  resultPositionModel.positionName = value;
  return self;
}
- (PositionModelBuilder*) clearPositionName {
  resultPositionModel.hasPositionName = NO;
  resultPositionModel.positionName = @"";
  return self;
}
- (BOOL) hasFontColor {
  return resultPositionModel.hasFontColor;
}
- (NSString*) fontColor {
  return resultPositionModel.fontColor;
}
- (PositionModelBuilder*) setFontColor:(NSString*) value {
  resultPositionModel.hasFontColor = YES;
  resultPositionModel.fontColor = value;
  return self;
}
- (PositionModelBuilder*) clearFontColor {
  resultPositionModel.hasFontColor = NO;
  resultPositionModel.fontColor = @"";
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
