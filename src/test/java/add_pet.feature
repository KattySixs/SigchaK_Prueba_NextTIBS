Feature: Añadir una mascota a la tienda

  Scenario: Añadir una nueva mascota
    Given url 'https://petstore.swagger.io/v2/pet'
    And request {"id": '123456',"category": { "id": 1, "name": "Dogs" },"name": "Rocky","photoUrls": [ "https://example.com/dog.jpg" ],"tags": [ { "id": 1, "name": "bulldog" } ],"status": "available"}
    When method post
    Then status 200
    And match response.id == 123456
    And match response.name == 'Rocky'
    And match response.status == 'available'