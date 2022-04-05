Feature: Calc_Test_Build_2

    You can add/subtract/divide/multiply - all mathematical functions. 
    *When chosen, the page checks that you've entered numerical values. 
    You can also toggle whether you want your answer as an integer value.
    If you choose to concatonate, the system treats the inputs as strings, 
    and won't check numerical values. 
    You'll also not be able to select to get an integer value answer.

    
    Scenario: Add two numbers

        Given I access the home page
        When I filled in the fields "2", "3"
        And select operation "Add"
        Then I have to get the result
        
    Scenario: Subtraction of numbers
    
        Given I access the home page
        When I filled in the fields "2", "3"
        And select operation "Subtract"
        Then I have to get the result

    Scenario: Multiply two numbers
    
        Given I access the home page
        When I filled in the fields "2", "3"
        And select operation "Multiply"
        Then I have to get the result
    
    Scenario: Divide two numbers
    
        Given I access the home page
        When I filled in the fields "2", "3"
        And select operation "Divide"
        Then I have to get the result

    Scenario: Concatenate two numbers
    
        Given I access the home page
        When I filled in the fields "2", "3"
        And select operation "Concatenate"
        Then I have to get the result
    
    Scenario: Only intergers numbers
    
        Given I access the home page
        When I filled in the fields "5", "2"
        And select operation "Divide"
        Then select integer only
    
    Scenario: First invalid number
    
        Given I access the home page
        When I filled in the fields "a", "2"
        And select operation "Subtract"
        Then I see the message "Number 1 is not a number"

    Scenario: Invalid second number
    
        Given I access the home page
        When I filled in the fields "2", "b"
        And select operation "Subtract"
        Then I see the message "Number 2 is not a number"