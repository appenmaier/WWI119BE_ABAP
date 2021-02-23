@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 2: Annotations'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@UI.headerInfo:{
    typeName: 'Flight',
    typeNamePlural: 'Flights'
}
@Search.searchable: true
define view entity ZI_119000_Annotations
  as select from /dmo/flight
{
      @UI.facet: [{ type: #IDENTIFICATION_REFERENCE, label: 'General Information' }]
      @UI:{
            selectionField: [{ position: 10 }],
            lineItem: [{ position: 10 }],
            identification: [{ position: 10 }]
      }
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.5
  key carrier_id     as CarrierId,
      @UI:{
          selectionField: [{ position: 20 }],
          lineItem: [{ position: 20 }],
          identification: [{ position: 20 }]
      }
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.5
  key connection_id  as ConnectionId,
      @UI:{
          selectionField: [{ position: 30 }],
          lineItem: [{ position: 30 }],
          identification: [{ position: 30 }]
      }
  key flight_date    as FlightDate,
      @UI:{
          lineItem: [{ position: 40 }],
          identification: [{ position: 40 }]
      }
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price          as Price,
      @UI.hidden: true
      currency_code  as CurrencyCode,
      @UI:{
            selectionField: [{ position: 50 }],
            lineItem: [{ position: 50 }],
            identification: [{ position: 50 }]
      }
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.5
      plane_type_id  as PlaneTypeId,
      @UI:{
            identification: [{ position: 60 }]
      }
      seats_max      as SeatsMax,
      @UI:{
            identification: [{ position: 70 }]
      }
      seats_occupied as SeatsOccupied
}
