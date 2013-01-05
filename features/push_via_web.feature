Feature: Posting tsup from the web interface
  To be able to post tsups from nearly everywhere
  As a tsuper
  I'd like to have a simple web interface to post tsups

  Background:
    Given I post "foo" on the web interface

  Scenario: Posting a tsup
    Then I should see "foo"

  Scenario: Posting more tsup
    When I post "42" on the web interface
    Then I should see "42"
    And I should see "foo"
    And "42" should precede "foo"

