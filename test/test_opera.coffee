vows = require('vows')
assert = require('assert')
detect = require( __dirname + '/../css_browser_selector.min' ).css_browser_selector

vows.describe('Safari').addBatch(
  'Opera' :
    'Linux' :
      '10.01' :
        topic : detect("opera/9.80 (x11; linux i686; u; en) presto/2.2.15 version/10.01")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "opera opera10 linux" )
      '10.10' :
        topic : detect("Opera/9.80 (X11; Linux x86_64; U; en) Presto/2.2.15 Version/10.10")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "opera opera10 linux" )
      '9.0' : # Opera 0 on Linux 2.6, static Qt installation
        topic : detect("Opera/9.00 (X11; Linux i686; U; en)")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "opera opera9 linux" )
      '7.6' :
        topic : detect("Mozilla/5.0 (X11; Linux i386; U) Opera 7.60 [en-GB]")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "opera opera7 linux" )
      '7.5' :
        topic : detect("Mozilla/5.0 (X11; Linux i386; U) Opera 7.60 [en-GB]")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "opera opera7 linux" )
      '7.5 Alternate' :
        topic : detect("Opera/7.50 (X11; Linux i686; U) [en]")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "opera opera7 linux" )
      '7.2' : # Opera 7.20 running on Linux and pretending to be MSIE 6.0
        topic : detect("Mozilla/4.0 (compatible; MSIE 6.0; X11; Linux i686) Opera 7.20 [en]")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "opera opera7 linux" )
    'OS 8.6' :
      '5.0' :
        topic : detect("Mozilla/4.0 (compatible; MSIE 5.0; Mac_PowerPC) Opera 5.0 [en]")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "opera opera5 mac" )
    'OS X' :
      'Mini' : # Opera Mini 10.00 on MAC with OS X
        topic : detect("opera/9.50 (j2me/midp; opera mini/ 4.1.11320/546; u; pt)")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "opera opera9 mobile j2me" )
      '9.2' :
        topic : detect("Opera/9.20 (Macintosh; Intel Mac OS X; U; en)")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "opera opera9 mac" )
      '9.0' :
        topic : detect("Opera/9.0 (Macintosh; PPC Mac OS X; U; en)")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "opera opera9 mac" )
      '8.5' :
        topic : detect("Mozilla/4.0 (compatible; MSIE 6.0; Mac_PowerPC Mac OS X; en) Opera 8.5")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "opera opera8 mac" )
      '8.5 Alternate' :
        topic : detect("Opera/8.5 (Macintosh; PPC Mac OS X; U; en)")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "opera opera8 mac" )
      '10.0' :
        topic : detect("Opera/10.00 (Macintosh; Intel Mac OS X; u; en) presto/2.2.0")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "opera opera10 mac" )

    'Windows' :
      '95' :
        '6.01' :
          topic : detect("Mozilla/4.0 (compatible; MSIE 5.0; Windows 95) Opera 6.01 [en]")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "opera opera6 win" )

      '2K' :
        '6.0' :
          topic : detect("Mozilla/4.0 (compatible; MSIE 5.0; Windows 2000) Opera 6.0 [en]")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "opera opera6 win" )
        '7.02 MSN' : # The infamous MSN version of Opera 7.02 on W2K
          topic : detect("Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.0) Opera 7.02 Bork-edition [en]")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "opera opera7 win" )
        '9.0.2' :
          topic : detect("Opera/9.02 (Windows NT 5.0; U; en)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "opera opera9 win" )

      'ME' :
        '7.11' :
          topic : detect("Mozilla/4.0 (compatible; MSIE 6.0; Windows ME) Opera 7.11 [en]")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "opera opera7 win" )

      'NT 4.0' :
        '7' :
          topic : detect("Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 4.0) Opera 7.0 [en]")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "opera opera7 win" )
        '9.0' :
          topic : detect("Opera/9.00 (Windows NT 4.0; U; en)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "opera opera9 win" )

      'XP' :
        '7' :
          topic : detect("Opera/7.11 (Windows NT 5.1; U) [en]")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "opera opera7 win" )
        '7.54' : # Opera 7.54 in native mode
          topic : detect("Opera/7.54 (Windows NT 5.1; U) [pl]")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "opera opera7 win" )
        '7.60' :
          topic : detect("Opera/7.60 (Windows NT 5.2; U) [en] (IBM EVV/3.0/EAK01AG9/LE)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "opera opera7 win" )
        '8.01' : # Preview
          topic : detect("Opera/8.01 (Windows NT 5.1)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "opera opera8 win" )
        '9.0' :
          topic : detect("Opera/9.0 (Windows NT 5.1; U; en)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "opera opera9 win" )
        '9.00' :
          topic : detect("Opera/9.00 (Windows NT 5.1; U; en)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "opera opera9 win" )

      'XP Pro' :
        '8.00' : # Opera 8.00 (ex 7.60 preview) on XP Pro
          topic : detect("Opera/8.00 (Windows NT 5.1; U; en)")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "opera opera8 win" )
        '8.00 as Mozilla' : # Opera 8.00 (ex 7.60 preview) on XP Pro as Mozilla
          topic : detect("Mozilla/5.0 (Windows NT 5.1; U; en) Opera 8.00")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "opera opera8 win" )
        '8.00 as MSIE' : # Opera 8.00 (ex 7.60 preview) on XP Pro as MSIE
          topic : detect("Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; en) Opera 8.00")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "opera opera8 win" )
        '8.01' : 
          topic : detect("Mozilla/5.0 (Windows NT 5.1; U; en) Opera 8.01")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "opera opera8 win" )
        '9.0 as MSIE' :
          topic : detect("Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; en) Opera 9.0")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "opera opera9 win" )

      'Vista' :
        '10.0' :
          topic : detect("opera/9.80 (windows nt 6.0; u; en) presto/2.2.15 version/10.00")
          'should be identifiable' : (selector) ->
            assert.equal( selector, "opera opera10 win vista" )

      'Win Mobile' : # Opera Mobile 8.60 on a Dell Axim X51v
        topic : detect("Mozilla/4.0 (compatible; MSIE 6.0; Windows CE; PPC; 480x640) Opera 8.60 [en]")
        'should be identifiable' : (selector) ->
          assert.equal( selector, "opera opera8 win" )

).export(module)

###
User Agent string not ported over because they appear to be redundant (or invalid)
		["Mozilla/5.0 (Macintosh; PPC Mac OS X; U; en) Opera 8.5"                                    , "opera opera8 mac"], // Opera 8.5 on the Mac
		["Mozilla/5.0 (Macintosh; PPC Mac OS X; U; en) Opera 8.0"                                    , "opera opera8 mac"], // Opera 8.0 on the Mac
		["Mozilla/4.0 (compatible; MSIE 6.0; Mac_PowerPC Mac OS X; en) Opera 8.0"                    , "opera opera8 mac"], // Opera 8.0 on the Mac


//		["Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)"                                        , "ie ie6 win"], // Opera 8.01 preview
###