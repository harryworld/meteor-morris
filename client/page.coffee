count = 0

Template.page.events
  'click #i2008': (e) ->
    trackId = db.tracks.findOne({name: 'A'})._id
    db.tracks.update(trackId, {$inc: {'count': 1}})
  'click #i2009': (e) ->
    trackId = db.tracks.findOne({name: 'B'})._id
    db.tracks.update(trackId, {$inc: {'count': 1}})
  'click #i2010': (e) ->
    trackId = db.tracks.findOne({name: 'C'})._id
    db.tracks.update(trackId, {$inc: {'count': 1}})
  'click #i2011': (e) ->
    trackId = db.tracks.findOne({name: 'D'})._id
    db.tracks.update(trackId, {$inc: {'count': 1}})
  'click #i2012': (e) ->
    trackId = db.tracks.findOne({name: 'E'})._id
    db.tracks.update(trackId, {$inc: {'count': 1}})
