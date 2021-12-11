Feature: As a Nahual volunteer
         I want to clean the node filter of the egresades table on companies
         So I can see all the egresades of the different nodes after filtering 

Background:
  Given I am on the Nahual homepage
  And I click the "Iniciar Sesion" button    
  And I click the "Iniciar con Google" button 
  And I enter my email 
  And I click the "Siguiente" button   
  And I enter my password
  And I click the "Siguiente" button 

  And I click the "Verificar Acceso" button 
  And I see the message "Bienvenide"

Scenario: clean nodes filter of egresades table on companies           
  Given I click the "Empresas" button
  When I can see the "Empresas" page
  And I click the "Filtrar" button
  And I click the "Nodos" button
  When I press the "Santa Fe" button
  Then I should only see egresades belonging to the Santa Fe node
  When I press the buton x to close the filter called "Quitar Todos"
  Then I should see egresades from different nodes