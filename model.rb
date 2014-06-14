erp
===
gem acts_as_paranoid


class Address
class Phones

# fornecedores e consumidores
module ThirdParty
  has_one address
  has_many phones

class Customer
  include ThirdParty

class Supplier
  include ThirdParty

# compra e venda
class Product

class Sale
  belongs_to :customer
  has_many :sale_items

class SaleItem
  belongs_to :sale
  belongs_to :product

class Purchase
  belongs_to :supplier
  has_many :purchase_items

class PurchaseItem
  belongs_to :purchase
  belongs_to :product

# despesas e recebimentos
module Transaction

class Expense
  include Transaction

class Income
  include Transaction
  belongs_to :sale