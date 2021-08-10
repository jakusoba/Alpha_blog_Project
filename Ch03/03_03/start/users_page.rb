class UsersPage
    #css selectors
    SUCCESS_BANNER = { id: 'flash_success' }

    # This ensures you are able to usethe driver instance through out this class
    attr_reader :driver

    #This is a constructor which passes in the driver. @driver is driver instance.
    def initialize(driver)
        @driver = driver 
    end 

    #css methods
    def get_banner_text()
        banner = @driver.find_element(SUCCESS_BANNER)
        banner.text
    end

end     