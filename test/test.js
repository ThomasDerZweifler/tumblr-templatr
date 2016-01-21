#!/usr/bin/env node

var path = require('path');
var Templatr = require('../tumblr-templatr');

var credentials = require('./_credentials');
var templatrConfig = {
	
	// tumblr credentials
	// stored in non-committed file
	email: credentials.email,
	username: credentials.username,
	password: credentials.password,
	
	// absolute path to template file
	template: path.join(__dirname, 'index.html'),

	// save template to tumblr?
	autoPublish: false
};

var t = new Templatr( templatrConfig );

t.on('editable', ()=>{
	t.preview(`<h1>hello</h1>`);
});
// setInterval(()=>{
// 	t.publish(`<h1>hello</h1>`);
// }, 5000);