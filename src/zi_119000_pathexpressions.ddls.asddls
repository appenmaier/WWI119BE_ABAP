@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 7: Path Expressions'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119000_PathExpressions
  as select from ZI_119000_Associations
{
  key CarrierId,
  key ConnectionId,
  key _Flights.flight_date,
      AirportFromId,
      AirportToId,
      DepartureTime,
      ArrivalTime,
      Distance,
      DistanceUnit,
      _Flights.price,
      _Flights.currency_code
}
