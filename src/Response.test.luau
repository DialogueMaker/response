--!strict

local packages = script.Parent.Parent.roblox_packages;
local Response = require(script.Parent);
local ijw = require(packages.ijw);
local describe = ijw.describe;
local it = ijw.it;
local expect = ijw.expect;

return {
  describe("Response", {
    it(`is a "Response"-type Dialogue`, function()

      local response = Response.new("");

      expect(response.type).toBe("Response");

    end);
  })
};