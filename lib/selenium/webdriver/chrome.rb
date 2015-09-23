require 'net/http'

require 'selenium/webdriver/chrome/service'
require 'selenium/webdriver/chrome/bridge'
require 'selenium/webdriver/chrome/profile'

module Selenium
  module WebDriver

    module Chrome
      def self.driver_path=(path)
        Service.executable_path = path
      end

      def self.path=(path)
        Platform.assert_executable path
        @path = path
      end

      def self.path
        @path ||= nil
      end

      def self.port=(port)
        @port = port
      end

      def self.port
        @port ||= 0
      end      

    end
  end
end
