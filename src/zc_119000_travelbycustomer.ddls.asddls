@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Travel by Customer'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_119000_TravelByCustomer
  as select from ZI_119000_TravelByCustomer
{
  key CustomerId,
      count(*)        as NumberOfTravels,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      sum(TotalPrice) as TotalExpenses,
      CurrencyCode
}
group by
  CustomerId,
  CurrencyCode
having
  count(*) > 10
