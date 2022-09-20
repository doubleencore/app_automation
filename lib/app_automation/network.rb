# frozen_string_literal: true

require 'socket'

module AppAutomation

	class Network

		def self.ip_addr
			Socket.ip_address_list
				.reject( &:ipv4_loopback? )
				.reject( &:ipv6_loopback? )
				.reject( &:ipv6? )
				.first
				.ip_address
		end
	end
end
