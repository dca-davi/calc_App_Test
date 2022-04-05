

After do |scenario|
    nome_scenario = scenario.name.gsub(' ', '_').downcase!
    screenshot = "log/screenshot/#{nome_scenario}.png"
    page.save_screenshot(screenshot)
end