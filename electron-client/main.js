'use strict';

const electron = require('electron');
// Module to control application life.
const app = electron.app;
// Module to create native browser window.
const BrowserWindow = electron.BrowserWindow;

// Keep a global reference of the window object, if you don't, the window will
// be closed automatically when the JavaScript object is garbage collected.
let mainWindow;

function createWindow () {
	// Create the browser window.
	mainWindow = new BrowserWindow({width: 800, height: 600});

	// Emitted when the window is closed.
	mainWindow.on('closed', function() {
		// Dereference the window object, usually you would store windows
		// in an array if your app supports multi windows, this is the time
		// when you should delete the corresponding element.
		mainWindow = null;
	});

	// make sure there's not old login cookies hanging around
	clearCookies().then(()=>{
		// and load the index.html of the app.
		mainWindow.loadURL('file://' + __dirname + '/index.html');
	});
}

var clearCookies = function(){
	return new Promise((resolve, reject)=>{
		mainWindow.webContents.session.clearStorageData({
			storages: ['cookies']}, 
			()=>{
				resolve();
			}
		);
	});
};

// This method will be called when Electron has finished
// initialization and is ready to create browser windows.
app.on('ready', ()=>{
	createWindow();
});

// Quit when all windows are closed.
app.on('window-all-closed', function () {
	app.quit();
});

