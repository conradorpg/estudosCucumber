var webdriver = require('selenium-webdriver');
var { setWorldConstructor } = require('cucumber');
var { setDefaultTimeout } = require('cucumber');

global.username = 'mngr241348';
global.authkey = 'zYnupUp';

function CBTWorld() {
    var remoteHub = 'http://demo.guru99.com/V4/';
    var caps = {
        name: 'Basic Example',
        build: '1.0',
        browserName: 'Chrome', // Pulls latest version of Chrome by default
        platform: 'Ubuntu', // To specify version, add version : 'desired version'
        screen_resolution: '1366x768',
        record_video: 'true',
        username: global.username,
        password: global.authkey
    };

    this.driver = new webdriver.Builder()
        .usingServer(remoteHub)
        .withCapabilities(caps)
        .build();
}

setDefaultTimeout(60 * 1000);
setWorldConstructor(CBTWorld);