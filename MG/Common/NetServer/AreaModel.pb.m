// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "AreaModel.pb.h"
// @@protoc_insertion_point(imports)

@implementation AreaModelRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [AreaModelRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface AreaModel ()
@property SInt32 areaId;
@property (strong) NSString* areaName;
@end

@implementation AreaModel

- (BOOL) hasAreaId {
  return !!hasAreaId_;
}
- (void) setHasAreaId:(BOOL) _value_ {
  hasAreaId_ = !!_value_;
}
@synthesize areaId;
- (BOOL) hasAreaName {
  return !!hasAreaName_;
}
- (void) setHasAreaName:(BOOL) _value_ {
  hasAreaName_ = !!_value_;
}
@synthesize areaName;
- (instancetype) init {
  if ((self = [super init])) {
    self.areaId = 0;
    self.areaName = @"";
  }
  return self;
}
static AreaModel* defaultAreaModelInstance = nil;
+ (void) initialize {
  if (self == [AreaModel class]) {
    defaultAreaModelInstance = [[AreaModel alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultAreaModelInstance;
}
- (instancetype) defaultInstance {
  return defaultAreaModelInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasAreaId) {
    [output writeInt32:1 value:self.areaId];
  }
  if (self.hasAreaName) {
    [output writeString:2 value:self.areaName];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasAreaId) {
    size_ += computeInt32Size(1, self.areaId);
  }
  if (self.hasAreaName) {
    size_ += computeStringSize(2, self.areaName);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (AreaModel*) parseFromData:(NSData*) data {
  return (AreaModel*)[[[AreaModel builder] mergeFromData:data] build];
}
+ (AreaModel*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (AreaModel*)[[[AreaModel builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (AreaModel*) parseFromInputStream:(NSInputStream*) input {
  return (AreaModel*)[[[AreaModel builder] mergeFromInputStream:input] build];
}
+ (AreaModel*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (AreaModel*)[[[AreaModel builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (AreaModel*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (AreaModel*)[[[AreaModel builder] mergeFromCodedInputStream:input] build];
}
+ (AreaModel*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (AreaModel*)[[[AreaModel builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (AreaModelBuilder*) builder {
  return [[AreaModelBuilder alloc] init];
}
+ (AreaModelBuilder*) builderWithPrototype:(AreaModel*) prototype {
  return [[AreaModel builder] mergeFrom:prototype];
}
- (AreaModelBuilder*) builder {
  return [AreaModel builder];
}
- (AreaModelBuilder*) toBuilder {
  return [AreaModel builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasAreaId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"areaId", [NSNumber numberWithInteger:self.areaId]];
  }
  if (self.hasAreaName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"areaName", self.areaName];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasAreaId) {
    [dictionary setObject: [NSNumber numberWithInteger:self.areaId] forKey: @"areaId"];
  }
  if (self.hasAreaName) {
    [dictionary setObject: self.areaName forKey: @"areaName"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[AreaModel class]]) {
    return NO;
  }
  AreaModel *otherMessage = other;
  return
      self.hasAreaId == otherMessage.hasAreaId &&
      (!self.hasAreaId || self.areaId == otherMessage.areaId) &&
      self.hasAreaName == otherMessage.hasAreaName &&
      (!self.hasAreaName || [self.areaName isEqual:otherMessage.areaName]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasAreaId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.areaId] hash];
  }
  if (self.hasAreaName) {
    hashCode = hashCode * 31 + [self.areaName hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface AreaModelBuilder()
@property (strong) AreaModel* resultAreaModel;
@end

@implementation AreaModelBuilder
@synthesize resultAreaModel;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultAreaModel = [[AreaModel alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultAreaModel;
}
- (AreaModelBuilder*) clear {
  self.resultAreaModel = [[AreaModel alloc] init];
  return self;
}
- (AreaModelBuilder*) clone {
  return [AreaModel builderWithPrototype:resultAreaModel];
}
- (AreaModel*) defaultInstance {
  return [AreaModel defaultInstance];
}
- (AreaModel*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (AreaModel*) buildPartial {
  AreaModel* returnMe = resultAreaModel;
  self.resultAreaModel = nil;
  return returnMe;
}
- (AreaModelBuilder*) mergeFrom:(AreaModel*) other {
  if (other == [AreaModel defaultInstance]) {
    return self;
  }
  if (other.hasAreaId) {
    [self setAreaId:other.areaId];
  }
  if (other.hasAreaName) {
    [self setAreaName:other.areaName];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (AreaModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (AreaModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
        [self setAreaId:[input readInt32]];
        break;
      }
      case 18: {
        [self setAreaName:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasAreaId {
  return resultAreaModel.hasAreaId;
}
- (SInt32) areaId {
  return resultAreaModel.areaId;
}
- (AreaModelBuilder*) setAreaId:(SInt32) value {
  resultAreaModel.hasAreaId = YES;
  resultAreaModel.areaId = value;
  return self;
}
- (AreaModelBuilder*) clearAreaId {
  resultAreaModel.hasAreaId = NO;
  resultAreaModel.areaId = 0;
  return self;
}
- (BOOL) hasAreaName {
  return resultAreaModel.hasAreaName;
}
- (NSString*) areaName {
  return resultAreaModel.areaName;
}
- (AreaModelBuilder*) setAreaName:(NSString*) value {
  resultAreaModel.hasAreaName = YES;
  resultAreaModel.areaName = value;
  return self;
}
- (AreaModelBuilder*) clearAreaName {
  resultAreaModel.hasAreaName = NO;
  resultAreaModel.areaName = @"";
  return self;
}
@end


// @@protoc_insertion_point(global_scope)