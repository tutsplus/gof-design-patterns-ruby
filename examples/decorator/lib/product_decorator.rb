class ProductDecorator
  extend Forwardable

  def_delegators :@product, :name, :category, :tags

  def initialize product
    @product = product
  end

  def as_row
    <<EOF
    <tr>
      <th>#{name}</th>
      <td>#{category}</td>
    <td>
      #{tags_list}
    </td>
    </tr>
EOF

  end

  def tags_list
    "<ul>" +
      tags.flatten.map { |tag| "<li>#{tag}</li>" }.join("") +
      "</ul>"
  end

end
