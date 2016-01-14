#!/usr/bin/env node

var templatr = require('../tumblr-templatr');
var credentials = require('./_credentials');
var templatrConfig = {
	
	// tumblr credentials
	// stored in non-committed file
	email: credentials.email,
	username: credentials.username,
	password: credentials.password,
	
	// path relative to caller
	template: './index.html',

	// save template to tumblr?
	autoPublish: true
};

templatr( templatrConfig );