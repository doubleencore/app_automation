# ----------------------------------------------------------------------
#
# Simulator
#
# ----------------------------------------------------------------------

module AppAutomation

	class Simulator
		attr_accessor :name, :runtime, :type

		def initialize(type: 'iPhone 13', runtime: 'iOS 15.5')
			@name = [type, runtime].join('_').gsub(' ', '_')
			@runtime = runtime
			@type = type
		end

		def to_s
			@name
		end
	end
end
