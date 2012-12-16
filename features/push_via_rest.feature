Feature: Push a message
  In order to have impact
  As a Pusher
  I'd like to push yo

  Background:
    Given I post "foo" on the REST interface

  @wip
  Scenario: Pushing a message
    Then I see "foo" on the web interface

  @wip
  Scenario: Posting more message
    When I post "42 on the REST interface
    Then I see "42" on the web interface
    And I see "foo" on the web interface

