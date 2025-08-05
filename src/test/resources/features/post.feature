Feature: POST request to create a post

  Scenario: Create a new post
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request
      """
      {
        "title": "foo",
        "body": "bar",
        "userId": 1
      }
      """
    When method post
    Then status 201
    And match response.title == "foo"
    And match response.userId == 1
