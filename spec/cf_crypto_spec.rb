require 'spec_helper'

describe "CfCrypto" do

	describe "DES" do

		let!(:cf_data) do
			{
				:key => '8nqocAg7V5s=',
				:encrypted => '90DEA49CE5CDF98F52862A258F468EC66F89D687DD0DC8A8',
				:decrypted => 'Super cool test string.'
			}
		end

		let!(:data) do
			{
				:decrypted => 'You can read this because its not encrypted.',
				:key => '2nrmcGw9P2v='
			}
		end

		before do
			puts
		end

		it "should encrypt and decrypt a string" do
			result = CfCrypto::DES.encrypt(data[:decrypted], data[:key])
			result.should_not eq(data[:decrypted])
			result = CfCrypto::DES.decrypt(result, data[:key])
			result.should eq(data[:decrypted])
		end

		it "should decrypt a string encrypted by ColdFusion" do
			result = CfCrypto::DES.decrypt(cf_data[:encrypted], cf_data[:key])
			result.should eq(cf_data[:decrypted])
		end

	end

end