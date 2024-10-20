Feature: plan de pruebas

  Scenario: caso de pruebas
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200