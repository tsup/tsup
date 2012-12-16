Feature: Push a message
  In order to have impact
  As a Pusher
  I'd like to push yo

  Background:
    Given I post "foo" on the REST interface

  Scenario: Pushing a message
    When I visit the "/" page
    Then I should see "foo"

  Scenario: Posting more message
    When I post "42" on the REST interface
    When I visit the "/" page
    Then I should see "42"
    And I should see "foo"

