Feature: Pushing message from web interface
  To be able to push messages from nearly everywhere
  As a pushr
  I'd like to have a simple web interface to push messages

  Background:
    Given I post "foo" on the web interface

  Scenario: Pushing a message
    Then I should see "foo"

  Scenario: Posting more message
    When I post "42" on the web interface
    Then I should see "42"
    And I should see "foo"

