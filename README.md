# CSS Browser Selector

CSS Browser Selector is a very small javascript with just one line which empower CSS selectors. It gives you the ability to write specific CSS code for each operating system and each browser.

More info: [http://rafael.adm.br/css\_browser\_selector](http://rafael.adm.br/css_browser_selector)

## Example

    <style type="text/css">
      .ie .example {
        background-color: yellow
      }
      .ie7 .example {
        background-color: orange
      }
      .gecko .example {
        background-color: gray
      }
      .win.gecko .example {
        background-color: red
      }
      .linux.gecko .example {
        background-color: pink
      }
      .opera .example {
        background-color: green
      }
      .konqueror .example {
        background-color: blue
      }
      .webkit .example {
        background-color: black
      }
      .chrome .example {
        background-color: cyan
      }
      .example {
        width: 100px;
        height: 100px;
      }
    </style>

## Running Tests

First, [install NPM](http://search.npmjs.org/#/_install).

Then, install the NPM dependencies:

    npm install

Last, execute the test runner:

    vows test/*

Then tests run against the minified code to ensure that the minification process hasn't broken anything and to ensure that code is re-run through the minifier.

## Running UglifyJS

Assuming you have followed the previous directions for install NPM and this project's dependencies:

    ./node_modules/uglify-js/bin/uglifyjs css_browser_selector.js > css_browser_selector.min.js

## License

[http://creativecommons.org/licenses/by/2.5/](http://creativecommons.org/licenses/by/2.5/)

## Original Author

### **Rafael Lima**

Blog: [http://rafael.adm.br](http://rafael.adm.br)

Podcast: [http://rafael.adm.br/voltandopracasa](http://rafael.adm.br/voltandopracasa)

Github: [http://github.com/rafaelp](http://github.com/rafaelp)

Twitter: [http://twitter.com/rafaelp](http://twitter.com/rafaelp)

## Fork Authors

[CustomInk, LLC](https://github.com/customink)
* [Derek Lindahl](https://github.com/dlindahl)

### Did you like?

[Recommend me at Working With Rails](http://workingwithrails.com/recommendation/new/person/14248-rafael-lima)

## Original Contributors

[http://rafael.adm.br/css\_browser\_selector#contributors](http://rafael.adm.br/css_browser_selector#contributors)

