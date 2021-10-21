@Opportunity
Feature: Opportunity validation

  Background: 
    Given Admin has already logged into the application

  @Opportunity_Creation-Print
  Scenario: Print Opportunity Creation
   Given User creates new account for "Advertiser" Record type
      | Element Name                               					  | Values                      |
      | NewAccount.AccountName                    					  | Test_Advertiser_{TimeStamp} |
      | Billing City.TextBox                    				      | Burlington                  |
      | Billing Zip/Postal Code.TextBox          					  |                       27215 |
      | Account Record Sub Type.SingleInputDropdown                   | Advertiser                  |
      | Billing State/Province.SingleInputDropdown | North Carolina              |
      | Credit Status.SingleInputDropdown          | Cash with Order             |
      | Billing Street.TextBox                     | 786 Boone Station Drive     |
    And "Surfina Adams" approves the account
    And user creates a Pipeline
      | Element Name                  | Values |
      | Year.TextBox |   2021 |
    When User creates new Opportunity for "Print" type
      | Element Name                             | Values                           |
      | Select an Advertiser.SingleInputDropdown | Test_Advertiser_Oct18_1406       |
      | Stage.SelectDropdown                     | 10% - Proposal Submitted         |
      | Available Titles.DuellistBox             | ALLRECIPES                       |
      | Opp Estimate for ALLRECIPES.TextBox      |                             1000 |
      | Available Issues.DuellistBox             | DECEMBER/JANUARY 2022 ALLRECIPES |
      
      
  @Opportunity_Creation-2
  Scenario: Digital Opportunity creation
   Given User creates new account for "Advertiser" Record type
      | Element Name                               					  | Values                      |
      | NewAccount.AccountName                    					  | Test_Advertiser_{TimeStamp} |
      | Billing City.TextBox                    				      | Burlington                  |
      | Billing Zip/Postal Code.TextBox          					  |                       27215 |
      | Account Record Sub Type.SingleInputDropdown                   | Advertiser                  |
      | Billing State/Province.SingleInputDropdown | North Carolina              |
      | Credit Status.SingleInputDropdown          | Cash with Order             |
      | Billing Street.TextBox                     | 786 Boone Station Drive     |
    And "Surfina Adams" approves the account
    And user creates a Pipeline
      | Element Name                  | Values |
      | Year.TextBox |   2021 |
    When User creates new Opportunity for "Digital" type
      | Element Name                             | Values                           |
      | Opp Name.TextBox 						 | OPP-DGI-TEST						|
      | Select an Advertiser.SingleInputDropdown | {AccountName}      			    |
      | Opp Estimate.TextBox      				 |                             4500 |
      | Campaign Start Date.Date				 | Jan 1, 2021 						|
      | Campaign End Date.Date  				 | Dec 31, 2021 					|
      | Stage.SelectDropdown                     | 10% - Proposal Submitted         |
      | Order Type.SingleInputDropdown			 | Direct IO                        |
      | Contextual.DuellistBox            		 | Food & Drink                     |
      
  @Opportunity_Creation-3
  Scenario: F360 Opportunity creation
   Given User creates new account for "Advertiser" Record type
      | Element Name                               					  | Values                      |
      | NewAccount.AccountName                    					  | Test_Advertiser_{TimeStamp} |
      | Billing City.TextBox                    				      | Burlington                  |
      | Billing Zip/Postal Code.TextBox          					  |                       27215 |
      | Account Record Sub Type.SingleInputDropdown                   | Advertiser                  |
      | Billing State/Province.SingleInputDropdown | North Carolina              |
      | Credit Status.SingleInputDropdown          | Cash with Order             |
      | Billing Street.TextBox                     | 786 Boone Station Drive     |
    And "Surfina Adams" approves the account
    And user creates a Pipeline
      | Element Name                  | Values |
      | Year.TextBox |   2021 |
       When User creates new Opportunity for "F360" type
   	  | Element Name                             | Values                           |
      | Select an Advertiser.SingleInputDropdown | {AccountName}     	|
      | Select Project:.SelectDropdown           | Custom							|
      | Available Project Types.DuellistBox		 | Digital Content					|
      | Opp Estimate.TextBox      				 |                             3500 |
      | Close Date.Date  						 | Dec 31, 2021 					|
