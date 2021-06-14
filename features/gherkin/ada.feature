Feature: ADA Validations

  @ada
  Scenario: Search validation to show data entry
    Given the user navigates to the My Store Home page
    Then HTML Code Sniffer is ran for the My Store Home page

  @ada
  Scenario: Search validation to show data entry
    Given the user navigates to the My Store Home page
    And the user fills in "shirt" for search field
    When the user clicks submit search
    And the application navigates to the My Store Search Results page
    And the user validates the page displays the Faded Short Sleeve shirt section
    Then HTML Code Sniffer is ran for the My Store Search Results page