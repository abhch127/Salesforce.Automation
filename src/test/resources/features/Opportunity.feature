@Regression @Opportunity
Feature: Opportunity validation

  Background: 
    Given Admin has already logged into the application

  @OpportunityCreation-Print
  Scenario: Print Opportunity Creation
    Given user searches object name as "Pipeline" and record name as "AQUASANA 2024" and lands on record
    When User navigates to New Opportunity  for "Print" type
    And User updates the Opportunity entries
      | Element Name                   | Values                   |
      | Brand.SingleInputDropdown      | CLASSICO PRODUCTS        |
      | Advertiser.SingleInputDropdown | KRAFT HEINZ COMPANY, THE |
      | Title.SingleInputDropdown      | ALLRECIPES               |
      | Issue.SingleInputDropdown      | SPRING 2024 ALLRECIPES   |

    And User clicks Next Button
    And User clicks Next Button
    And User updates the Opportunity entries
      | Element Name                                      | Values |
      | Planning Agency.Lookup                            | BPN    |
      | Opp Estimate.TextBox                              | 10001  |
      | Foundry/Content Strategy involved?.SelectDropdown | Yes    |
    Then user confirms the creation of Opportunity Type "Print"


  @OpportunityCreation-Digital
  Scenario: Digital Opportunity creation
    Given User creates new account for "Advertiser" Record type
      | Element Name                                      | Values                      |
      | NewAccount.AccountName                            | Test_Advertiser_{TimeStamp} |
      | No Website.Checkbox                               | Y                           |
      | Account Record Sub Type.SingleInputDropdown       | Advertiser                  |
      | Billing City.TextBox                              | Burlington                  |
      | Billing Zip/Postal Code.TextBox                   |                       27215 |
      | Billing State/Province.SingleInputDropdown        | North Carolina              |
      | Billing Street.TextBox                            | 786 Boone Station Drive     |
      | Copy Billing Address to Shipping Address.Checkbox | Y                           |
      | Credit Status.SingleInputDropdown                 | Cash with Order             |
    And "Surfina Adams" approves the account
    And user creates a Pipeline
      | Element Name | Values |
      | Year.TextBox |   2021 |
    When User creates new Opportunity for "Digital" type
      | Element Name                             | Values                   |
      | Opp Name.TextBox                         | OPP-DGI-TEST             |
      | Select an Advertiser.SingleInputDropdown | {AccountName}            |
      | Opp Estimate.TextBox                     |                     4500 |
      | Campaign Start Date.Date                 | Jan 1, 2021              |
      | Campaign End Date.Date                   | Dec 31, 2021             |
      | Stage.SelectDropdown                     | 10% - Proposal Submitted |
      | Order Type.SingleInputDropdown           | Direct IO                |
      | Contextual.DuellistBox                   | Food & Drink             |

  @OpportunityCreation-F360
  Scenario: F360 Opportunity creation
    Given User creates new account for "Advertiser" Record type
      | Element Name                                      | Values                      |
      | NewAccount.AccountName                            | Test_Advertiser_{TimeStamp} |
      | No Website.Checkbox                               | Y                           |
      | Account Record Sub Type.SingleInputDropdown       | Advertiser                  |
      | Billing City.TextBox                              | Burlington                  |
      | Billing Zip/Postal Code.TextBox                   |                       27215 |
      | Billing State/Province.SingleInputDropdown        | North Carolina              |
      | Billing Street.TextBox                            | 786 Boone Station Drive     |
      | Copy Billing Address to Shipping Address.Checkbox | Y                           |
      | Credit Status.SingleInputDropdown                 | Cash with Order             |
    And "Surfina Adams" approves the account
    And user creates a Pipeline
      | Element Name | Values |
      | Year.TextBox |   2021 |
    When User creates new Opportunity for "F360" type
      | Element Name                             | Values          |
      | Select an Advertiser.SingleInputDropdown | {AccountName}   |
      | Select Project:.SelectDropdown           | Custom          |
      | Available Project Types.DuellistBox      | Digital Content |
      | Opp Estimate.TextBox                     |            3500 |
      | Close Date.Date                          | Dec 31, 2021    |
