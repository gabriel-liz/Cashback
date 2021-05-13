json.array! @providers do |provider|
    json.id             provider.id
    json.name           provider.name 
    json.ticket_value   provider.ticket_value
    json.cashback       provider.cashback    
end