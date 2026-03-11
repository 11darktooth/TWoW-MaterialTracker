# MaterialTracker - Attributions

## Third-Party Code and Design Inspiration

### pfQuest
**Author:** Shagu
**License:** GPL (assumed based on standard addon practices)
**URL:** https://github.com/shaguftaali/pfQuest

**Used for:**
- Visual design inspiration for the tracker frame
- Frame movement and locking mechanism patterns
- Collapsible entry hierarchy concept
- Item database API integration

**Specific patterns adapted:**
- Tracker frame creation and positioning (tracker.lua)
- Backdrop alpha transitions on mouse hover
- Collapsible category implementation with expand/collapse states
- Font string positioning for hierarchical display

**Note:** MaterialTracker's tracker frame visual design is heavily inspired by pfQuest's quest tracker. We use similar positioning, color schemes, and interaction patterns to provide a consistent user experience. The actual implementation is custom-built for material tracking purposes.

---

### pfUI
**Author:** Shagu
**License:** GPL (assumed based on standard addon practices)
**URL:** https://github.com/shaguftaali/pfUI

**Used for:**
- Optional theme integration (when available)
- Font fallback references
- Frame anchor conversion utilities

---

### Bagshui
**Author:** veechs
**License:** MIT (assumed based on standard addon practices)

**Used for:**
- Optional bank inventory scanning integration (future feature)

---

## Design Philosophy

MaterialTracker aims to integrate seamlessly with the Turtle WoW addon ecosystem, particularly with pfQuest and pfUI. When these addons are installed, MaterialTracker will match their visual style and leverage their functionality. When they are not available, MaterialTracker provides sensible fallbacks using standard WoW UI elements.

## License

MaterialTracker itself is licensed under the MIT License (see LICENSE file).

While we draw inspiration from the visual design of pfQuest, all code in MaterialTracker is original implementation unless otherwise noted in comments. We deeply appreciate the work of the addon authors listed above and recommend installing their addons for the best experience.
