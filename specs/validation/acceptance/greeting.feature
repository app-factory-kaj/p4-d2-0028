Feature: Greeting

  @story-1
  Rule: Requesting a greeting with a name returns a greeting addressed to that name

    Scenario: A named greeting
      Given the greeter service is running
      When an API Client calls GET /hello with name "Alice"
      Then the response is a JSON greeting addressed to "Alice"

  @story-2
  Rule: Requesting a greeting without a name still returns a default greeting

    Scenario: No name supplied
      Given the greeter service is running
      When an API Client calls GET /hello with no name parameter
      Then the response is a default JSON greeting

    Scenario: An empty name supplied
      Given the greeter service is running
      When an API Client calls GET /hello with name ""
      Then the response is a default JSON greeting
