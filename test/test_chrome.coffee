vows = require('vows')
assert = require('assert')
detect = require( __dirname + '/../css_browser_selector.min' ).css_browser_selector

vows.describe('Chrome').addBatch(

  'Google Chrome' :
    'Windows' :
      'XP' :
        'Unknown Version' :
          topic : detect("Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.A.B.C Safari/525.13")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'webkit chrome win' )
        '0.2' :
          topic : detect("Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.2.149.27 Safari/525.13")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'webkit chrome win' )
    'OS X' :
      '13.0' :
        topic : detect("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1")
        'should be identifiable' : (selector) ->
          assert.equal( selector, 'webkit chrome mac' )

).export(module)
