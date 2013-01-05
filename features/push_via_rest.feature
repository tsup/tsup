Feature: Post a tsup
  In order to have impact
  As a tsuper
  I'd like to post yo

  Background:
    Given I post "foo" on the REST interface

  Scenario: Posting a tsup
    When I visit the "/" page
    Then I should see "foo"

  Scenario: Posting more tsups
    When I post "42" on the REST interface
    When I visit the "/" page
    Then I should see "42"
    And I should see "foo"

