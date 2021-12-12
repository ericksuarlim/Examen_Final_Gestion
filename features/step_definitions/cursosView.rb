When(/^I enter the data for a new course$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
        case key
        when "Año:"
            fill_in '/html/body/div[2]/div/div[2]/form/div[1]/div/input', :with => value
        when "Periodo:"
            fill_in '/html/body/div[2]/div/div[2]/form/div[2]/div/input', :with => value

        when "Topico:"
            fill_in '/html/body/div[2]/div/div[2]/form/div[5]/div/input', :with => value
        
        when "Sede-Nodo:"
            fill_in '/html/body/div[2]/div/div[2]/form/div[6]/div/input', :with => value
    
        when "Horario:"
            fill_in '/html/body/div[2]/div/div[2]/form/div[7]/div/input', :with => value
        
        when "Profesor:"
            fill_in '/html/body/div[2]/div/div[2]/form/div[8]/div/input', :with => value
        
        when "Notas:"
            fill_in '/html/body/div[2]/div/div[2]/form/div[9]/div/input', :with => value
        end
    end
    sleep 8
end