FactoryBot.define do
  factory :product do
    name {"test1"}
    price{"10000"}
    image{"hoge.png"}
    detail{"test"}
    parent_category_id{"1"}
    status_id{"1"}
    delivery_fee_id{"1"}
    prefecture_id{"1"}
    preparation_id{"1"}
  end
end
