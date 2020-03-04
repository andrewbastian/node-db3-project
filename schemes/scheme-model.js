const db = require('../data/dbConfig')

function find() {
	return db('schemes')
}

function findById(id) {
	return db('schemes')
	.where({id})
	.first()
}

function findSteps(id) {
	return db('steps')
	.where({scheme_id: id})
}

function add(newScheme) {
  return db('schemes').insert(newScheme)
  .then(ids => {
    return findById(ids[0]);
  });
}

//This function is working in the DB, but returns 500 on the request...

function update(changes, id) {
	db('schemes')
	.update(changes)
	.where({id})
    .then(ids => {
    return findById(ids[0]);
  });
}

function remove(id) {
	return db('schemes')
	.where({id})
	.del()
}

module.exports = {
	find,
	findById,
	findSteps,
	add,
	update,
	remove

	
}