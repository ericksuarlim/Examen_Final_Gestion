
After do 
    Capybara.current_session.driver.quit
end


Before '@maximize' do
  page.driver.browser.manage.window.maximize
end

After '@deleteTopico' do 
  page.driver.browser.manage.window.maximize

  visit 'https://nahual-argentina-develop.vercel.app/cursos/topicos'
  xpath = '/html/body/div/div/div[4]/div[2]/div/div[2]/table/tbody/tr[6]/td[3]/div/button[2]'
  find(:xpath, xpath).click
  find(:xpath, '/html/body/div[2]/div/div[3]/button[2]').click

end
