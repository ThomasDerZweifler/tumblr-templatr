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

	// absolute path to template file
	template: path.join(__dirname, 'index.html'),

	// should it automatically publish, or just update preview?
	// useful for collaborative dev where you don't want to nuke other's changes
	autoPublish: false
}
```


### Start templatr.


```
var Templatr = require('tumblr-templatr');

// this will boot up electron client, log in, and open the template editing page
var templatr = new Templatr( config );

// wait for template to become editable
templatr.on('editable', ()=>{
	templatr.preview('<h1>hello tumblr!</h1>');
	// or
	templatr.publish('<h1>hello tumblr!</h1>');
});
```


## Notes

This hack makes it much faster to preview changes to templates, without having to use the custom editor on tumblr.com. However, it won't work well if multiple devs are working on the same tumblr blog. 
