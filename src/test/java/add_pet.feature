Feature: Añadir una mascota a la tienda

  Scenario: Añadir una nueva mascota
    Given url 'https://petstore.swagger.io/v2/pet'
    And request {"id": '45671',"category": { "id": 1, "name": "Conejos" },"name": "Espuma","photoUrls": [ "https://petshopKatty.com/conejo1.jpg" ],"tags": [ { "id": 1, "name": "Blancos de Florida" } ],"status": "available"}
    When method post
    Then status 200
    And match response.id == 45671
    And match response.name == 'Espuma'
    And match response.status == 'available'