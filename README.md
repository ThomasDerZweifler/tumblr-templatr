# tumblr-templatr
Sync local tumblr theme templates to tumblr.com. 

![](https://positlabs.github.io/tumblr-templatr/assets/imgs/templatr-infographic.jpg)

Supports swig templates: http://paularmstrong.github.io/swig/


## Usage

Define config values in a file. See sample-config.js.

```
{

	email: 'your_email@gmail.com',
	username: 'tumblr_user_name',
	password: 'tumblr_password',
	
	// paths relative to this config file
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


## Notes

Having the Electron dev tools open messes with focus on the webview, so be aware that the html copy might fail while developing.

This hack makes it much faster to preview changes to templates, without having to use the custom editor on tumblr.com. However, it won't work well if multiple devs are working on the same tumblr account.
