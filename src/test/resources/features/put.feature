Feature: PUT request to update a post

  Scenario: Update post by ID
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    And request
      """
      {
        "id": 1,
        "title": "updated title",
        "body": "updated body",
        "userId": 1
      }
      """
    When method put
    Then status 200
    And match response.title == "updated title"
    And match response.body == "updated body"
