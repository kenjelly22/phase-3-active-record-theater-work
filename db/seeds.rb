Role.create(character_name: "Elphaba")
Role.create(character_name: "Galinda")
Role.create(character_name: "Fiyero")
Role.create(character_name: "The Wizard")

Audition.create(actor: "Mike Clancy", location: "Power HQ", phone: 1234567890, hired: true, role_id: Role.first.id)
Audition.create(actor: "Emily Kanarek", location: "West Philadelphia", phone: 1234567890, hired: false, role_id: Role.second.id)
Audition.create(actor: "Kyle Housel", location: "The Moon", phone: 1234567890, hired: true, role_id: Role.third.id)
Audition.create(actor: "Stove McKeon", location: "Tatooine", phone: 1234567890, hired: false, role_id: Role.fourth.id)
