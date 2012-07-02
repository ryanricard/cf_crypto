require "cf_crypto/version"

module CfCrypto

	require "openssl"
	require "Base64"

	#DES decryption module
	module DES

		def self.decrypt(string, key)
			decipher = OpenSSL::Cipher::Cipher.new('des-ecb')
			decipher.decrypt
			decipher.key = Base64.decode64(key.strip)
			data = hex_to_data(string)
			data = decipher.update(data) + decipher.final()
		end

		def self.encrypt(string, key)
			decipher = OpenSSL::Cipher::Cipher.new('des-ecb')
			decipher.encrypt
			decipher.key = Base64.decode64(key.strip)
			data = decipher.update(string) + decipher.final()
			data_to_hex(data)
		end

		private

		def self.data_to_hex(string)
			string.strip.unpack('H*')[0]
		end

		def self.hex_to_data(hex)
			Array(hex.strip).pack('H*')
		end

	end

end
