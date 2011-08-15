vows = require('vows')
assert = require('assert')
detect = require( __dirname + '/../css_browser_selector.min' ).css_browser_selector

vows.describe('iOS').addBatch(
  'iOS' :
    'iPod Touch' :
      topic : detect("Mozilla/5.0 (iPod; U; CPU like Mac OS X; en) AppleWebKit/420.1 (KHTML, like Gecko) Version/3.0 Mobile/3A100a Safari/419.3")
      'should be identifiable' : (selector) ->
        assert.equal( selector, 'webkit safari safari3 mobile ipod' )

    'iPhone' :
      topic : detect("Mozilla/5.0 (iPhone; U; CPU like Mac OS X; en) AppleWebKit/420+ (KHTML, like Gecko) Version/3.0 Mobile/1C28 Safari/419.3")
      'should be identifiable' : (selector) ->
        assert.equal( selector, 'webkit safari safari3 mobile iphone' )

    'iPad' :
      topic : detect("Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.10")
      'should be identifiable' : (selector) ->
        assert.equal( selector, 'webkit safari safari4 mobile ipad' )

).export(module)
