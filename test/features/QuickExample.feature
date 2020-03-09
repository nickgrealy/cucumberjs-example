
Feature: Using Cli Tags

    Scenario: No annotation
    Then pass test one

    @runme
    Scenario: Has an annotation
    Then pass test two

    @skip
    Scenario: Has a skip annotation
    Then pass test three