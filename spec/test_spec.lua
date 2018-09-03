-- test_spec.lua
expose("exposed test for lua-css-parser", function()
    local cssparser = require("cssparser")

    -- tests can go here
    local testdocument = [[
@page {
  size: a5;
  margin: 1cm;
}

@import url("fineprint.css") print;
@import url("bluish.css") speech;
@import 'custom.css';
@import url("chrome://communicator/skin/");

@supports (display: grid) {
    div {
          display: grid;
    }
}

/* At the top level of your code */
@media screen and (min-width: 900px) {
  article {
    padding: 1rem 3rem;
  }
}

/* Nested within another conditional at-rule */
@supports (display: flex) {
  @media screen and (min-width: 900px) {
    article {
      display: flex;
    }
  }
}

@font-face {
  font-family: myFirstFont;
  src: url(sansation_light.woff);
}

/* media queries doesn't seem to be supported */
@media print {
  body {
    margin: 10pt;
  }
}

div.outer {
  font-size: 14pt;
  color: red;
  text-align: justify;
  width: 80%;
  margin-bottom: 2em;
}

img {
  width: 20%;
}

.img-left {
  float: left;
  margin-right: 0.5em;
  margin-bottom: 0.25em;
}

.img-right {
  float: right;
  margin-left: 0.5em;
  margin-bottom: 0.25em;
}


table {
  border: 1px solid black;
  width: 50%;
  border-collapse : collapse;
}

td, th {
  border: 1px solid black;
  text-align: center;
}

/* test the comments */

img:before{
  content: "hello world";
}
]]

    describe("Basic parsing should work", function()
      local css = cssparser.new()
        it("should have lots of features", function()

            -- deep check comparisons!
            assert.are.same({ table = "great"}, { table = "great" })

            -- or check by reference!
            assert.are_not.equal({ table = "great"}, { table = "great"})

            assert.truthy("this is a string") -- truthy: not false or nil

            assert.True(1 == 1)
            assert.is_true(1 == 1)

            assert.falsy(nil)
            assert.has_error(function() error("Wat") end, "Wat")
        end)
    end)

    -- more tests pertaining to the top level
end)
