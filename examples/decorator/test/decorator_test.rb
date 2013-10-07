require "test_helper"
require "pry"
require "forwardable"
require "product"
require "product_decorator"

describe Product do
  let(:product) { Product.new("Tomato", :fruit, [ %w(red salad sour) ]) }
  let(:expected_result) { <<EOF
    <tr>
      <th>Tomato</th>
      <td>fruit</td>
      <td>
        <ul>
          <li>red</li>
          <li>salad</li>
          <li>sour</li>
        </ul>
      </td>
    </tr>
EOF
}

  it "can be printed as a HTML table row" do
    decorator = ProductDecorator.new product
    decorator.as_row.
      strip.gsub(/(^\s+)|\n/, "").
        must_equal expected_result.
          strip.gsub /(^\s+)|\n/, ""
  end
end
