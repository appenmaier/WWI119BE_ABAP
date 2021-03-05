@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 5: Aggregations'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119000_Aggregations
  as select from /dmo/flight
{
  key carrier_id                            as CarrierId,
  key connection_id                         as ConnectionId,
      count(*)                              as Count1,
      count(distinct plane_type_id)         as CountDistinct1,
      sum(seats_occupied)                   as Sum1,
      sum(seats_max)                        as Sum2,
      avg(seats_occupied as abap.dec(16,0)) as Avg1,
      min(seats_occupied)                   as Min1,
      max(seats_occupied)                   as Max1
}
group by
  carrier_id,
  connection_id
having
  avg(seats_occupied) < 150
