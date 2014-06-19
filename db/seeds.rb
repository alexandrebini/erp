require 'net/http'
require 'json'

module BRPopulate
  def self.states
    http = Net::HTTP.new('raw.githubusercontent.com', 443)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    JSON.parse http.get('/celsodantas/br_populate/master/states.json').body
  end

  def self.populate
    states.each do |state|
      state_obj = State.new(abbr: state['acronym'], name: state['name'])
      state_obj.save

      state['cities'].each do |city|
        c = City.new
        c.name = city
        c.state = state_obj
        c.save
      end
    end
  end
end

BRPopulate.populate

Vendor.create(
  name: 'Vendedor',
  address: Address.new(
    street: 'Rua 1',
    number: '2',
    postal_code: '16200000',
    city: City.first
  ),
  contacts: [
    Contact.new(type: 'email', value: 'vendedor@email.com'),
    Contact.new(type: 'phone', value: '1836414382'),
    Contact.new(type: 'mobile', value: '18901234567')
  ],
  taxpayers: [
    Taxpayer.new(type: 'cpf', value: '12345678890'),
    Taxpayer.new(type: 'rg', value: '12345678-9')
  ]
)

Customer.create(
  name: 'Cliente',
  address: Address.new(
    street: 'Rua 2',
    number: '1',
    postal_code: '16200000',
    city: City.first
  ),
  contacts: [
    Contact.new(type: 'mobile', value: '18901234567')
  ],
  taxpayers: [
    Taxpayer.new(type: 'cpf', value: '12345678890'),
    Taxpayer.new(type: 'rg', value: '12345678-9')
  ]
)

Product.create(name: 'Produto 1', barcode: '0123456789', price: 10000)
Product.create(name: 'Produto 2', barcode: '9876543210', price: 20000)