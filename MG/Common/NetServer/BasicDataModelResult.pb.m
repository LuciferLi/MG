// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "BasicDataModelResult.pb.h"
// @@protoc_insertion_point(imports)

@implementation BasicDataModelResultRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [BasicDataModelResultRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    [BasicDataModelRoot registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface BasicDataModelResult ()
@property SInt32 code;
@property SInt32 internalCode;
@property (strong) NSString* message;
@property (strong) NSString* debugMessage;
@property (strong) BasicDataModel* data;
@end

@implementation BasicDataModelResult

- (BOOL) hasCode {
  return !!hasCode_;
}
- (void) setHasCode:(BOOL) _value_ {
  hasCode_ = !!_value_;
}
@synthesize code;
- (BOOL) hasInternalCode {
  return !!hasInternalCode_;
}
- (void) setHasInternalCode:(BOOL) _value_ {
  hasInternalCode_ = !!_value_;
}
@synthesize internalCode;
- (BOOL) hasMessage {
  return !!hasMessage_;
}
- (void) setHasMessage:(BOOL) _value_ {
  hasMessage_ = !!_value_;
}
@synthesize message;
- (BOOL) hasDebugMessage {
  return !!hasDebugMessage_;
}
- (void) setHasDebugMessage:(BOOL) _value_ {
  hasDebugMessage_ = !!_value_;
}
@synthesize debugMessage;
- (BOOL) hasData {
  return !!hasData_;
}
- (void) setHasData:(BOOL) _value_ {
  hasData_ = !!_value_;
}
@synthesize data;
- (instancetype) init {
  if ((self = [super init])) {
    self.code = 0;
    self.internalCode = 0;
    self.message = @"";
    self.debugMessage = @"";
    self.data = [BasicDataModel defaultInstance];
  }
  return self;
}
static BasicDataModelResult* defaultBasicDataModelResultInstance = nil;
+ (void) initialize {
  if (self == [BasicDataModelResult class]) {
    defaultBasicDataModelResultInstance = [[BasicDataModelResult alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultBasicDataModelResultInstance;
}
- (instancetype) defaultInstance {
  return defaultBasicDataModelResultInstance;
}
- (BOOL) isInitialized {
  if (!self.hasCode) {
    return NO;
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasCode) {
    [output writeInt32:1 value:self.code];
  }
  if (self.hasInternalCode) {
    [output writeInt32:2 value:self.internalCode];
  }
  if (self.hasMessage) {
    [output writeString:3 value:self.message];
  }
  if (self.hasDebugMessage) {
    [output writeString:4 value:self.debugMessage];
  }
  if (self.hasData) {
    [output writeMessage:5 value:self.data];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasCode) {
    size_ += computeInt32Size(1, self.code);
  }
  if (self.hasInternalCode) {
    size_ += computeInt32Size(2, self.internalCode);
  }
  if (self.hasMessage) {
    size_ += computeStringSize(3, self.message);
  }
  if (self.hasDebugMessage) {
    size_ += computeStringSize(4, self.debugMessage);
  }
  if (self.hasData) {
    size_ += computeMessageSize(5, self.data);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (BasicDataModelResult*) parseFromData:(NSData*) data {
  return (BasicDataModelResult*)[[[BasicDataModelResult builder] mergeFromData:data] build];
}
+ (BasicDataModelResult*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (BasicDataModelResult*)[[[BasicDataModelResult builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (BasicDataModelResult*) parseFromInputStream:(NSInputStream*) input {
  return (BasicDataModelResult*)[[[BasicDataModelResult builder] mergeFromInputStream:input] build];
}
+ (BasicDataModelResult*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (BasicDataModelResult*)[[[BasicDataModelResult builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (BasicDataModelResult*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (BasicDataModelResult*)[[[BasicDataModelResult builder] mergeFromCodedInputStream:input] build];
}
+ (BasicDataModelResult*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (BasicDataModelResult*)[[[BasicDataModelResult builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (BasicDataModelResultBuilder*) builder {
  return [[BasicDataModelResultBuilder alloc] init];
}
+ (BasicDataModelResultBuilder*) builderWithPrototype:(BasicDataModelResult*) prototype {
  return [[BasicDataModelResult builder] mergeFrom:prototype];
}
- (BasicDataModelResultBuilder*) builder {
  return [BasicDataModelResult builder];
}
- (BasicDataModelResultBuilder*) toBuilder {
  return [BasicDataModelResult builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasCode) {
    [output appendFormat:@"%@%@: %@\n", indent, @"code", [NSNumber numberWithInteger:self.code]];
  }
  if (self.hasInternalCode) {
    [output appendFormat:@"%@%@: %@\n", indent, @"internalCode", [NSNumber numberWithInteger:self.internalCode]];
  }
  if (self.hasMessage) {
    [output appendFormat:@"%@%@: %@\n", indent, @"message", self.message];
  }
  if (self.hasDebugMessage) {
    [output appendFormat:@"%@%@: %@\n", indent, @"debugMessage", self.debugMessage];
  }
  if (self.hasData) {
    [output appendFormat:@"%@%@ {\n", indent, @"data"];
    [self.data writeDescriptionTo:output
                         withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasCode) {
    [dictionary setObject: [NSNumber numberWithInteger:self.code] forKey: @"code"];
  }
  if (self.hasInternalCode) {
    [dictionary setObject: [NSNumber numberWithInteger:self.internalCode] forKey: @"internalCode"];
  }
  if (self.hasMessage) {
    [dictionary setObject: self.message forKey: @"message"];
  }
  if (self.hasDebugMessage) {
    [dictionary setObject: self.debugMessage forKey: @"debugMessage"];
  }
  if (self.hasData) {
   NSMutableDictionary *messageDictionary = [NSMutableDictionary dictionary]; 
   [self.data storeInDictionary:messageDictionary];
   [dictionary setObject:[NSDictionary dictionaryWithDictionary:messageDictionary] forKey:@"data"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[BasicDataModelResult class]]) {
    return NO;
  }
  BasicDataModelResult *otherMessage = other;
  return
      self.hasCode == otherMessage.hasCode &&
      (!self.hasCode || self.code == otherMessage.code) &&
      self.hasInternalCode == otherMessage.hasInternalCode &&
      (!self.hasInternalCode || self.internalCode == otherMessage.internalCode) &&
      self.hasMessage == otherMessage.hasMessage &&
      (!self.hasMessage || [self.message isEqual:otherMessage.message]) &&
      self.hasDebugMessage == otherMessage.hasDebugMessage &&
      (!self.hasDebugMessage || [self.debugMessage isEqual:otherMessage.debugMessage]) &&
      self.hasData == otherMessage.hasData &&
      (!self.hasData || [self.data isEqual:otherMessage.data]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasCode) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.code] hash];
  }
  if (self.hasInternalCode) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.internalCode] hash];
  }
  if (self.hasMessage) {
    hashCode = hashCode * 31 + [self.message hash];
  }
  if (self.hasDebugMessage) {
    hashCode = hashCode * 31 + [self.debugMessage hash];
  }
  if (self.hasData) {
    hashCode = hashCode * 31 + [self.data hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface BasicDataModelResultBuilder()
@property (strong) BasicDataModelResult* resultBasicDataModelResult;
@end

@implementation BasicDataModelResultBuilder
@synthesize resultBasicDataModelResult;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultBasicDataModelResult = [[BasicDataModelResult alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultBasicDataModelResult;
}
- (BasicDataModelResultBuilder*) clear {
  self.resultBasicDataModelResult = [[BasicDataModelResult alloc] init];
  return self;
}
- (BasicDataModelResultBuilder*) clone {
  return [BasicDataModelResult builderWithPrototype:resultBasicDataModelResult];
}
- (BasicDataModelResult*) defaultInstance {
  return [BasicDataModelResult defaultInstance];
}
- (BasicDataModelResult*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (BasicDataModelResult*) buildPartial {
  BasicDataModelResult* returnMe = resultBasicDataModelResult;
  self.resultBasicDataModelResult = nil;
  return returnMe;
}
- (BasicDataModelResultBuilder*) mergeFrom:(BasicDataModelResult*) other {
  if (other == [BasicDataModelResult defaultInstance]) {
    return self;
  }
  if (other.hasCode) {
    [self setCode:other.code];
  }
  if (other.hasInternalCode) {
    [self setInternalCode:other.internalCode];
  }
  if (other.hasMessage) {
    [self setMessage:other.message];
  }
  if (other.hasDebugMessage) {
    [self setDebugMessage:other.debugMessage];
  }
  if (other.hasData) {
    [self mergeData:other.data];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (BasicDataModelResultBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (BasicDataModelResultBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
        [self setCode:[input readInt32]];
        break;
      }
      case 16: {
        [self setInternalCode:[input readInt32]];
        break;
      }
      case 26: {
        [self setMessage:[input readString]];
        break;
      }
      case 34: {
        [self setDebugMessage:[input readString]];
        break;
      }
      case 42: {
        BasicDataModelBuilder* subBuilder = [BasicDataModel builder];
        if (self.hasData) {
          [subBuilder mergeFrom:self.data];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setData:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (BOOL) hasCode {
  return resultBasicDataModelResult.hasCode;
}
- (SInt32) code {
  return resultBasicDataModelResult.code;
}
- (BasicDataModelResultBuilder*) setCode:(SInt32) value {
  resultBasicDataModelResult.hasCode = YES;
  resultBasicDataModelResult.code = value;
  return self;
}
- (BasicDataModelResultBuilder*) clearCode {
  resultBasicDataModelResult.hasCode = NO;
  resultBasicDataModelResult.code = 0;
  return self;
}
- (BOOL) hasInternalCode {
  return resultBasicDataModelResult.hasInternalCode;
}
- (SInt32) internalCode {
  return resultBasicDataModelResult.internalCode;
}
- (BasicDataModelResultBuilder*) setInternalCode:(SInt32) value {
  resultBasicDataModelResult.hasInternalCode = YES;
  resultBasicDataModelResult.internalCode = value;
  return self;
}
- (BasicDataModelResultBuilder*) clearInternalCode {
  resultBasicDataModelResult.hasInternalCode = NO;
  resultBasicDataModelResult.internalCode = 0;
  return self;
}
- (BOOL) hasMessage {
  return resultBasicDataModelResult.hasMessage;
}
- (NSString*) message {
  return resultBasicDataModelResult.message;
}
- (BasicDataModelResultBuilder*) setMessage:(NSString*) value {
  resultBasicDataModelResult.hasMessage = YES;
  resultBasicDataModelResult.message = value;
  return self;
}
- (BasicDataModelResultBuilder*) clearMessage {
  resultBasicDataModelResult.hasMessage = NO;
  resultBasicDataModelResult.message = @"";
  return self;
}
- (BOOL) hasDebugMessage {
  return resultBasicDataModelResult.hasDebugMessage;
}
- (NSString*) debugMessage {
  return resultBasicDataModelResult.debugMessage;
}
- (BasicDataModelResultBuilder*) setDebugMessage:(NSString*) value {
  resultBasicDataModelResult.hasDebugMessage = YES;
  resultBasicDataModelResult.debugMessage = value;
  return self;
}
- (BasicDataModelResultBuilder*) clearDebugMessage {
  resultBasicDataModelResult.hasDebugMessage = NO;
  resultBasicDataModelResult.debugMessage = @"";
  return self;
}
- (BOOL) hasData {
  return resultBasicDataModelResult.hasData;
}
- (BasicDataModel*) data {
  return resultBasicDataModelResult.data;
}
- (BasicDataModelResultBuilder*) setData:(BasicDataModel*) value {
  resultBasicDataModelResult.hasData = YES;
  resultBasicDataModelResult.data = value;
  return self;
}
- (BasicDataModelResultBuilder*) setDataBuilder:(BasicDataModelBuilder*) builderForValue {
  return [self setData:[builderForValue build]];
}
- (BasicDataModelResultBuilder*) mergeData:(BasicDataModel*) value {
  if (resultBasicDataModelResult.hasData &&
      resultBasicDataModelResult.data != [BasicDataModel defaultInstance]) {
    resultBasicDataModelResult.data =
      [[[BasicDataModel builderWithPrototype:resultBasicDataModelResult.data] mergeFrom:value] buildPartial];
  } else {
    resultBasicDataModelResult.data = value;
  }
  resultBasicDataModelResult.hasData = YES;
  return self;
}
- (BasicDataModelResultBuilder*) clearData {
  resultBasicDataModelResult.hasData = NO;
  resultBasicDataModelResult.data = [BasicDataModel defaultInstance];
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
