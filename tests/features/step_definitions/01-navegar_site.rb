Dado('que acesso o menu Cloud Solutions') do
   visit 'https://www.gwcloud.company'
end

Quando('aciono o submenu Jamcracker') do
    visit '/jamcracker'
end
   
Então('o sistema deve exibir a página com as informações sobre Jamcracker') do
    expect(page).to have_current_path('https://www.gwcloud.company/jamcracker', url: true)
end