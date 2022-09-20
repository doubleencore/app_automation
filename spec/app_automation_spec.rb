# frozen_string_literal: true

RSpec.describe AppAutomation do
	it "has a version number" do
		expect(AppAutomation::VERSION).not_to be nil
	end
end
