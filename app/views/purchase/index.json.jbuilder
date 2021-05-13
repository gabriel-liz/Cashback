json.array! @purchases do |purchase|
    json.id                       purchase.id
    json.total_purchase           purchase.total_purchase 
    json.total_cashback           purchase.total_cashback
    json.number_tickets           purchase.number_tickets    
    json.provider                 purchase.index_purchases_on_provider_id
    json.tourist                  purchase.index_purchases_on_tourist_id
end