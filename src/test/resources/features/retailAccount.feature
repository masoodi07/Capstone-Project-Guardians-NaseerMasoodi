@AllScen
Feature: Retail Account Page​

  Background: 
    Given User is on retail website
    When User click on Sign in option
    And User enter email 'guardianscucumber03@gmail.com' and password 'Guardians345$'
    And User click on login button
    And User should be logged in into Account
    When User click on Account option

  @updateInfo
  Scenario: Verify User can update Profile Information
    And User click on Account option
    And User update Name 'Nas' and Phone 'phoneNumber'
    And User click on Update button
    Then user profile information should be updated

  @addPayment
  Scenario: Verify User can add a payment method
    And User click on Add a payment method link
    And User fill Debit or credit card information
      | cardNumber | nameOnCard | expirationMonth | expirationYear | securityCode |
      | cardNumber | nas       |               9 |           2024 |          234 |
    And User click on Add your card button
    Then a message should be displayed 'Payment Method added successfully'

  @editPayment
  Scenario: Verify User can edit Debit or Credit card
    And User click on Edit option of card section
    And user edit information with below data
      | cardNumber | nameOnCard | expirationMonth | expirationYear | securityCode |
      | cardNumber | 'Nas'      |               2 |           2025 |          900 |
    And user click on Update Your Card button
    #Then update message should be displayed 'Payment Method updated sucessfully'

  @removeCard
  Scenario: Verify User can remove Debit or Credit card
    And User click on remove option of card section
    Then payment details should be removed

  @addAddress
  Scenario: Verify User can add an Address
    And User click on Add address option
    And user fill new address form with below information
      | country       | fullName     | phoneNumber | streetAddress | apt | city       | state    | zipCode |
      | United States | Nase Mas | phoneNumber |            221 Sac |  28 | Sacramento | California | 95821 |
    And User click Add Your Address button
    Then address message should be displayed 'Address Added Successfully'

 
  @removeAddress
  Scenario: Verify User can remove Address from Account
    And User click on remove option of Address section
    Then Address details should be removed
