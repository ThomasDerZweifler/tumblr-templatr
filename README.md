# tumblr-templatr
Sync local tumblr theme templates to tumblr.com. 

Supports swig templates: http://paularmstrong.github.io/swig/

## Usage

Define config values in a file. See sample-config.js.

```
{

	email: 'your_email@gmail.com',
	username: 'tumblr_user_name',
	password: 'tumblr_password',
	
	watch: './templates/**/*.swig',
	template: './templates/index.swig',

}
```

Start templatr


```
var templatr = require('./path/to/tumblr-templatr/');
var path = require('path');
var absPathToConfig = path.resolve(path.join(__dirname, './config.js'));

// this will boot up electron client, log in, and open the template editing page
templatr( absPathToConfig );

```