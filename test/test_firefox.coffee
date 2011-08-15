vows = require('vows')
assert = require('assert')
detect = require( __dirname + '/../css_browser_selector.min' ).css_browser_selector

vows.describe('Firefox').addBatch(

  'Firefox' :
    'Windows' :
      'NT' :
        'Phoenix' :
          topic : detect("Mozilla/5.0 (Windows; U; WinNT4.0; en-US; rv:1.3a) Gecko/20021207 Phoenix/0.5")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "gecko win" )

      'XP' :
        'Dev' :
          topic : detect("Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9b2pre) Gecko/2007120505 Minefield/3.0b2pre")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "gecko win" )
        'pre v1' :
          topic : detect("Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.3) Gecko/20041002 Firefox/0.10.1")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "gecko win" )
        '1' :
          topic : detect("Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.13) Gecko/20060410 Firefox/1.0.8")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "gecko win" )
        '3' :
          topic : detect("Mozilla/5.0 (Windows; u; Windows NT 5.1; en-us; rv:1.9.0.1) Gecko/2008070208 Firefox/3.0.1")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "gecko ff3 win" )
        'Firebird' :
          topic : detect("Mozilla/5.0 (X11; U; SunOS sun4m; en-US; rv:1.4b) Gecko/20030517 Mozilla Firebird/0.6")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "gecko linux" ) # Say what?
        'Phoenix' :
          topic : detect("Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.2b) Gecko/20020923 Phoenix/0.1")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "gecko win" )

      'Vista' :
        'Firefox' :
          'Dev' :
            topic : detect("Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9a7) Gecko/2007080210 GranParadiso/3.0a7")
            'should be identifiable' : (selector) ->
              assert.equal( selector, "gecko win vista" )
          '2' :
            topic : detect("Mozilla/5.0 (Windows; U; Windows NT 6.0; en-GB; rv:1.8.1.11) Gecko/20071127 Firefox/2.0.0.11")
            'should be identifiable' : (selector) ->
              assert.equal( selector, "gecko ff2 win vista" )

    'OS X' :
      '1.5' :
        topic : detect("Mozilla/5.0 (X11; U; Darwin Power Macintosh; en-US; rv:1.8.0.12) Gecko/20070803 Firefox/1.5.0.12 Fink Community Edition")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "gecko mac" )
      '2' :
        topic : detect("Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "gecko ff2 mac" )
      '3.5' :
        topic : detect("mozilla/5.0 (macintosh; u; intel mac os x 10.5; en-gb; rv:1.9.1) gecko/20090624 firefox/3.5")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "gecko ff3 ff3_5 mac" )
      '3.6' :
        topic : detect("mozilla/5.0 (macintosh; u; intel mac os x 10.6; en-us; rv:1.9.2.3) gecko/20100401 firefox/3.6.3 gtb7.0")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "gecko ff3 ff3_6 mac")

).export(module)