var db = require('./emoji');

exports.getCharCode = function(name) {
  return db[name];
}

exports.replace = function(text, replacer) {
  return text.replace(/:([0-9a-z_+-]+):/g, function(match, name) {
    return replacer(db[name], name, match);
  });
}
