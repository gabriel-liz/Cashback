Provider.destroy_all

puts 'Criando fornecedores'

c = Provider.create(
      name: 'Parque Ecologico',
      ticket_value: 100.00,
      cashback: 0.02
      )
c = Provider.create(
      name: 'Rio da Prata',
      ticket_value: 200.00,
      cashback: 0.03
      )

c = Provider.create(
      name: 'Lagoa Misteriosa',
      ticket_value: 150.00,
      cashback: 0.00
      )
c = Provider.create(
      name: 'Binamik',
      ticket_value: 0.00,
      cashback: 0.01
      )