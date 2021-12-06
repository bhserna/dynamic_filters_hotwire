require 'rails_helper'

RSpec.describe Product, ".by_category" do
  it "with a category" do
    product1 = create :product, category: "toys"
    product2 = create :product, category: "electronics"

    result = described_class.by_category("toys")
    expect(result).to eq [product1]
  end

  it "without a valid category" do
    product1 = create :product, category: "toys"
    product2 = create :product, category: "electronics"

    result = described_class.by_category("other")
    expect(result).to match_array [product1, product2]
  end

  it "without a category" do
    product1 = create :product, category: "toys"
    product2 = create :product, category: "electronics"

    result = described_class.by_category("")
    expect(result).to match_array [product1, product2]

    result = described_class.by_category(nil)
    expect(result).to match_array [product1, product2]
  end
end

RSpec.describe Product, ".search" do
  it "by name" do
    product1 = create :product, name: "toy"
    product2 = create :product, name: "food"

    result = described_class.search("toy")
    expect(result).to eq [product1]
  end

  it "with no value" do
    product1 = create :product, name: "toy"
    product2 = create :product, name: "food"

    result = described_class.search("")
    expect(result).to match_array [product1, product2]
  end
end
