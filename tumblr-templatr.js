const path = require('path');
const fs = require('fs');
const exec = require('child_process').exec;
const electronPrebuilt = require('electron-prebuilt');
const callsite = require('callsite');

var validateConfig = function(config){
	if(config.username === undefined) throw Error('username is undefined');
	if(config.password === undefined) throw Error('password is undefined');
	if(config.email === undefined) throw Error('email is undefined');
};

module.exports = function(config){

	// bork if there is no credentials
	validateConfig(config);

	// resolve relative paths
	var baseDir = path.dirname( callsite()[1].getFileName() );
	if(config.watch) config.watch = config.watch.map(p => { return path.resolve(baseDir, p); });
	if(config.template) config.template = path.resolve(baseDir, config.template);

	// write config to tmp file, then...
	var configCopyPath = path.join(__dirname, 'electron-client', '.config.json');
	fs.writeFile(configCopyPath, JSON.stringify(config), (err) => {
		if(err) {
			console.log(err);
		}else{

			// open electron
			// spawn(electronPrebuilt, [path.join(__dirname, '/electron-client/main.js')]);
			exec(electronPrebuilt + ' ' + [path.join(__dirname, 'electron-client', 'main.js')],
				(error, stdout, stderr) => {
					if (error !== null) {
						console.log(`exec error: ${error}`);
					}
				}
			);
		}
	});

	return {

		// TODO: not sure how to communicate with electron client...
		// use some kind of IPC? A local server in the electron client, maybe?
		preview: function(){},
		publish: function(){}
	};
};