var fs = require('fs');
var path = require('path');
module.exports = {
    getImageResponse: async (req, res, next) => {
        var readStream = fs.createReadStream(path.normalize(__dirname + '/../images/' + req.query.name));
        res.writeHead(200, { 'Content-Type': 'image/jpg' });
        readStream.on('open', function () {
            // This just pipes the read stream to the response object (which goes to the client)
            readStream.pipe(res);
          });
    
          readStream.on('error', function(err) {
            res.end(err);
          });
        
    },

}