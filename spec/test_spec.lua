-- test_spec.lua
expose("exposed test for lua-css-parser", function()
    require("cssparser")

    -- tests can go here

    describe("some assertions", function()
        it("tests positive assertions", function()
            assert.is_true(true)    -- Lua keyword chained with _
            assert.True(true)         -- Lua keyword using a capital
            assert.are.equal(1, 1)
            assert.has.errors(function() error("this should fail") end)
        end)

        it("tests negative assertions", function()
            assert.is_not_true(false)
            assert.are_not.equals(1, "1")
            assert.has_no.errors(function() end)
        end)
    end)

    describe("a block", function()
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
