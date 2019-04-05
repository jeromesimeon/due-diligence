Feature: Due Diligence clause

  This describes the expected behavior for an Accord Project's template

  Background:
    Given the default contract in the initial state

  Scenario: The contract should be signed by buyer before submission to seller
    When buyer requests signature contract should be signed by buyer
    Then it should request signature from seller
"""
{
    "$class": "dueDiligence.SellerSignature",
    "output": "effectiveDate"
}
"""

  Scenario: The contract should be signed by buyer and have dueDiligencFee and dueDiligenceDate set by buyer
    When buyer requests signature contract should be signed by buyer, have dueDiligencFee and dueDiligenceDate
    Then it should request signature from seller
"""
{
    "$class": "dueDiligence.SellerSignature",
    "output": "effectiveDate"
}
"""


  Scenario: The contract should set the "Effective Date" by requesting response of signature from seller
    When it receives the signed response from the seller
    Then it should set the effective date
"""
{
    "$class": "dueDiligence.SellerSignature",
    "output": "effectiveDate"
}
"""

  Scenario: The contract should advance the state form UNSIGNED to SIGNED when it receives seller's signature

    When it receives the docusign response from the seller
    Then it should advance the state of the contract to SIGNED

"""
{

}
"""


  Scenario: When Buyer notifies contract that it cancels contract should advance state to CANCELLED

    When it receives request from Buyer to Cancel 
    Then it should advance the state of the contract to CANCELLED

"""
{


}
"""

    Scenario: When due diligence date arrive Contract should notify Buyer and Seller period is over

      When 
