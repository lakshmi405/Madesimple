#Longin component
Scenario: When I land on login page,login fields should be visible.
Given I visit the login page
Then I should see login component visible 
And I should see following fields
|email|
|password|
|show password|
|forgotten your password|
|Login|


Scenario: Successful login
Given I visit the login page
When I submit valid user login detials
|aparnalaxmi15@gmail.com|
|Passw0rd!|
Then I should be succcesfully logged in

Scenario: Invalid login attemps
Given I vist the login page
When I submit the  invalid user detials
Then I should see login form email erros messages
And login form password error messages


Scenario Outline: Forgotten your password page
Given I visit the login page
When I click on "<link>"
Then I should navigate to forgotten your password page
And I should see email filed

Examples: navigate to the forgotten your password page
|forgotten your password|
|reset your password|

#Create an account component
Scenario Outline:Create an account component should be visible on login page.
Given I visit the login page
Then I should see create an account block 
And I should see a create an account link
And I should see a create account button
When I click on "<anchor>"
Then I should navigate to creare account page

Example: Navigate to creare account page
|create an account link|
|create account button|


#Nav bar component
Scenario:Moneypenny logo should visible on login page nav bar
Given I vist the login page
Then I should see nav bar component
And I should see MadeSimple and moneypenny logo


#Header compoment
Scenario:Header components should be visible.
Given I vist the login page
Then I should see header component with
|contact us information|
|company formation link|
|Mega menu|


Scenario: mega menu
Given I vist the login page
When I mouse hover on mega menu
Then I should see sub-menu items shown

#Footer component
Scenario:Footer components should be visible
Given I visit the login page
Then I should see footer section visible
|main links|
|info & assistance|
|social links|
|contact us information|
|payment cards logos|
|Feefo logo|
|Your business essentials|
|Group contact details|
|copyright information |



#Chat now component
Scenario: Chat now component
Given I visit the login page
Then I should see chat now button vissible



#SEO
Scenario: SEO information on login page
Given I visit the login page
When I verify the page source 
Then I should see seo information 
|meta description|
|title|
|robots|
And it should not be empty


#Ananlytics
Scenario: Login page analytics
Given I visit the login page
When I perform any action on the page
Then I should see anaytics events triggered


