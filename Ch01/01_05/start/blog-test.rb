require "selenium-webdriver"
require "rspec"

describe "Blog application" do 
    describe "Sign up to the blog app" do
        it "confirm that a user can successfully sign up" do
            # TEST: sign up for blog
            driver = Selenium::WebDriver.for :firefox
            # Go to signup form
            driver.navigate.to "https://selenium-blog.herokuapp.com/signup"

            # Fill out and submit form
            username_field = driver.find_element(id: 'user_username')
            username_field.send_keys("user")

            email_field = driver.find_element(id: 'user_email')
            email_field.send_keys("user@test.com")

            password_field = driver.find_element(id: 'user_password')
            password_field.send_keys("password")

            sign_up_button = driver.find_element(id: 'submit')
            sign_up_button.click

            # Confirm user is signed up successfully

            banner = driver.find_element(id: "flash_success")
            banner_text = banner.text
            expect(banner_text).to eq("Welcome to the alpha blog user")
            driver.quit
        end    

    end     
end