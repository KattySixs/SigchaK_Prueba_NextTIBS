Feature: Actualizar la mascota ingresada

  Scenario: Actualizar nombre y estado de la mascota
    Given url 'https://petstore.swagger.io/v2/pet'
    And request {"id": '45671',"category": { "id": 1, "name": "Conejos" },"name": "Espuma_edi","photoUrls": [ "https://petshopKatty.com/conejo1.jpg" ],"tags": [ { "id": 1, "name": "Blancos de Florida" } ],"status": "sold"}
    When method put
    Then status 200
    And match response.id == 45671
    And match response.name == 'Espuma_edi'
    And match response.status == 'sold'
