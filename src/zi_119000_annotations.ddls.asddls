@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 2: Annotations'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
@Metadata.allowExtensions: true
define view entity ZI_119000_Annotations
  as select from /dmo/flight
{
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.5
  key carrier_id     as CarrierId,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.5
  key connection_id  as ConnectionId,
  key flight_date    as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price          as Price,
      currency_code  as CurrencyCode,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.5
      plane_type_id  as PlaneTypeId,
      seats_max      as SeatsMax,
      seats_occupied as SeatsOccupied
}
