const path = require('path');

// The absolute path to where our custom packages are installed
const customModulesPath = path.join('/home/node', 'node_modules');

// Add our custom path to the official list of paths Node.js searches
require('module').Module.globalPaths.push(customModulesPath);
