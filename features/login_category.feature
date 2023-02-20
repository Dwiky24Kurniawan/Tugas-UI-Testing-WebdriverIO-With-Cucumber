Feature: To test the login functionality in "kasirAja"

  Background: 
    Given i am on the login page

  Scenario: i am login with invalid credentials
    When i input email as "<email>" and password as "<password>"
    And i click on button login
    Then i must remain on login page displaying a message "<errorMessageLogin>"

    Examples: 
      | email             | password    | errorMessageLogin                  |
      | tokonya@dwiky.com | toko24dwiky | Kredensial yang Anda berikan salah |

  Scenario: i am login with valid credentials
    When i input email as "toko@dwiky.com" and password as "toko24dwiky"
    And i click on button login
    Then i must navigate to dashboard page

  Scenario: i add category with valid input
    Given i am on the dashboard page
    When i click on category menu
    When i click on button tambah #kategori
    When i input name of category as "laptop" and description as "laptop"
    When i click button simpan
    Then i must see a successful message