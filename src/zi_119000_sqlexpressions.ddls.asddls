@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 3: SQL Expressions'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119000_SqlExpressions
  as select from /dmo/connection
{
  key carrier_id                        as CarrierId,
  key connection_id                     as ConnectionId,
      airport_from_id                   as AirportFromId,
      airport_to_id                     as AirportToId,
      departure_time                    as DepartureTime,
      arrival_time                      as ArrivalTime,
      distance                          as Distance,
      distance + distance               as DoubleDistance,
      distance * 2                      as DoubleDistance2,
      cast(distance as abap.fltp) / 2.0 as HalfDistance,
      distance_unit                     as DistanceUnit,
      case distance_unit
        when 'KM' then 'Kilometer'
        when 'MI' then 'Meilen'
        else ''
      end                               as DistanceUnitText,
      case when distance > 2000 and distance_unit = 'KM' then 'Langstreckenflug'
           when distance > 1243 and distance_unit = 'MI' then 'Langstreckenflug'
           else 'Kurzstreckenflug'
      end                               as DistanceCategory
}
