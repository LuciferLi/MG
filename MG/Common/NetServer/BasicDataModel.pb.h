// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import <ProtocolBuffers/ProtocolBuffers.h>

#import "ProvinceModel.pb.h"
#import "PositionModel.pb.h"
#import "IndustryModel.pb.h"
#import "ProductStageModel.pb.h"
#import "FinancingStageModel.pb.h"
#import "KeyValuePairStringBool.pb.h"
#import "ServiceScopeModel.pb.h"
// @@protoc_insertion_point(imports)

@class AreaModel;
@class AreaModelBuilder;
@class BasicDataModel;
@class BasicDataModelBuilder;
@class CityModel;
@class CityModelBuilder;
@class FinancingStageModel;
@class FinancingStageModelBuilder;
@class IndustryModel;
@class IndustryModelBuilder;
@class KeyValuePairStringBool;
@class KeyValuePairStringBoolBuilder;
@class PositionModel;
@class PositionModelBuilder;
@class ProductStageModel;
@class ProductStageModelBuilder;
@class ProvinceModel;
@class ProvinceModelBuilder;
@class ServiceScopeModel;
@class ServiceScopeModelBuilder;



@interface BasicDataModelRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

#define BasicDataModel_ProvinceList @"provinceList"
#define BasicDataModel_PositionList @"positionList"
#define BasicDataModel_IndustryList @"industryList"
#define BasicDataModel_ProductStageList @"productStageList"
#define BasicDataModel_FinancingStageList @"financingStageList"
#define BasicDataModel_ShareList @"shareList"
#define BasicDataModel_ServiceScopeList @"serviceScopeList"
@interface BasicDataModel : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  NSMutableArray * provinceListArray;
  NSMutableArray * positionListArray;
  NSMutableArray * industryListArray;
  NSMutableArray * productStageListArray;
  NSMutableArray * financingStageListArray;
  NSMutableArray * shareListArray;
  NSMutableArray * serviceScopeListArray;
}
@property (readonly, strong) NSArray * provinceList;
@property (readonly, strong) NSArray * positionList;
@property (readonly, strong) NSArray * industryList;
@property (readonly, strong) NSArray * productStageList;
@property (readonly, strong) NSArray * financingStageList;
@property (readonly, strong) NSArray * shareList;
@property (readonly, strong) NSArray * serviceScopeList;
- (ProvinceModel*)provinceListAtIndex:(NSUInteger)index;
- (PositionModel*)positionListAtIndex:(NSUInteger)index;
- (IndustryModel*)industryListAtIndex:(NSUInteger)index;
- (ProductStageModel*)productStageListAtIndex:(NSUInteger)index;
- (FinancingStageModel*)financingStageListAtIndex:(NSUInteger)index;
- (KeyValuePairStringBool*)shareListAtIndex:(NSUInteger)index;
- (ServiceScopeModel*)serviceScopeListAtIndex:(NSUInteger)index;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (BasicDataModelBuilder*) builder;
+ (BasicDataModelBuilder*) builder;
+ (BasicDataModelBuilder*) builderWithPrototype:(BasicDataModel*) prototype;
- (BasicDataModelBuilder*) toBuilder;

+ (BasicDataModel*) parseFromData:(NSData*) data;
+ (BasicDataModel*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (BasicDataModel*) parseFromInputStream:(NSInputStream*) input;
+ (BasicDataModel*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (BasicDataModel*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (BasicDataModel*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface BasicDataModelBuilder : PBGeneratedMessageBuilder {
@private
  BasicDataModel* resultBasicDataModel;
}

- (BasicDataModel*) defaultInstance;

- (BasicDataModelBuilder*) clear;
- (BasicDataModelBuilder*) clone;

- (BasicDataModel*) build;
- (BasicDataModel*) buildPartial;

- (BasicDataModelBuilder*) mergeFrom:(BasicDataModel*) other;
- (BasicDataModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (BasicDataModelBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (NSMutableArray *)provinceList;
- (ProvinceModel*)provinceListAtIndex:(NSUInteger)index;
- (BasicDataModelBuilder *)addProvinceList:(ProvinceModel*)value;
- (BasicDataModelBuilder *)setProvinceListArray:(NSArray *)array;
- (BasicDataModelBuilder *)clearProvinceList;

- (NSMutableArray *)positionList;
- (PositionModel*)positionListAtIndex:(NSUInteger)index;
- (BasicDataModelBuilder *)addPositionList:(PositionModel*)value;
- (BasicDataModelBuilder *)setPositionListArray:(NSArray *)array;
- (BasicDataModelBuilder *)clearPositionList;

- (NSMutableArray *)industryList;
- (IndustryModel*)industryListAtIndex:(NSUInteger)index;
- (BasicDataModelBuilder *)addIndustryList:(IndustryModel*)value;
- (BasicDataModelBuilder *)setIndustryListArray:(NSArray *)array;
- (BasicDataModelBuilder *)clearIndustryList;

- (NSMutableArray *)productStageList;
- (ProductStageModel*)productStageListAtIndex:(NSUInteger)index;
- (BasicDataModelBuilder *)addProductStageList:(ProductStageModel*)value;
- (BasicDataModelBuilder *)setProductStageListArray:(NSArray *)array;
- (BasicDataModelBuilder *)clearProductStageList;

- (NSMutableArray *)financingStageList;
- (FinancingStageModel*)financingStageListAtIndex:(NSUInteger)index;
- (BasicDataModelBuilder *)addFinancingStageList:(FinancingStageModel*)value;
- (BasicDataModelBuilder *)setFinancingStageListArray:(NSArray *)array;
- (BasicDataModelBuilder *)clearFinancingStageList;

- (NSMutableArray *)shareList;
- (KeyValuePairStringBool*)shareListAtIndex:(NSUInteger)index;
- (BasicDataModelBuilder *)addShareList:(KeyValuePairStringBool*)value;
- (BasicDataModelBuilder *)setShareListArray:(NSArray *)array;
- (BasicDataModelBuilder *)clearShareList;

- (NSMutableArray *)serviceScopeList;
- (ServiceScopeModel*)serviceScopeListAtIndex:(NSUInteger)index;
- (BasicDataModelBuilder *)addServiceScopeList:(ServiceScopeModel*)value;
- (BasicDataModelBuilder *)setServiceScopeListArray:(NSArray *)array;
- (BasicDataModelBuilder *)clearServiceScopeList;
@end


// @@protoc_insertion_point(global_scope)
