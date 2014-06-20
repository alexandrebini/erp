FactoryGirl.define do
  factory :sale do
    customer
    vendor

    ignore do
      sale_items_count 1
    end

    after :build do |sale, evaluator|
      if evaluator.sale_items_count
        sale.sale_items = build_list(:sale_item, evaluator.sale_items_count, sale: sale)
      end
    end
  end
end