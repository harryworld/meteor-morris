if db.tracks.find().count() == 0
  db.tracks.insert
    name: 'A'
    count: 10
  db.tracks.insert
    name: 'B'
    count: 5
  db.tracks.insert
    name: 'C'
    count: 20
  db.tracks.insert
    name: 'D'
    count: 8
  db.tracks.insert
    name: 'E'
    count: 10
