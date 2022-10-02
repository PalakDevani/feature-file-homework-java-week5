Feature: Books Category

  Background: I should be able to see homepage
    Given I enter URL "https://demo.nopcommerce.com" in browser
    And I am on homepage

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When I am on homepage
    Then I should be able to see top menu tabs with "<categories>"
    Examples:
      | categories        |
      | Computer          |
      | Electronic        |
      | Apparel           |
      | Digital Downloads |
      | Books             |
      | Jewellery         |
      | Gift Card         |

  Scenario Outline: I should be able to see Books page with filters
    When I select Books category from top menu tab on homepage
    Then I should be navigated to books category
    And I sholud be able to see "<filters>"
    Examples:
      | filters  |
      | Sort by  |
      | Display  |
      | The Grid |
      | The List |

  Scenario Outline: I should be able to see list of terms of each filter
    Given I am on books page
    When I click on "<filter>"
    Then I should be able to see "<list>" in dropdown menu
    Examples:
      | filter  | List                                                                           |
      | sort by | Name: A to Z, Name: Z to A, Price: Low to High, Price: High to Low, created on |
      | Display | 3,6,9                                                                          |

  Scenario Outline: I should be able to select any filter option with specific result
    Given I am on books page
    When I click on "<filter>"
    And I click on any "<option>"
    Then I should be able to choose any filter option from the list
    And I should be able to see "<result>"
    Examples:
      | filter  | option             | result                                                            |
      | Sort by | Name: A to Z       | Sorted product with the product name in alphabetical order A to Z |
      | Sort by | Name: Z to A       | Sorted product with the product name in alphabetical order Z to A |
      | Sort by | Price: Low to High | Sorted product with the price in descending order                 |
      | Sort by | Price: High to Low | Sorted product with the price in ascending order                  |
      | Sort by | Created on         | Recently added product should be show first                       |
      | Display | 3                  | 3 product in a page                                               |
      | Display | 6                  | 6 product in a page                                               |
      | Display | 9                  | 9 product in a page                                               |

  Scenario Outline: I should be able to see product display format according display format type as per given picture in srs document
    Given I am on Books page
    When I click on "<display format icon>"
    Then I should be able to see product display format according display format type as per given picture in srs document
    Examples:
      | display format icon |
      | Grid                |
      | List                |