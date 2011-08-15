vows = require('vows')
assert = require('assert')
detect = require( __dirname + '/../css_browser_selector.min' ).css_browser_selector

vows.describe('Obscure Browsers').addBatch(

  'Obscure Browsers' :
    'Blank Strings' :
      topic : detect("")
      'should be identifiable' : (selector) ->
        assert.equal( selector, '' )

    'Windows' :
      'XP' :
        'HotJava' :
          topic : detect("Mozilla/3.0 (x86 [en] Windows NT 5.1; Sun)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "gecko win" )

        'Iron' :
          topic : detect("mozilla/5.0 (windows; u; windows nt 5.1; en-us) applewebkit/530.1 (khtml, like gecko) iron/2.0.168.0 safari/530.1")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "webkit iron win" )

      '7' :
        'Iron' :
          topic : detect("mozilla/5.0 (windows; u; windows nt 6.1; en-us) applewebkit/532.0 (khtml, like gecko) iron/3.0.197.0 safari/532.0")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "webkit iron win" )

      'WebTV' :
        topic : detect("Mozilla/4.0 WebTV/2.8 (compatible; MSIE 4.0)")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "gecko webtv" )

      'Blackberry' :
        topic : detect("blackberry9550/5.0.0.713 profile/midp-2.1 configuration/cldc-1.1 vendorid/105")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "mobile blackberry" )

).export(module)
