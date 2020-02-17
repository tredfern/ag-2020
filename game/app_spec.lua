-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

describe("game.app", function()
  local app = require "game.app"

  it("can render components to moonpie", function()
    mock(moonpie)
    local s = { id = "test-component" }
    app.render(s)
    local n = moonpie.ui.current.find_by_id("test-component")
    assert.not_nil(n)
  end)

  it("can quit the game", function()
    mock(love.event)
    app.quit()
    assert.spy(love.event.quit).was.called()
  end)

  it("sets up a hot key that binds escape to going back to the title screen", function()
    moonpie.keyboard:keypressed("escape")
    assert.not_nil(moonpie.ui.current.find_by_id("title_screen"))
  end)
end)