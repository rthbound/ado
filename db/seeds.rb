# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Thing.create([
  { location: "Bathrooms", frequency_in_days: 7, title: "Clean tile walls", notes: "", duration_in_minutes: 10 },
  { location: "Bathrooms", frequency_in_days: 7, title: "Clean bathtub", notes: "", duration_in_minutes: 10 },
  { location: "Bathrooms", frequency_in_days: 7, title: "Clean vanity & sink", notes: "", duration_in_minutes: 10 },
  { location: "Bathrooms", frequency_in_days: 7, title: "Clean shower", notes: "", duration_in_minutes: 10 },
  { location: "Bathrooms", frequency_in_days: 7, title: "Clean mirrors and fixtures", notes: "", duration_in_minutes: 10 },
  { location: "Bathrooms", frequency_in_days: 7, title: "Clean and sanitize floors", notes: "", duration_in_minutes: 10 },
  { location: "Bathrooms", frequency_in_days: 7, title: "Clean toilets", notes: "", duration_in_minutes: 10 },
  { location: "Bathrooms", frequency_in_days: 7, title: "Dust window sills, ledges, blinds", notes: "", duration_in_minutes: 10 },
  { location: "Kitchen / Dining", frequency_in_days: 1, title: "Countertops cleaned & sanitized", duration_in_minutes: 10 },
  { location: "Kitchen / Dining", frequency_in_days: 7, title: "Clean outside of range", duration_in_minutes: 10 },
  { location: "Kitchen / Dining", frequency_in_days: 1, title: "Clean sinks", duration_in_minutes: 10 },
  { location: "Kitchen / Dining", frequency_in_days: 7, title: "Clean fronts of all appliances", duration_in_minutes: 10 },
  { location: "Kitchen / Dining", frequency_in_days: 7, title: "Dust window sills, ledges, blinds", duration_in_minutes: 10 },
  { location: "Living Area", frequency_in_days: 7, title: "Dust fans and light fixtures", duration_in_minutes: 10 },
  { location: "Living Area", frequency_in_days: 7, title: "Vacuum rugs", duration_in_minutes: 20 },
  { location: "Kitchen / Dining", frequency_in_days: 7, title: "Clean microwave", duration_in_minutes: 10 },
  { location: "Kitchen / Dining", frequency_in_days: 7, title: "Do dishes", duration_in_minutes: 10 },
  { location: "Home", frequency_in_days: 10, title: "Clean baseboards", duration_in_minutes: 15 },
])
