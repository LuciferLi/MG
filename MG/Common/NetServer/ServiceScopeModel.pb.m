// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "ServiceScopeModel.pb.h"
// @@protoc_insertion_point(imports)

@implementation ServiceScopeModelRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [ServiceScopeModelRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface ServiceScopeModel ()
@property SInt32 scopeId;
@property (strong) NSString* scopeName;
@property (strong) NSString* bgImg;
@property BOOL showProcesses;
@end

@implementation ServiceScopeModel

- (BOOL) hasScopeId {
  return !!hasScopeId_;
}
- (void) setHasScopeId:(BOOL) _value_ {
  hasScopeId_ = !!_value_;
}
@synthesize scopeId;
- (BOOL) hasScopeName {
  return !!hasScopeName_;
}
- (void) setHasScopeName:(BOOL) _value_ {
  hasScopeName_ = !!_value_;
}
@synthesize scopeName;
- (BOOL) hasBgImg {
  return !!hasBgImg_;
}
- (void) setHasBgImg:(BOOL) _value_ {
  hasBgImg_ = !!_value_;
}
@synthesize bgImg;
- (BOOL) hasShowProcesses {
  return !!hasShowProcesses_;
}
- (void) setHasShowProcesses:(BOOL) _value_ {
  hasShowProcesses_ = !!_value_;
}
- (BOOL) showProcesses {
  return !!showProcesses_;
}
- (void) setShowProcesses:(BOOL) _value_ {
  showProcesses_ = !!_value_;
}
- (instancetype) init {
  if ((self = [super init])) {
    self.scopeId = 0;
    self.scopeName = @"";
    self.bgImg = @"";
    self.showProcesses = NO;
  }
  return self;
}
static ServiceScopeModel* defaultServiceScopeModelInstance = nil;
+ (void) initialize {
  if (self == [ServiceScopeModel class]) {
    defaultServiceScopeModelInstance = [[ServiceScopeModel alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultServiceScopeModelInstance;
}
- (instancetype) defaultInstance {
  return defaultServiceScopeModelInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasScopeId) {
    [output writeInt32:1 value:self.scopeId];
  }
  if (self.hasScopeName) {
    [output writeString:2 value:self.scopeName];
  }
  if (self.hasBgImg) {
    [output writeString:3 value:self.bgImg];
  }
  if (self.hasShowProcesses) {
    [output writeBool:4 value:self.showProcesses];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasScopeId) {
    size_ += computeInt32Size(1, self.scopeId);
  }
  if (self.hasScopeName) {
    size_ += computeStringSize(2, self.scopeName);
  }
  if (self.hasBgImg) {
    size_ += computeStringSize(3, self.bgImg);
  }
  if (self.hasShowProcesses) {
    size_ += computeBoolSize(4, self.showProcesses);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (ServiceScopeModel*) parseFromData:(NSData*) data {
  return (ServiceScopeModel*)[[[ServiceScopeModel builder] mergeFromData:data] build];
}
+ (ServiceScopeModel*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ServiceScopeModel*)[[[ServiceScopeModel builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (ServiceScopeModel*) parseFromInputStream:(NSInputStream*) input {
  return (ServiceScopeModel*)[[[ServiceScopeModel builder] mergeFromInputStream:input] build];
}
+ (ServiceScopeModel*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ServiceScopeModel*)[[[ServiceScopeModel builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ServiceScopeModel*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (ServiceScopeModel*)[[[ServiceScopeModel builder] mergeFromCodedInputStream:input] build];
}
+ (ServiceScopeModel*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ServiceScopeModel*)[[[ServiceScopeModel builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ServiceScopeModelBuilder*) builder {
  return [[ServiceScopeModelBuilder alloc] init];
}
+ (ServiceScopeModelBuilder*) builderWithPrototype:(ServiceScopeModel*) prototype {
  return [[ServiceScopeModel builder] mergeFrom:prototype];
}
- (ServiceScopeModelBuilder*) builder {
  return [ServiceScopeModel builder];
}
- (ServiceScopeModelBuilder*) toBuilder {
  return [ServiceScopeModel builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasScopeId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"scopeId", [NSNumber numberWithInteger:self.scopeId]];
  }
  if (self.hasScopeName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"scopeName", self.scopeName];
  }
  if (self.hasBgImg) {
    [output appendFormat:@"%@%@: %@\n", indent, @"bgImg", self.bgImg];
  }
  if (self.hasShowProcesses) {
    [output appendFormat:@"%@%@: %@\n", indent, @"showProcesses", [NSNumber numberWithBool:self.showProcesses]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasScopeId) {
    [dictionary setObject: [NSNumber numberWithInteger:self.scopeId] forKey: @"scopeId"];
  }
  if (self.hasScopeName) {
    [dictionary setObject: self.scopeName forKey: @"scopeName"];
  }
  if (self.hasBgImg) {
    [dictionary setObject: self.bgImg forKey: @"bgImg"];
  }
  if (self.hasShowProcesses) {
    [dictionary setObject: [NSNumber numberWithBool:self.showProcesses] forKey: @"showProcesses"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[ServiceScopeModel class]]) {
    return NO;
  }
  ServiceScopeModel *otherMessage = other;
  return
      self.hasScopeId == otherMessage.hasScopeId &&
      (!self.hasScopeId || self.scopeId == otherMessage.scopeId) &&
      self.hasScopeName == otherMessage.hasScopeName &&
      (!self.hasScopeName || [self.scopeName isEqual:otherMessage.scopeName]) &&
      self.hasBgImg == otherMessage.hasBgImg &&
      (!self.hasBgImg || [self.bgImg isEqual:otherMessage.bgImg]) &&
      self.hasShowProcesses == otherMessage.hasShowProcesses &&
      (!self.hasShowProcesses || self.showProcesses == otherMessage.showProcesses) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasScopeId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.scopeId] hash];
  }
  if (self.hasScopeName) {
    hashCode = hashCode * 31 + [self.scopeName hash];
  }
  if (self.hasBgImg) {
    hashCode = hashCode * 31 + [self.bgImg hash];
  }
  if (self.hasShowProcesses) {
    hashCode = hashCode * 31 + [[NSNumber numberWithBool:self.showProcesses] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface ServiceScopeModelBuilder()
@property (strong) ServiceScopeModel* resultServiceScopeModel;
@end

@implementation ServiceScopeModelBuilder
@synthesize resultServiceScopeModel;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultServiceScopeModel = [[ServiceScopeModel alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultServiceScopeModel;
}
- (ServiceScopeModelBuilder*) clear {
  self.resultServiceScopeModel = [[ServiceScopeModel alloc] init];
  return self;
}
- (ServiceScopeModelBuilder*) clone {
  return [ServiceScopeModel builderWithPrototype:resultServiceScopeModel];
}
- (ServiceScopeModel*) defaultInstance {
  return [ServiceScopeModel defaultInstance];
}
- (ServiceScopeModel*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (ServiceScopeModel*) buildPartial {
  ServiceScopeModel* returnMe = resultServiceScopeModel;
  self.resultServiceScopeModel = nil;
  return returnMe;
}
- (ServiceScopeModelBuilder*) mergeFrom:(ServiceScopeModel*) other {
  if (other == [ServiceScopeModel defaultInstance]) {
    return self;
  }
  if (other.hasScopeId) {
    [self setScopeId:other.scopeId];
  }
  if (other.hasScopeName) {
    [self setScopeName:other.scopeName];
  }
  if (other.hasBgImg) {
    [self setBgImg:other.bgImg];
  }
  if (other.hasShowProcesses) {
    [self setShowProcesses:other.showProcesses];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (ServiceScopeModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (ServiceScopeModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
        [self setScopeId:[input readInt32]];
        break;
      }
      case 18: {
        [self setScopeName:[input readString]];
        break;
      }
      case 26: {
        [self setBgImg:[input readString]];
        break;
      }
      case 32: {
        [self setShowProcesses:[input readBool]];
        break;
      }
    }
  }
}
- (BOOL) hasScopeId {
  return resultServiceScopeModel.hasScopeId;
}
- (SInt32) scopeId {
  return resultServiceScopeModel.scopeId;
}
- (ServiceScopeModelBuilder*) setScopeId:(SInt32) value {
  resultServiceScopeModel.hasScopeId = YES;
  resultServiceScopeModel.scopeId = value;
  return self;
}
- (ServiceScopeModelBuilder*) clearScopeId {
  resultServiceScopeModel.hasScopeId = NO;
  resultServiceScopeModel.scopeId = 0;
  return self;
}
- (BOOL) hasScopeName {
  return resultServiceScopeModel.hasScopeName;
}
- (NSString*) scopeName {
  return resultServiceScopeModel.scopeName;
}
- (ServiceScopeModelBuilder*) setScopeName:(NSString*) value {
  resultServiceScopeModel.hasScopeName = YES;
  resultServiceScopeModel.scopeName = value;
  return self;
}
- (ServiceScopeModelBuilder*) clearScopeName {
  resultServiceScopeModel.hasScopeName = NO;
  resultServiceScopeModel.scopeName = @"";
  return self;
}
- (BOOL) hasBgImg {
  return resultServiceScopeModel.hasBgImg;
}
- (NSString*) bgImg {
  return resultServiceScopeModel.bgImg;
}
- (ServiceScopeModelBuilder*) setBgImg:(NSString*) value {
  resultServiceScopeModel.hasBgImg = YES;
  resultServiceScopeModel.bgImg = value;
  return self;
}
- (ServiceScopeModelBuilder*) clearBgImg {
  resultServiceScopeModel.hasBgImg = NO;
  resultServiceScopeModel.bgImg = @"";
  return self;
}
- (BOOL) hasShowProcesses {
  return resultServiceScopeModel.hasShowProcesses;
}
- (BOOL) showProcesses {
  return resultServiceScopeModel.showProcesses;
}
- (ServiceScopeModelBuilder*) setShowProcesses:(BOOL) value {
  resultServiceScopeModel.hasShowProcesses = YES;
  resultServiceScopeModel.showProcesses = value;
  return self;
}
- (ServiceScopeModelBuilder*) clearShowProcesses {
  resultServiceScopeModel.hasShowProcesses = NO;
  resultServiceScopeModel.showProcesses = NO;
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
