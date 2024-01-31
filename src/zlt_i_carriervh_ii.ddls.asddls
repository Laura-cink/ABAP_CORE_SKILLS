@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Werthilfe'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZLT_I_CarrierVH_II as select from /dmo/carrier
{
    @UI.lineItem: [{position: 10 }] key carrier_id as CarrierID, 
    @UI.lineItem: [{position: 20 }] name as Name
}
