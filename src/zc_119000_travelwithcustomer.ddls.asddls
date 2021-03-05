@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Travel with Customer'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_119000_TravelWithCustomer
  as select from ZI_119000_TravelWithCustomer
{
  key TravelId,
      AgencyId,
      CustomerId,
      _Customer.first_name,
      _Customer.last_name,
      BeginDate,
      EndDate,
      Price,
      TotalPrice,
      BookingFee,
      CurrencyCode,
      Description,
      Status
}
