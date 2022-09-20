# frozen_string_literal: true

module AppAutomation

	class Appium

		INVOKE_TIMEOUT = 30
		APPIUM_PATH_HOMEBREW = '/usr/local/bin/appium'
		APPIUM_APP_PATH = '/Applications/Appium.app'
		APPIUM_APP_BUNDLE_PATH = 'Contents/Resources/node_modules/.bin/appium'

		@pid = nil

		def self.start(host: '127.0.0.1', port: '4723')
			appium = detect_appium
			command = appium.to_s
			command << " -a #{host}"
			command << " -p #{port}"
			command << ' --log-level error'

			@pid = `pgrep -f command`

			if $?.success?
				puts "Appium server detected #{@pid}"
			else
				puts 'Starting appium server...'
				@pid = Process.spawn(command)
			end
		end

		def self.stop(pid: @pid)
			if pid
				puts "Stopping appium server process id: #{pid}..."
				`kill #{pid}`
			end

			@pid = nil
		end

		def self.detect_appium
			appium_path = `which appium`.to_s.strip

			if appium_path.empty?
				if File.exist?(APPIUM_PATH_HOMEBREW)
					appium_path = APPIUM_PATH_HOMEBREW
				elsif File.exist?(APPIUM_APP_PATH)
					appium_path = APPIUM_APP_PATH
				end
			end

			raise Error, 'You have to install Appium using `npm install -g appium`' unless File.exist?(appium_path)

			appium_path = "#{appium_path}/#{APPIUM_APP_BUNDLE_PATH}" if appium_path.end_with?('.app')

			puts("Appium executable detected: #{appium_path}")
			appium_path
		end
	end
end
