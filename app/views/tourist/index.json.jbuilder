json.array! @tourists do |tourist|
    json.id             tourist.id
    json.name           tourist.name 
    json.cpf            tourist.cpf
    json.balance        tourist.balance
end
