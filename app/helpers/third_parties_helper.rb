module ThirdPartiesHelper
  def setup_third_party(third_party)
    third_party.build_address if third_party.address.blank?
    third_party
  end
end