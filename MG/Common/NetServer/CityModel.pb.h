// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import <ProtocolBuffers/ProtocolBuffers.h>

#import "AreaModel.pb.h"
// @@protoc_insertion_point(imports)

@class AreaModel;
@class AreaModelBuilder;
@class CityModel;
@class CityModelBuilder;



@interface CityModelRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

#define CityModel_CityId @"cityId"
#define CityModel_CityName @"cityName"
#define CityModel_AreaList @"areaList"
@interface CityModel : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasCityId_:1;
  BOOL hasCityName_:1;
  SInt32 cityId;
  NSString* cityName;
  NSMutableArray * areaListArray;
}
- (BOOL) hasCityId;
- (BOOL) hasCityName;
@property (readonly) SInt32 cityId;
@property (readonly, strong) NSString* cityName;
@property (readonly, strong) NSArray * areaList;
- (AreaModel*)areaListAtIndex:(NSUInteger)index;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (CityModelBuilder*) builder;
+ (CityModelBuilder*) builder;
+ (CityModelBuilder*) builderWithPrototype:(CityModel*) prototype;
- (CityModelBuilder*) toBuilder;

+ (CityModel*) parseFromData:(NSData*) data;
+ (CityModel*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (CityModel*) parseFromInputStream:(NSInputStream*) input;
+ (CityModel*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (CityModel*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (CityModel*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface CityModelBuilder : PBGeneratedMessageBuilder {
@private
  CityModel* resultCityModel;
}

- (CityModel*) defaultInstance;

- (CityModelBuilder*) clear;
- (CityModelBuilder*) clone;

- (CityModel*) build;
- (CityModel*) buildPartial;

- (CityModelBuilder*) mergeFrom:(CityModel*) other;
- (CityModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (CityModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasCityId;
- (SInt32) cityId;
- (CityModelBuilder*) setCityId:(SInt32) value;
- (CityModelBuilder*) clearCityId;

- (BOOL) hasCityName;
- (NSString*) cityName;
- (CityModelBuilder*) setCityName:(NSString*) value;
- (CityModelBuilder*) clearCityName;

- (NSMutableArray *)areaList;
- (AreaModel*)areaListAtIndex:(NSUInteger)index;
- (CityModelBuilder *)addAreaList:(AreaModel*)value;
- (CityModelBuilder *)setAreaListArray:(NSArray *)array;
- (CityModelBuilder *)clearAreaList;
@end


// @@protoc_insertion_point(global_scope)
