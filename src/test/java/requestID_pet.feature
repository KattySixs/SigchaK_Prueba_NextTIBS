Feature: Consultar la mascota ingresada a la tienda

  Scenario: Consultar por ID la mascota
    Given url 'https://petstore.swagger.io/v2/pet/45671'
    When method get
    Then status 200
    And match response.id == 45671
    And match response.name == 'Espuma'