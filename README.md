# emcode

emcode is emoji name (a la [GitHub emoji]) to char code converter.

[GitHub Emoji]: https://github.com/github/gemoji

## Synopsis

```js
var emcode = require('emcode');

emcode.getCharCode('smile'); // => 128516

emcode.replace(':relaxed: and :relieved:', function(code, name, match) {
  return `[${code}, ${name}, ${match}]`;
});
// => "[9786, relaxed, :relaxed:] and [128524, relieved, :relieved:]"
```

## Author

Tomoki Aonuma ([@uasi](https://twitter.com))

## License

MIT
