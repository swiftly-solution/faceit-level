<p align="center">
  <a href="https://github.com/swiftly-solution/faceit-level">
    <img src="https://cdn.swiftlycs2.net/swiftly-logo.png" alt="SwiftlyLogo" width="80" height="80">
  </a>

  <h3 align="center">[Swiftly] Faceit Level</h3>

  <p align="center">
    A simple plugin for Swiftly that queries the level faceit of a player and add the icon on the scoreboard.
    <br/>
  </p>
</p>

<p align="center">
  <img src="https://img.shields.io/github/downloads/swiftly-solution/faceit-level/total" alt="Downloads"> 
  <img src="https://img.shields.io/github/contributors/swiftly-solution/faceit-level?color=dark-green" alt="Contributors">
  <img src="https://img.shields.io/github/issues/swiftly-solution/faceit-level" alt="Issues">
  <img src="https://img.shields.io/github/license/swiftly-solution/faceit-level" alt="License">
</p>

---

### Installation 👀

1. Download the newest [release](https://github.com/swiftly-solution/faceit-level/releases).
2. Everything is drag & drop, so i think you can do it!
3. You can either make the workshop addon yourself or use ours that it's publicly available [here](https://steamcommunity.com/sharedfiles/filedetails/?id=3369129706)

### Instructions on making the addon 📝

1. Download the `workshop.rar` archive from the GitHub repository.
2. Navigate to your game files, which by default are in: `Steam\steamapps\common\Counter-Strike Global Offensive\game\csgo` and open the `gameinfo.gi` file. There, scroll down until you find `VpkDirectories`, add a new entry with the `panorama/images/econ/status_icons` path, it should look like this:
   `"include" 		"panorama/images/econ/status_icons"`
3. Open the Workshop Tools and make a new addon, there, upload the `panorama` folder from the archive onto `Steam\steamapps\common\Counter-Strike Global Offensive\game\csgo_addons\YOUR_ADDON_NAME` and onto `Steam\steamapps\common\Counter-Strike Global Offensive\content\csgo_addons\YOUR_ADDON_NAME`
4. Upload the addon to the workshop and wait for the approval.
5. Delete the entry that we did in gameinfo.gi, (this is the important as you can't join any community servers with modified gameinfo.gi)

### Configuring the plugin 🧐

- After installing the plugin, you need to change the default values from `addons/swiftly/configs/faceit-level.json`
- In order to create an Faceit API Key, follow these instructions:

1. Click [here](https://developers.faceit.com/apps/new) and make a new app.
2. Go to `API KEYS` and press on the plus sign, at the API Type select `Client-Side`.
3. Change the API Key from `addons/swiftly/configs/faceit-level.json` with your freshly generated Key.

### Credits ✨

- Thanks to Pisex for providing the images (and the base mm plugin too).

### Creating A Pull Request 😃

1. Fork the Project
2. Create your Feature Branch
3. Commit your Changes
4. Push to the Branch
5. Open a Pull Request

### Have ideas/Found bugs? 💡

Join [Swiftly Discord Server](https://swiftlycs2.net/discord) and send a message in the topic from `📕╎plugins-sharing` of this plugin!

---
