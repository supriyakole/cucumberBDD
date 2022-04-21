Feature: this Feature is for calculation of add & sub

  Scenario: To add two numbers
    Given I have calculator
    When I add 6 and 5
    Then The result should be the output as 11

  Scenario: To sub two numbers
    Given I have calculator
    When I sub 8 and 5
    Then The result should be the output as 3

  Scenario Outline: To add two numbers using scenario outline
    Given I have calculator
    When I add <num1> and <num2>
    Then The result should be the output as <result>

    Examples: 
      | num1 | num2 | result |
      |    4 |    7 |     11 |
      |    3 |    5 |      8 |

  Scenario: Add multiple numbers using cucumber data table
    Given I have calculator
    When I add below numbers
      | 4 |
      | 5 |
      | 7 |
      | 8 |
    Then The result should be the output as 24

  Scenario: Add multiple numbers using cucumber data table
    Given I have calculator
    When I add below numbers using list
      |  4 |
      |  5 |
      |  7 |
      |  8 |
      | 10 |
    Then The result should be the output as 34

  Scenario: To calculate the total bill of the order
    Given I have calculator
    When I order below items
      | coffee | 23 |
      | tea    | 27 |
      | burger | 50 |
    Then The result should be the output as 100
    
    Scenario: To calculate the total bill of the order using quanitity
    Given I have calculator
    When I order below items and quantity
      | coffee | 1 | 10 |
      | tea    | 2 | 20 |
      | burger | 3 | 30 |
    Then The result should be the output as 140

    
