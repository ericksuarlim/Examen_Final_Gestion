Feature: As a Nahual volunteer
         I want to logout from the system
         so I can safely stop using it 

Background:
  Given I am on the Nahual homepage
  And I click the "Iniciar Sesion" button    
  And I click the "Iniciar con Google" button 
  And I enter my email 
  And I click the "Siguiente" button   
  And I enter my password
  And I click the "Siguiente" button  

Scenario: Logout
Given I click the arrow button next to my username 
When I press "Cerrar Sesión" button        
Then I should logout form the system 