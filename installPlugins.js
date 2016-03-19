let plugins = require("./.homebridge/plugins.json"),
    exec    = require("child_processes");

try {
  plugins = JSON.parse(plugins);
} catch (error) {
  console.log("Error reading plugins.json", error);
  process.exit(1);
}

plugins.forEach((plugin) => {
  var command = "npm install " + ( (plugins.indexOf(".tgz") != -1) ? "/root/.homebridge/plugins/" : "" ) + plugin;
  console.log("command: ", command);
  exec(command, (error, stdout, stderr) => {
    if(error){
      console.log("Error installing package: ", error)
      console.log("stderr: ", stderr)
      process.exit(1);
    }

    console.log("stdout: ", stdout);
    process.exit();
  });
});