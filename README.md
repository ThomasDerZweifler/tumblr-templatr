# tumblr-templatr
Sync local tumblr theme templates to tumblr.com. 

![](https://positlabs.github.io/tumblr-templatr/assets/imgs/templatr-infographic.jpg)


## Install
`npm install --save-dev tumblr-templatr`


## Usage

### Configuration.

```
var config = {

	// tumblr credentials
	// I RECOMMEND YOU STORE THESE IN A NON-COMMITTED FILE!!
	email: 'your_email@gmail.com',
	username: 'tumblr_user_name',
	password: 'tumblr_password',

	// the html file to copy from
	template: './index.html',

	// should it automatically publish, or just update preview?
	// useful for collaborative dev where you don't want to nuke other's changes
	autoPublish: false
}
```


### Start templatr.


```
var templatr = require('tumblr-templatr');

// this will boot up electron client, log in, and open the template editing page
templatr( config );

```


## Notes

Having the Electron dev tools open messes with focus on the webview. Be aware that the html copy might fail while using Electron's dev tools.

This hack makes it much faster to preview changes to templates, without having to use the custom editor on tumblr.com. However, it won't work well if multiple devs are working on the same tumblr account.
