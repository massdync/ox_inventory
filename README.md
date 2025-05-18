# ox_inventory

This is a fork of the original ox_inventory v2.41.0, with QB support

What I want to implement in this fork:

- [x] Allow opening trunks with primary inventory button

    See line 786 in [client.lua](./client.lua) and [config.cfg](./config.cfg)

- [ ] Better way to add custom items without modifying the original files

    The original way to add new items is modifying files like [data/items.lua](data/items.lua). In my opinion this isn't effective and might cause errors (This script treats the file as plain text when adding new items into it). So I created the [data/custom/](data/custom/) directory and I can just add items into the `.lua` files in there.

    I modified some of the logic to make the script to be able to read these custom files. Here's an example in [modules/items/shared.lua](modules/items/shared.lua):

    ```lua
    -- Read both files and merge them into 1 table
    local oxWeapons = lib.load('data.weapons')
    local customWeapons = lib.load('data.custom.weapons')

    for category, categoryItem in pairs(customWeapons) do
        for name, info in pairs(categoryItem) do
            oxWeapons[category][name] = info
        end
    end

    -- The original logic etc...
    for type, data in pairs(oxWeapons) do
        ...
    end
    ```

    There's more across the script, see this [issue](https://github.com/massdync/ox_inventory/issues/1)

- [ ] Prevent item loss from trying to pick up an item when inventory is full

    (Already implemented by the original creators?)

    I had experience with ox_inventory where I'm allowed to pickup an item via ox_target but the item wasn't actually added to my inventory because it was full, and the item disappeared after that

    I believe this can be done via returning `false` in an event listener (Return `true` to allow the action, `false` to cancel it), see: https://overextended.dev/ox_inventory/Events/Client

- [ ] Prevent item loss from trying to pick up an item when inventory maximum weight is reached

    Same as the one above, I believe this can also be done within the same event listener.

Some of the items above might be finished but need further tests.

<hr>

A complete inventory system for FiveM, implementing items, weapons, shops, and more without any strict framework dependency.

![](https://img.shields.io/github/downloads/overextended/ox_inventory/total?logo=github)
![](https://img.shields.io/github/downloads/overextended/ox_inventory/latest/total?logo=github)
![](https://img.shields.io/github/contributors/overextended/ox_inventory?logo=github)
![](https://img.shields.io/github/v/release/overextended/ox_inventory?logo=github)

## 📚 Documentation

https://overextended.dev/ox_inventory

## 💾 Download

https://github.com/overextended/ox_inventory/releases/latest/download/ox_inventory.zip

## Supported frameworks

We do not guarantee compatibility or support for third-party resources.

- [ox_core](https://github.com/overextended/ox_core)
- [esx](https://github.com/esx-framework/esx_core)
- [qbox](https://github.com/Qbox-project/qbx_core)
- [nd_core](https://github.com/ND-Framework/ND_Core)
- [qb-core](https://github.com/qbcore-framework/qb-core) (LIMITED SUPPORT! Use qbox instead)

## ✨ Features

- Server-side security ensures interactions with items, shops, and stashes are all validated.
- Logging for important events, such as purchases, item movement, and item creation or removal.
- Supports player-owned vehicles, licenses, and group systems implemented by frameworks.
- Fully synchronised, allowing multiple players to [access the same inventory](https://user-images.githubusercontent.com/65407488/230926091-c0033732-d293-48c9-9d62-6f6ae0a8a488.mp4).

### Items

- Inventory items are stored per-slot, with customisable metadata to support item uniqueness.
- Overrides default weapon-system with weapons as items.
- Weapon attachments and ammo system, including special ammo types.
- Durability, allowing items to be depleted or removed overtime.
- Internal item system provides secure and easy handling for item use effects.
- Compatibility with 3rd party framework item registration.

### Shops

- Restricted access based on groups and licenses.
- Support different currency for items (black money, poker chips, etc).

### Stashes

- Personal stashes, linking a stash with a specific identifier or creating per-player instances.
- Restricted access based on groups.
- Registration of new stashes from any resource.
- Containers allow access to stashes when using an item, like a paperbag or backpack.
- Access gloveboxes and trunks for any vehicle.
- Random item generation inside dumpsters and unowned vehicles.

## Copyright

Copyright © 2024 Overextended <https://github.com/overextended>

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.
