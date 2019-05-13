json.array! @category_children  do |category_child|
  json.id  category_child[:id]
  json.name  category_child[:name]
end
