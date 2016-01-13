const path = require('path');
const fs = require('fs');
const exec = require('child_process').execFile;
const electronPrebuilt = require('electron-prebuilt');

module.exports = function(configPath){
	// console.log(configPath)

	var config = require(configPath);
	config.__dirname = path.parse(configPath).dir;

	// write config to tmp file, then...
	var configCopyPath = path.join(__dirname, './electron-client/.config.json');
	fs.writeFile(configCopyPath, JSON.stringify(config), (err) => {
		if(err) {
			console.log(err);
		}else{

			// open electron
			exec(electronPrebuilt, [path.join(__dirname, '/electron-client/main.js')],
				(error, stdout, stderr) => {
					if (error !== null) {
						console.log(`exec error: ${error}`);
					}
				}
			);
		}
	});

};