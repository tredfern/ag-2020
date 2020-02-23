-- Copyright (c) 2020 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT


moonpie.ui.components("hero_roster", function(props)
  return {
    id = "hero_roster_screen",
    moonpie.ui.components.message_layout({
      title = "Hero Roster",
      content = {
        moonpie.utility.tables.map(
          props.heros,
          function(h, i)
            return moonpie.ui.components.hero_row({ hero = h, row_number = i })
          end)
      }
    })
  }
end)

moonpie.ui.components("hero_row", function(props)
  return {
    id = "hero_row_" .. props.row_number,
    style = "hero-row",
    moonpie.ui.components.text({ text = props.hero.name, style = "hero-row-name align-middle" }),
    moonpie.ui.components.button({ caption = "Quest!", style = "btn-warning align-right align-middle" })
  }
end)