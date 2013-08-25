# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

projects = Project.create([{ name: 'Project 1', description: 'Description of Project 1. This is a really great project', priority: 1, popularity: 4},
                           { name: 'Project 2', description: 'Description of Project 2. This is a really great project', priority: 2, popularity: 4},
                           { name: 'Project 3', description: 'Description of Project 3. This is a really great project', priority: 3, popularity: 4},
                           { name: 'Project 4', description: 'Description of Project 4. This is a really great project', priority: 6, popularity: 5},
                           { name: 'Project 5', description: 'Description of Project 5. This is a really great project', priority: 4, popularity: 6},
                           { name: 'Project 6', description: 'Description of Project 6. This is a really great project', priority: 7, popularity: 2},
                           { name: 'Project 7', description: 'Description of Project 7. This is a really great project', priority: 3, popularity: 5},
                           { name: 'Project 8', description: 'Description of Project 8. This is a really great project', priority: 5, popularity: 8},
                           { name: 'Project 9', description: 'Description of Project 9. This is a really great project', priority: 6, popularity: 2},
                           { name: 'Project 10', description: 'Description of Project 10. This is a really great project', priority: 3, popularity: 5},
                           { name: 'Project 11', description: 'Description of Project 11. This is a really great project', priority: 5, popularity: 8},
                           { name: 'Project 12', description: 'Description of Project 12. This is a really great project', priority: 6, popularity: 2},
                          ])