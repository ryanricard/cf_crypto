# CfCrypto

A gem that helps Ruby applications exchange encrypted data with ColdFusion.

## Installation

Add this line to your application's Gemfile:

    gem 'cf_crypto'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cf_crypto

## Usage

### AES: the Advanced Encryption Standard specified by the National Institute of Standards and Technology (NIST) FIPS-197.

Not yet supported.

### BLOWFISH: the Blowfish algorithm defined by Bruce Schneier.

Not yet supported.

### DES: the Data Encryption Standard algorithm defined by NIST FIPS-46-3.

**CfCrypto::DES.encrypt(string, key)**

* string (required): a string to be encrypted
* key (required): key to be used by DES for encryption

**CfCrypto::DES.decrypt(string, key)**

* string (required): a string to be decrypted
* key (required): key to be used by DES for decryption

### DESEDE: the "Triple DES" algorithm defined by NIST FIPS-46-3.

Not yet supported.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
