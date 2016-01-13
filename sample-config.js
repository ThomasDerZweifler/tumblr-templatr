module.exports = {

	// tumblr credentials
	email: 'your_email@gmail.com',
	username: 'tumblr_user_name',
	password: 'tumblr_password',
	
	// array of file globs to watch in order to trigger an update
	watch: ['./templates/**/*.swig', './js/**/*.js'],

	// the main template file to build from
	template: './templates/index.swig',

	// should it automatically save, or just update preview?
	autoPublish: false
};