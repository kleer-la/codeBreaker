
Given("que iniciamos el juego") do
    visit '/'
  end
  
  When("adivine con {string}") do |string|
    fill_in("clave", :with => string)
    click_button("validar")
  end
  
  Then("debe mostrarme {string}") do |resultado|
    expect(page.body).to match /#{resultado}/m
  end