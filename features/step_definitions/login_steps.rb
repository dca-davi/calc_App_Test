Given('I am on Home Page') do
    @browser.goto "https://portal.hostgator.com/login"
  end
  
  When('Login with valid user') do
    @browser.input(id: "email").wait_until(&:present?).send_keys "dca_davi@hotmail.com"
    @browser.button(id: "loginBtn").wait_until(&:present?).click
    @browser.input(id: "password").wait_until(&:present?).send_keys "@A123456b"
    @browser.button(id: "loginBtn").click
  end
  
  Then('login successfully') do
    text = @browser.h3(class: "mb-4 fw-600 text-dark font-24").wait_until(&:present?).text
    expect(text.include?("Welcome")).to be true
  end