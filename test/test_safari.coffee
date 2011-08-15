vows = require('vows')
assert = require('assert')
detect = require( __dirname + '/../css_browser_selector.min' ).css_browser_selector

vows.describe('Safari').addBatch(

  'Safari' :
    'Windows' :
      'XP' :
        '3.0.2b' :
          topic : detect("Mozilla/5.0 (Windows; U; Windows NT 5.1; bg) AppleWebKit/522.13.1 (KHTML, like Gecko) Version/3.0.2 Safari/522.13.1")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'webkit safari safari3 win xp' )
      'XP SP2' :
        '3.0b' :
          topic : detect("Mozilla/5.0 (Windows; U; Windows NT 5.1; ru) AppleWebKit/522.11.3 (KHTML, like Gecko) Version/3.0 Safari/522.11.3")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'webkit safari safari3 win xp' )
      'Vista' :
        '4' :
          topic : detect("mozilla/5.0 (windows; u; windows nt 6.0; pt-br) applewebkit/528.16 (khtml, like gecko) version/4.0 safari/528.16")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'webkit safari safari4 win vista' )

    'OS X' :
      '10.5.1' :
        '3' :
          topic : detect("Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en-gb) AppleWebKit/523.10.6 (KHTML, like Gecko) Version/3.0.4 Safari/523.10.6")
          'should be identifiable' : (selector) ->
            assert.equal( selector, 'webkit safari safari3 mac' )
      '2.0.4b' :
        topic : detect("Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en) AppleWebKit/419.3 (KHTML, like Gecko) Safari/419.3")
        'should be identifiable' : (selector) ->
          assert.equal( selector, 'webkit safari mac' )

).export(module)

###
User Agent string not ported over because they appear to be redundant or too old to bother with

["Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en) AppleWebKit/522.11.1 (KHTML, like Gecko) Version/3.0.3 Safari/522.12.1"     , "webkit safari safari3 mac"], // Safari 3.0.3 for Intel version of iMac


["Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/418.8 (KHTML, like Gecko) Safari/419.3"                           , "webkit safari mac"], // Safari browser 2.0.4 for MAC OS X (10.4.7)
["Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/417.9 (KHTML, like Gecko) Safari/417.8"                           , "webkit safari mac"], // Safari browser 2.0.3 for MAC OS X (10.4.4)
["Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en) AppleWebKit/417.3 (KHTML, like Gecko) Safari/417.2"                         , "webkit safari mac"], // Safari browser 2.0 for MAC OS X (10.4.4 build)
["Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/412 (KHTML, like Gecko) Safari/412"                               , "webkit safari mac"], // Safari browser 2.0 for MAC OS X (10.4.1 build 8B15)
["Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/312.5.1 (KHTML, like Gecko) Safari/312.3.1"                    , "webkit safari mac"], // Safari 1.3.1 on 1.3.9 after after Security update 2005-008
["Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/312.5 (KHTML, like Gecko) Safari/312.3"                        , "webkit safari mac"], // Safari 1.3.1 (v312.3) 10.3.9 = last update on last version of Panther
["Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/124 (KHTML, like Gecko) Safari/125.1"                             , "webkit safari mac"], // Safari browser 1.25.1 for MAC OS 
["Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/106.2 (KHTML, like Gecko) Safari/100.1"                           , "webkit safari mac"], // Safari browser 1.0 for MAC OS X
["Mozilla/5.0 (Macintosh; U; PPC Mac OS X; es) AppleWebKit/85 (KHTML, like Gecko) Safari/85"                                 , "webkit safari mac"], // Safari browser 1.0 for MAC OS X with spanish language variant
["Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/74 (KHTML, like Gecko) Safari/74"                              , "webkit safari mac"], // Safari browser build 74 for MAC OS X
["Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/51 (like Gecko) Safari/51"                                        , "webkit safari mac"], // Safari browser for MAC OS X


###