@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Werthilfe'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZLT_I_CarrierVH as select from /DMO/AIRPORT
{
    key airport_id as AirportId,
    name as Name,
    city as City,
    country as Country
}
