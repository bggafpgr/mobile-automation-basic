Feature: Basic Actions

  @WIP
  Scenario: Search for iPhone 7
    When I click "Search box"
    And  I search for "iPhone 7"
    Then I see the following fields:
      | Save Button   |
      | Sort Button   |
      | Filter Button |

  @WIP
  Scenario: Buy iPhone 7
    When I click "Search box"
    And  I search for "Apple iPhone 7 32GB 128GB 256GB UNLOCKED SMARTPHONE GSM ALL COLORS"
    And  I click "First Search Result"
    And  I scroll to "BUY IT NOW"
    And  I "select options" with following data:
      | Storage Capacity Selector | Color Selector |
      | 128GB                     | Gold           |
    And  I click "BUY IT NOW"
    Then I see the following fields:
      | Sign in               |
      | USE EMAIL OR USERNAME |
      | SIGN IN WITH GOOGLE   |
      | SIGN IN WITH FACEBOOK |
      | CREATE AN ACCOUNT     |

  @WIP
  Scenario: Add iPhone to cart
    When I click "Search box"
    And  I search for "Apple iPhone 7 32GB 128GB 256GB UNLOCKED SMARTPHONE GSM ALL COLORS"
    And  I click "First Search Result"
    And  I scroll to "Add to cart"
    And  I click "Add to cart"
    And  I "select options" with following data:
      | Storage Capacity Selector | Color Selector |
      | 128GB                     | Gold           |
    And  I click "Add to cart"
    Then I see the following fields:
      | Sign in               |
      | USE EMAIL OR USERNAME |
      | SIGN IN WITH GOOGLE   |
      | SIGN IN WITH FACEBOOK |
      | CREATE AN ACCOUNT     |

  @WIP
  Scenario: Check categories
    When I click "Stack button"
    And  I click "Categories"
    Then I see the following fields:
      | Antiques |
      | Art      |
      | Baby     |
      | Books    |

  @WIP
  Scenario: Check categories - Antiques
    When I click "Stack button"
    And  I click "Categories"
    And  I click "Antiques"
    Then I see the following fields:
      | Antiquities            |
      | Architectural & Garden |
      | Asian Antiques         |
      | Decorative Arts        |

  @WIP
  Scenario: Check categories - Antiques - Ethnographics
    When I click "Stack button"
    And  I click "Categories"
    And  I click "Antiques"
    And  I click "Ethnographic"
    Then I see the following fields:
      | African                   |
      | Latin American            |
      | Native American           |
      | Pacific Islands & Oceania |

  @WIP
  Scenario: Validate - Create a business account screen
    When I click "Register"
    And  I click "Create a business account"
    Then I see the following fields:
      | Legal business name  |
      | Legal business email |
      | Reenter email        |
      | Password             |
      | Legal business phone |

  @HOMEWORK @IMPLEMENT_THIS
  Scenario: Check categories - Cameras & Photo
    When I click "Stack button"
    And  I click "Categories"
    And  I click "Cameras And Photo"
    Then I see the following fields:
      | Camcorders       |
      | Camera Drones    |
      | Digital Cameras  |
      | Film Photography |

  @HOMEWORK @IMPLEMENT_THIS
  Scenario: Check available options for Nikon
    When I click "Stack button" 
    And  I click "Categories"
    And  I click "Cameras And Photo"
    And  I click "Digital Cameras"
    And  I click "Nikon"
    And  I click "Series"
    And  I click "Nikon D"
    And  I click "Nikon D5600"
    Then I see the following fields:
      | Authorized Seller |
      | Hot This Week      |

  @HOMEWORK @IMPLEMENT_THIS
  Scenario: Check languages
    When I click "Stack button"
    And  I scroll to "Settings"
    And  I click "Settings"
    And  I click "Country or region"
    And  I click "Switch widget"
    When I click "United States"
    And  I search for "Sw"
    Then I see the following fields:
      | Sweden      |
      | Switzerland |
