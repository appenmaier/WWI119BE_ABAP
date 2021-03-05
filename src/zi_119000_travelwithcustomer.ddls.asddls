@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Travel with Customer'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119000_TravelWithCustomer
  as select from ZI_119000_TravelExtended
  association [1] to /dmo/customer as _Customer on ZI_119000_TravelExtended.CustomerId = _Customer.customer_id
{
  key TravelId,
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      Price,
      TotalPrice,
      BookingFee,
      CurrencyCode,
      Description,
      Status,
      _Customer
}
