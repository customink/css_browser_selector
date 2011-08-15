vows = require('vows')
assert = require('assert')
detect = require( __dirname + '/../css_browser_selector.min' ).css_browser_selector

vows.describe('Miscellaneous versions of IE').addBatch(

  'IE Misc.' :
    'Windows' :
      'NT' :
        'IE' :
          '5' :
            topic : detect("Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)")
            'should be identifiable' : (selector) ->
              assert.equal( selector, "ie ie5 win" )

      '95' :
        'IE' :
          '2' :
            topic : detect("Mozilla/1.22 (compatible; MSIE 2.0; Windows 95)")
            'should be identifiable' : (selector) ->
              assert.equal( selector, "ie ie2 win" )
          '5' :
            topic : detect("Mozilla/4.0 (compatible; MSIE 5.5; Windows 98)")
            'should be identifiable' : (selector) ->
              assert.equal( selector, "ie ie5 win" )

      'XP' :
        'IE' :
          '4' :
            topic : detect("Mozilla/4.0 (compatible; MSIE 4.01; Windows NT 5.0)")
            'should be identifiable' : (selector) ->
              assert.equal( selector, 'ie ie4 win xp' )


      'OS X' :
        'IE' :
          '5' :
            topic : detect("Mozilla/4.0 (compatible; MSIE 5.22; Mac_PowerPC)")
            'should be identifiable' : (selector) ->
              assert.equal( selector, "ie ie5 mac" )

).export(module)