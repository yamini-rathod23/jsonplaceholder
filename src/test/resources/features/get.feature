Feature: GET(get) request to fetch a post

  Scenario: Get post by ID
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method get
    Then status 200
    And match response.id == 1
