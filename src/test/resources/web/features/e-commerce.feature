Feature: E-commerce de prueba

  @Smoke
  Scenario: Navegar al menu "Women" - "Tops" - "T-Shirts"
    Given Estamos en la pagina de Compras
    When seleccionamos del menu "Women" - "Tops" - "T-Shirts"
    Then se visualiza el menu de las secciones navegadas "Home>Women>Tops>T-Shirts"
    And se visualiza el encabezado de la sección con título "T-Shirts"
    And se visualiza la lista de filtros a la izquierda con el título "Catalog"
    And se muestra al menos un item en la sección de productos


  Scenario Outline: Navegar al menu '<Menu>' - '<submenu1>' - '<submenu2>'
    Given Estamos en la pagina de Compras
    When seleccionamos del menu '<Menu>' - '<submenu1>' - '<submenu2>'
    Then se visualiza el menu de las secciones navegadas "Home>"+'<Menu>'+">"+'<submenu1>'+">"+'<submenu2>'
    And se visualiza el encabezado de la sección con título '<submenu2>'
    And se visualiza la lista de filtros a la izquierda con el título "Catalog"
    And se muestra al menos un item en la sección de productos

    Examples:
    | menu			| submenu1				| submenu2 			|
    | Women			| Tops					| T-Shirts			|
    | Women			| Tops					| Blouses			|
    | Women			| Dresses				| Evening Dresses	|


  Scenario Outline: Agregar producto al carrito exitosamente
    Given Estamos en la pagina de Compras
    When navegamos al menu '<Menu>' - '<submenu1>' - '<submenu2>'
    And agregamos el primer producto de la lista al carrito haciendo click en "Add to Cart"
    #La idea es quedarse con la descripcion del producto para luego validar la existencia del mismo en la segunda aserción
    Then se verifica que se agrego el carrito aceptando la ventana pop-up que aparece
    And se verifica el producto agregado desde el carrito de compras

    Examples:
    | menu			| submenu1				| submenu2 			|
    | Women			| Tops					| T-Shirts			|
    | Women			| Tops					| Blouses			|
    | Women			| Dresses				| Evening Dresses	|