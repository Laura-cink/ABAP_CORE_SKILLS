@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZLT_R_CONNECTION'
define root view entity ZLT_C_CONNECTION
  provider contract transactional_query
  as projection on ZLT_R_CONNECTION
{
  key UUID,
  @Consumption.valueHelpDefinition: 
  [{ entity: { name: 'ZLT_I_CarrierVH_II', element: 'CarrierID' } }] CarrierID,
  ConnectionID,
  AirportFromID,
  CityFrom,
  CountryFrom,
  AirportToID,
  CityTo,
  CountryTo,
  LocalLastChangedAt
  
}
