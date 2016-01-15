'use strict';

const path = require('path');
const fs = require('fs');
const http = require('http');
const request = require('request');
const exec = require('child_process').exec;
const electronPrebuilt = require('electron-prebuilt');
const callsite = require('callsite');
const EventEmitter = require('events');
const util = require('util');

var Templatr = function(config){

	var templatr = this;

	var sanitizeConfig = function(config){
		if(config.username === undefined) throw Error('username is undefined');
		if(config.password === undefined) throw Error('password is undefined');
		if(config.email === undefined) throw Error('email is undefined');
		config.port = config.port || 3434;

		return new Promise((resolve, reject) => {
			// resolve relative paths
			var baseDir = path.dirname( callsite()[1].getFileName() );
			if(config.template) config.template = path.resolve(baseDir, config.template);

			// write config to tmp file, then...
			var configCopyPath = path.join(__dirname, 'electron-client', '.config.json');
			fs.writeFile(configCopyPath, JSON.stringify(config), (err) => {
				if(err) {
					console.log(err);
					reject();
				}else{
					resolve();
				}
			});
		});
	};

	var startElectronClient = function(){

		// open electron
		// spawn(electronPrebuilt, [path.join(__dirname, '/electron-client/main.js')]);
		exec(electronPrebuilt + ' ' + [path.join(__dirname, 'electron-client', 'main.js')],
			(error, stdout, stderr) => {
				if (error !== null) {
					console.log(`exec error: ${error}`);
				}
			}
		);
	};

	var sendHTML = function(html, action){
		console.log('sendHTML', html, action);
		html = html || '';
		request.post(
			'http://localhost:'+config.port+'/'+action,
			{ form: { html: html } },
			function (error, response, body) {
				// if(error) throw Error(error.message);
			}
		);
	}

	var listenForEditable = function(){
		var editableInterval = setInterval(() => {
			request(`http://localhost:${config.port}/editable`, (err, res, body)=>{
				// console.log(body)
				if(body === 'true'){
					clearInterval(editableInterval);
					templatr.emit('editable');
				}
			});
		}, 1000);
	};

	Promise.all([
		sanitizeConfig(config),
	]).then(()=>{
		startElectronClient();
		listenForEditable();
	});

	this.preview = function(html){
		sendHTML(html, 'preview');
	};
	this.publish = function(html){
		sendHTML(html, 'publish');
	};
};

util.inherits(Templatr, EventEmitter);

module.exports = Templatr;