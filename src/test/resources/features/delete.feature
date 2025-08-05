Feature: DELETE request to delete a post

  Scenario: Delete post by ID
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method delete
    Then status 200
