json.array!(@customers) do |customer|
  json.extract! customer, :id, :insure_num, :name, :name_kana, :sex, :birth, :postal_code, :address, :home_num, :phone_num, :fax, :mail, :reception_day, :history_of_consul, :demand, :household, :family_situation, :caremanager, :staff_id
  json.url customer_url(customer, format: :json)
end
