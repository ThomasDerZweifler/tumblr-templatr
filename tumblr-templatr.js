var path = require('path');
var fs = require('fs');
var exec = require('child_process').execFile;

// console.log('tumblr-templatr __dirname', __dirname, process.cwd())

module.exports = function(configPath){
	// console.log(configPath)

	var config = require(configPath);
	config.__dirname = path.parse(configPath).dir;

	// write config to tmp file, then...
	fs.writeFile('./electron-client/.config.json', JSON.stringify(config), (err) => {
		if(err) {
			console.log(err);
		}else{

			// open electron
			exec(path.join(__dirname, '/node_modules/.bin/electron'), [path.join(__dirname, '/electron-client/main.js')],
				(error, stdout, stderr) => {
					console.log(`stdout: ${stdout}`);
					console.log(`stderr: ${stderr}`);
					if (error !== null) {
						console.log(`exec error: ${error}`);
					}
				}
			);
		}
	});

};