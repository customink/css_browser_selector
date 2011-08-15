vows = require('vows')
assert = require('assert')
detect = require( __dirname + '/../css_browser_selector.min' ).css_browser_selector

vows.describe('Camino').addBatch(

  'OS X' :
    '0.6' :
      topic : detect("Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-US; rv:1.0.1) Gecko/20021104 Chimera/0.6")
      'should be identifiable' : (selector) ->
        assert.equal( selector, "gecko mac" )
    '1.5' :
      topic : detect("Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en; rv:1.8.1.6) Gecko/20070809 Camino/1.5.1")
      'should be identifiable' : (selector) ->
        assert.equal( selector, "gecko mac" )
    'Nightly' :
      topic : detect("Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en-US; rv:1.8.0.1) Gecko/20060118 Camino/1.0b2+")
      'should be identifiable' : (selector) ->
        assert.equal( selector, "gecko mac" )
    'Chimera' :
      topic : detect("Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.5b) Gecko/20030917 Camino/0.7+")
      'should be identifiable' : (selector) ->
        assert.equal( selector, "gecko mac" )


).export(module)