# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'usuario@gmail.com', password: '123456')
User.create(email: 'juan@gmail.com', password: '123456')
User.create(email: 'carlos@gmail.com', password: '123456')
User.create(email: 'pepe@gmail.com', password: '123456')
User.create(email: 'marcos@gmail.com', password: '123456')

EventCategory.create(nombre: 'Música, Concierto', descripcion: '')
EventCategory.create(nombre: 'Cine, Teatro', descripcion: '')
EventCategory.create(nombre: 'Ciencias, Tecnología', descripcion: '')
EventCategory.create(nombre: 'Moda y Belleza', descripcion: '')
EventCategory.create(nombre: 'Economía, Finanzas', descripcion: '')
EventCategory.create(nombre: 'Religión y Espiritualidad', descripcion: '')
EventCategory.create(nombre: 'Deporte y Salud', descripcion: '')

EventType.create(nombre: 'Conferencia', descripcion: '')
EventType.create(nombre: 'Fiesta o Reunión Social', descripcion: '')
EventType.create(nombre: 'Juegos, Competencia', descripcion: '')
EventType.create(nombre: 'Seminario, Charla', descripcion: '')
EventType.create(nombre: 'Feria', descripcion: '')
EventType.create(nombre: 'Festival', descripcion: '')
EventType.create(nombre: 'Acto de graduación', descripcion: '')

Event.create(nombre: 'Seminario de informática', ubicacion: 'Avda. Caballero',
	descripcion: 'Seminario dirigido a estudiantes y profesionales en el area de informática',
	publico: true, posposiciones: '0', user_id: '1', event_category_id: '3', event_type_id: '4')

Event.create(nombre: 'Seminario de tecnología', ubicacion: 'Avda. Gral. Artigas',
	descripcion: 'Seminario dirigido a estudiantes y profesionales en el area de informática',
	publico: true, posposiciones: '0', user_id: '1', event_category_id: '3', event_type_id: '4')

Event.create(nombre: 'Seminario de robotica', ubicacion: 'Avda. Irrazabal',
	descripcion: 'Seminario dirigido a estudiantes y profesionales en el area de informática',
	publico: true, posposiciones: '0', user_id: '1', event_category_id: '3', event_type_id: '4')

Event.create(nombre: 'Seminario de IA', ubicacion: 'Avda. Irrazabal',
	descripcion: 'Seminario dirigido a estudiantes y profesionales en el area de informática',
	publico: true, posposiciones: '0', user_id: '1', event_category_id: '3', event_type_id: '4')

EventDate.create(fecha_inicio: "23/03/2019", fecha_fin:"23/03/2019", event_id: "1")
EventDate.create(fecha_inicio: "06/06/2019", fecha_fin:"07/06/2019", event_id: "2")
EventDate.create(fecha_inicio: "14/09/2019", fecha_fin:"19/09/2019", event_id: "3")
EventDate.create(fecha_inicio: "08/12/2019", fecha_fin:"10/12/2019", event_id: "4")