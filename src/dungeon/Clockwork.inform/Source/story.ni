"Clockwork Descent" by "Andrew Brookins"

Use scoring.
Include Exit Lister by Gavin Lambert.

When play begins:
	now the score is 0;
	now the maximum score is 60;
	now the left hand status line is
		"[the player's surroundings] / [turn count] / [score]";
	now the right hand status line is "".

[Level 1: Aerial Platform]

Tower Entrance is a room. "You stand at the base of a massive clockwork tower, its brass and copper walls stretching impossibly high above you. Enormous gears slowly turn along its exterior, driving countless mechanisms. A series of iron rungs forms a ladder that ascends to what appears to be an aerial platform high above. Wind whistles around you, carrying the scent of oil and steam. A weathered sign nearby reads 'Caution: Clockwork mechanisms in operation. Authorized personnel only.'"

The iron ladder is scenery in Tower Entrance. "A sturdy set of iron rungs bolted directly into the tower's exterior wall, leading upward to the platform."
Understand "rungs" or "iron rungs" as the iron ladder.

Instead of climbing the iron ladder:
	increase the score by 2;
	move the player to Aerial Platform;
	say "You climb the iron rungs, carefully navigating your way up the tower's exterior. After what feels like an eternity of climbing, you finally reach the top. [bracket]+2 points[close bracket]".

The warning sign is scenery in Tower Entrance. "The weathered metal sign reads: 'CAUTION: Clockwork mechanisms in operation. Authorized personnel only.'"
Understand "sign" or "weathered sign" or "metal sign" or "caution" as the warning sign.

Aerial Platform is a room. "You stand on a wind-swept sky dock atop a flying clockwork airship platform attached to the tower. Gears whirr, propellers spin, and steam vents hiss around you. A dirigible is moored to a spire to the east. A cargo crane stands nearby, currently misaligned, blocking a large elevator hatch in the floor. A narrow metal gantry extends toward the tower's edge, creaking ominously."

The dirigible is scenery in Aerial Platform. "A sleek brass and mahogany airship tied to a mooring post. Its balloon is made of treated canvas, taut with lifting gas."

A device can be aligned or misaligned. A device has a text called alignment description.
The crane is a device in Aerial Platform. The crane is misaligned. The alignment description of the crane is "misaligned".
The control panel is scenery in Aerial Platform. "A brass-plated panel with an empty slot shaped for a lever. Above it is a diagram showing gear alignment positions: circle, triangle, square."

Workshop is a room. "An expansive mechanical workshop fills this level of the tower. Churning gears, belt-driven machines, and boiling pipes surround you in every direction. The air is dimmer here, oil-stained and heavy with the scent of machine grease - a stark contrast to the airy platform above. Steam hisses from valves, and the floor vibrates with the motion of a colossal central gear assembly. Conveyor belts carry parts across the room. Doorways lead to a storage area to the east, a control room to the north, and a machine bay to the west."

The elevator hatch is a door. It is down of Aerial Platform and up of Workshop. The elevator hatch is closed and locked. Understand "hatch" or "elevator hatch" or "floor hatch" as the elevator hatch.

The gantry is a device in Aerial Platform. The gantry is scenery.
The gantry can be intact or collapsed.
The gantry is intact.

A workbench is scenery in Aerial Platform. "A sturdy steel bench marked with tool dents. A toolbox rests upon it."
A toolbox is a container on the workbench. It is closed and openable. "A battered metal toolbox, likely holding useful tools." Inside the toolbox are a bronze lever and a heavy wrench.

The bronze lever is a thing.
Understand "lever" as the bronze lever.
The description is "A heavy bronze lever shaped perfectly to fit the control panel's slot." The bronze lever is portable.
The heavy wrench is a thing.
Understand "wrench" as the heavy wrench.
The description is "A robust wrench for tightening nuts and bolts." The heavy wrench is portable.

A supply crate is a container in Aerial Platform. It is closed and openable. "A reinforced wooden crate stamped with the airship's insignia." Inside the supply crate is the brass spyglass.
The brass spyglass is a thing in the supply crate.
Understand "spyglass" or "glass" as the brass spyglass.
The description is "A finely crafted clockwork spyglass of polished brass." The brass spyglass is portable.

After taking the bronze lever:
	increase the score by 1;
	say "You take the bronze lever. [bracket]+1 point[close bracket]".

After taking the heavy wrench:
	increase the score by 1;
	say "You take the heavy wrench. [bracket]+1 point[close bracket]".

After taking the brass spyglass:
	increase the score by 3;
	say "You pocket the brass spyglass. [bracket]+3 points[close bracket]".

Instead of inserting the bronze lever into the control panel when the crane is misaligned:
	now the crane is aligned;
	increase the score by 5;
	now the elevator hatch is unlocked;
	now the elevator hatch is open;
	say "You slot the bronze lever into the control panel. Gears grind as the crane rotates into alignment, and steam hisses as the hatch unlocks and swings open. [bracket]+5[close bracket]".

Instead of inserting the bronze lever into the control panel when the crane is aligned:
	say "The lever is already in place and the crane hums contentedly.".

Instead of inserting something into the control panel:
	say "That doesn't fit the lever slot.".

Instead of going down when the gantry is intact and the elevator hatch is closed:
	now the gantry is collapsed;
	decrease the score by 10;
	move the player to Workshop;
	end the story saying "The metal groans under your weight! The gantry buckles and you plunge through a trapdoor in the floor!".

Cogsworth is a person in Aerial Platform. "A small clockwork automaton tinkerer clings to the gantry, its right leg hinge loose." Cogsworth can be repaired or broken. Cogsworth is broken.

The lift-code is a number that varies. The lift-code is 0.

After giving the heavy wrench to Cogsworth when Cogsworth is broken:
	now Cogsworth is repaired;
	now lift-code is 472;
	now the player is lift-code-aware;
	increase the score by 5;
	say "You hand the wrench to Cogsworth. He tightens his leg hinge with a few clicks, stands upright, and says, 'The code for the workshop lift is 472.' [bracket]+5[close bracket]".

After giving the heavy wrench to Cogsworth when Cogsworth is repaired:
	say "Cogsworth pats his leg gratefully but doesn't need further help.".

A clockwork raven is a kind of animal.
A clockwork raven called the Raven is in Aerial Platform. The description of the Raven is "A metallic raven with glowing red eyes circles above, watching you.".

The Steam Valve is a device.
The Steam Valve is in Aerial Platform.
The Steam Valve can be switched on or switched off.
The Steam Valve is switched off.
The description of the Steam Valve is "A brass valve controlling a steam vent.".

A steam vent is scenery.
The steam vent is in Aerial Platform.
The steam vent can be active or inactive.
The steam vent is inactive.
The description of the steam vent is "A vent that can release a burst of steam when powered.";

Instead of switching on the Steam Valve:
	now the steam vent is active;
	say "Steam hisses from the vent!".

After switching on the Steam Valve when the steam vent is active and the Raven is in the location:
	remove the Raven from play;
	increase the score by 5;
	now a small gear is in the location;
	say "The raven screeches and flies away under the blast of steam, dropping a small brass gear. [bracket]+5[close bracket]".

A small gear is a thing. The description is "A tiny brass gear once held by the raven." The small gear is portable.

After taking the small gear:
	increase the score by 1;
	say "You pick up the small gear. [bracket]+1[close bracket]".

Instead of going down when the elevator hatch is open and the elevator hatch is unlocked:
	move the player to Workshop;
	say "You descend into the workshop, gears clanking behind you.".
	
[Level 2: Workshop - Changed from single room to multiple rooms]

The Storage Area is east of Workshop. "This cluttered space houses spare parts, tools, and maintenance supplies. Metal shelves line the walls, packed with components and engineering materials. A heavy tool chest sits against the far wall. The main workshop lies to the west."

The Control Room is north of Workshop. "The workshop's nerve center is filled with monitoring equipment and control panels. Pressure gauges, brass dials, and lever arrays cover the walls. A large service elevator platform occupies the center of the room, its control panel gleaming with polished brass fixtures. The main workshop is to the south."

The Machine Bay is west of Workshop. "The constant din of operating machinery fills this high-ceilinged chamber. Massive gear assemblies turn overhead, while automated belt mechanisms transport components across the room. Steam regularly vents from pipes along the walls. A small floor hatch bolted to the floor appears to be an emergency exit. The main workshop lies to the east."

[Workshop machinery and objects redistributed across rooms]

The service elevator is a device in the Control Room.
The service elevator can be locked or unlocked. The service elevator is locked.
Understand "lift" or "platform" or "elevator" or "service lift" or "workshop lift" as the service elevator.
The description of the service elevator is "A large industrial elevator platform designed to transport heavy machinery between levels. Its control panel has a numeric keypad for entering a code."

The elevator control panel is scenery in the Control Room. "A control panel with a numeric keypad and a large button marked 'DESCEND'. The keypad appears to require a 3-digit code."
Understand "control panel" or "panel" or "keypad" or "numeric keypad" as the elevator control panel.

The elevator button is part of the elevator control panel.
Understand "button" or "descend button" as the elevator button.

A person can be lift-code-aware or lift-code-unaware. A person is usually lift-code-unaware.

Instead of pushing the elevator button:
	if the service elevator is locked:
		say "The button refuses to activate. The control panel flashes red - it seems to require a code.";
	otherwise:
		say "As you press the button, the elevator platform begins to descend with a mechanical groan.";
		end the story finally saying "You descend further into the tower's depths. Level 2 complete!"

Understand "enter [text] on keypad" or "enter [text]" or "type [text]" or "input [text]" or "set dial to [text]" as entering code.
Entering code is an action applying to one topic.

Check entering code:
	if the player is not in the Control Room:
		say "There's no keypad here to enter a code." instead.

Carry out entering code:
	if the topic understood matches "472":
		if the service elevator is locked:
			now the service elevator is unlocked;
			increase the score by 10;
			say "You enter 472 on the keypad. With a loud clunk, the elevator powers on and its panel glows green! [bracket]+10 points[close bracket]";
		otherwise:
			say "The elevator is already activated.";
	else:
		say "The keypad flashes red. That code doesn't seem to work.";
		if a random chance of 1 in 2 succeeds:
			say "Suddenly, a gauge spins into the red zone as you input the wrong code...";
			activate-steam-trap.

To activate-steam-trap:
	if the steam pipe is not leaking:
		now the steam pipe is leaking;
		say "A pipe bursts in the Workshop, releasing a scalding jet of steam into the room! You need to find a way to stop it before it fills the entire workshop level!";
		move the steam cloud to Workshop.

The steam pipe is a device in Workshop. The steam pipe can be functioning or leaking. The steam pipe is functioning.
The description of the steam pipe is "A thick copper pipe running along the wall, carrying superheated steam from lower levels. [if the steam pipe is leaking]It has a large crack spewing scalding steam into the room![otherwise]It looks solid, if under considerable pressure.[end if]".
Understand "pipe" or "pipes" or "copper pipe" as the steam pipe.

The steam cloud is a thing. "Scalding steam fills parts of the room, making it dangerous to move around freely."
The description is "A billowing cloud of hot steam that could cause serious burns if you walk through it."

A spare gasket is a thing in the Storage Area. "A rubber gasket sits on a nearby shelf, appearing to be the right size for pipe repairs."
The description is "A thick rubber gasket designed to seal high-pressure pipe connections."
Understand "gasket" or "rubber gasket" as the spare gasket.

Instead of taking the spare gasket:
	now the player carries the spare gasket;
	increase the score by 2;
	say "You take the spare gasket. [bracket]+2 points[close bracket]".

Instead of fixing the steam pipe:
	if the player carries the spare gasket:
		now the steam pipe is functioning;
		remove the steam cloud from play;
		increase the score by 5;
		say "You carefully apply the spare gasket to the broken pipe. After a tense moment, the seal holds and the steam stops spewing out. [bracket]+5 points[close bracket]";
	otherwise:
		say "You need something to seal the broken pipe.".

Understand "fix [something]" or "repair [something]" or "seal [something]" as fixing.
Fixing is an action applying to one thing.

Check fixing:
	if the noun is not the steam pipe:
		say "That doesn't need fixing." instead.

Carry out fixing:
	say "You need something to fix this with.".

The copper gear key is a thing in the Machine Bay. "A distinctive copper gear with odd teeth lies partially hidden beneath a belt mechanism."
The description is "An unusual copper gear with teeth arranged in an intricate pattern. It appears to be designed as a key rather than a functional gear."
Understand "copper gear" or "gear key" or "key" as the copper gear key.

Instead of taking the copper gear key:
	now the player carries the copper gear key;
	increase the score by 5;
	say "You take the copper gear key. It feels like it might fit into a specialized lock somewhere. [bracket]+5 points[close bracket]".

A tool chest is a container in the Storage Area. It is closed and openable. "A heavy tool chest sits against the far wall."
The description is "A large, industrial-strength chest for storing workshop tools."

Marigold is a woman in the Storage Area. "A woman in grease-stained overalls crouches [if the steam pipe is leaking]behind the tool chest, coughing[otherwise]by the tool chest, examining some components[end if]."
The description is "A tough-looking woman with practical overalls and calloused hands. A patch on her jacket identifies her as 'Marigold, Chief Engineer'."

After fixing the steam pipe when Marigold is in the Storage Area and the steam pipe is in Workshop:
	say "Word seems to travel fast. Marigold stands up straight in the Storage Area, her coughing subsiding. 'Thank you for that! I was afraid the whole level would fill with steam. That pipe's been troublesome for weeks.'";
	now Marigold carries the pocket watch.

The pocket watch is a thing.
The description is "A polished brass pocket watch with intricate clockwork visible through a glass panel. Looking carefully, you notice the numbers '472' engraved inside the cover."
Understand "watch" or "brass watch" as the pocket watch.

After examining the pocket watch:
	now the player is lift-code-aware;
	say "You notice the numbers '472' delicately engraved inside the cover. That looks like it could be important."

Instead of asking Marigold about "help" when Marigold carries the pocket watch:
	now the player carries the pocket watch;
	increase the score by 5;
	say "'Here, take this as thanks for your help,' Marigold says, handing you a pocket watch. 'And a bit of advice - in the forge below, mind the pattern: short-long-long-short. It's the sequence to calibrate the smelter.' [bracket]+5 points[close bracket]".

A gearling is a kind of animal. "A fist-sized mechanical creature scuttles across the floor, its gear-shaped legs clicking on the metal." Understand "gear spider" or "mechanical pest" or "gear creature" as a gearling.
The description of a gearling is "A small mechanical pest resembling a spider made of gears and springs. Its tiny metal mandibles look sharp enough to cut through wire."

A gearling called a skittering gearling is in Workshop.
A gearling called a clicking gearling is in the Machine Bay.
A gearling called a whirring gearling is in the Machine Bay.

The machine oil is a thing in the tool chest. "A can of machine oil sits on a shelf."
The description is "A metal can filled with slick lubricating oil for machinery."
Understand "oil" or "can" or "oil can" as the machine oil.

Instead of taking the machine oil:
	now the player carries the machine oil;
	increase the score by 1;
	say "You take the can of machine oil. [bracket]+1 point[close bracket]".

Instead of attacking a gearling:
	say "The gearling is too quick and skitters away from your attack.".

Instead of pouring the machine oil on a gearling:
	remove the noun from play;
	say "You pour oil onto the gearling. It slips and slides uncontrollably before tumbling into a crack in the floor, disappearing from sight.";
	increase the score by 2;
	say "[bracket]+2 points[close bracket]";
	if the number of gearlings in the location is 0:
		if all gearlings are not in the location and the scrap metal is not in a room:
			say "With the last of the gearlings in this area gone, you've made progress against the infestation.";
		otherwise if all gearlings are not in a room:
			say "With the last of the gearlings gone, you notice they've dropped some scrap metal.";
			now the scrap metal is in the Machine Bay;
		otherwise:
			say "One gearling down, but there seem to be more elsewhere in the workshop.";

Understand "pour [something] on [something]" as pouring it on. Pouring it on is an action applying to two things.

Check pouring it on:
	if the noun is not the machine oil:
		say "You can't pour that." instead.

Carry out pouring it on:
	say "You pour [the noun] on [the second noun], but nothing useful happens.".

The scrap metal is a thing. "Some scrap metal pieces lie on the floor."
The description is "Various small metal pieces, gears, and springs from the defeated gearlings."
Understand "scrap" or "metal" as the scrap metal.

Instead of taking the scrap metal:
	now the player carries the scrap metal;
	increase the score by 1;
	say "You collect the scrap metal. It might be useful for something. [bracket]+1 point[close bracket]".

The emergency hatch is a door. It is down from the Machine Bay. The emergency hatch is locked.
Understand "hatch" or "floor hatch" or "emergency exit" or "bolted hatch" as the emergency hatch.
The description is "A small metal hatch bolted to the floor, likely an emergency exit. It appears to be locked from this side."

The crowbar is a thing in Workshop. "A sturdy crowbar leans against one of the workbenches."
The description is "A solid steel crowbar, perfect for prying things open."
Understand "bar" or "pry bar" as the crowbar.

Instead of taking the crowbar:
	now the player carries the crowbar;
	increase the score by 1;
	say "You take the crowbar. [bracket]+1 point[close bracket]".

Instead of unlocking the emergency hatch with the crowbar:
	now the emergency hatch is unlocked;
	increase the score by 3;
	say "You wedge the crowbar into the seam of the hatch and heave with all your strength. With a screech of metal, the bolts give way and the hatch swings open. [bracket]+3 points[close bracket]".

Instead of going down through the emergency hatch when the emergency hatch is unlocked:
	say "You carefully lower yourself through the hatch and begin descending the narrow spiral staircase into darkness below.";
	end the story finally saying "You take the emergency route deeper into the tower. Level 2 complete!"
