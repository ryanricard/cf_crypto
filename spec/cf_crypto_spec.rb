require 'spec_helper'

describe "CfCrypto" do

	let(:sensitive_information){ "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." }

  describe "DES" do

		let(:des_key){ "sAd!DF%lX^ka&Gs*jHd" }

    it "should encrypt and decrypt a string" do
    	result = CfCrypto::DES.encrypt(sensitive_information, des_key)
    	result.should_not eq(sensitive_information)
    	result = CfCrypto::DES.decrypt(result, des_key)
			result.should eq(sensitive_information)
   	end

  end

end
