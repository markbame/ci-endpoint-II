const http = require('http');
var exec = require('child_process').exec;
const hostname = '0.0.0.0';
const port = 8080;

const server = http.createServer((req, res) => {
 
  console.log('req',req.url)


  var body = '';
  req.on('data', function (chunk) {
    body += chunk;
  });
  req.on('end', function () {
    var jsonObj = JSON.parse(body);
    console.log(jsonObj.code);
    if(jsonObj.code != 'axsHw0dblzxzkr!2851dsapi9'){
    
     res.statusCode = 400;
  res.setHeader('Content-Type', 'text/html');
     res.end('oops bad request');

    } else {
  

  if(req.url == '/build-admin-app') {
    exec('./build-admin.sh', function(){
     exec('./displaylogs.sh 8081 admin')	
    console.log('build complete')	
    })	
  }
  if(req.url == '/build-react-app') {
    exec('./build-app.sh', function(){
      exec('./displaylogs.sh 8082 app')	
      console.log('build complete')	
    })	
  }
  if(req.url == '/build-node-api') {
    exec('./build-api.sh', function(){
       exec('./displaylogs.sh 8083 api')

	console.log('build complete')	
    })	
  }
  if(req.url == '/test-api') {
    
    exec('./run.sh', function(){
	console.log('build complete')	
    })	
  }



 
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/html');
  res.end('endpoint');
  }
  })

});




server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
