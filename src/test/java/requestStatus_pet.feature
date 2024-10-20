Feature: Consultar la mascota modificada por estatus

  Scenario: Consultar por status
    Given url 'https://petstore.swagger.io/v2/pet/findByStatus'
    And param status = 'sold'
    When method get
    Then status 200

    And match each response contains { status: 'sold' }
    And match response[1].id == 45671