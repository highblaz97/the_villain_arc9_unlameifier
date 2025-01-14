local ATT = {}

///////////////////////////////////////      eft_frontsight_mp7


ATT = {}

ATT.PrintName = "HK MP7 flip-up front sight (Folded)"
ATT.CompactName = "MP7"
ATT.Icon = Material("entities/arc9/unlameifier/eft_mp7f_fold.png", "mips smooth")
ATT.Description = [[A removable folding flip-up front sight for MP7 SMGs, installed on the mount. Manufactured by Heckler & Koch. Folded for use of the alternative low-profile sights.

WARNING: This will fold other iron sights. Use only with irons that have low-profile sights]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/arc9/darsu_eft/mods/fs_hkmp7.mdl"

ATT.Category = {"eft_frontsight"}
ATT.MenuCategory = "ARC9 - EFT Attachments"



ATT.DrawFunc = function(swep, model)
    if swep:GetValue("FoldSights") then
        model:SetBodygroup(1, 1)
    else
        model:SetBodygroup(1, 0)
    end
end

ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.FoldSights = true

ARC9.LoadAttachment(ATT, "eft_frontsight_mp7_fold")

///////////////////////////////////////      eft_rearsight_mp7


ATT = {}

ATT.PrintName = "HK MP7 flip-up rear sight (Folded)"
ATT.CompactName = "MP7"
ATT.Icon = Material("entities/arc9/unlameifier/eft_mp7_fold.png", "mips smooth")
ATT.Description = [[A removable folding flip-up rear sight for MP7 SMGs. Manufactured by Heckler & Koch. Folded for use of the alternative low-profile sights.

WARNING: This will fold other iron sights. Use only with irons that have low-profile sights]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/arc9/darsu_eft/mods/rs_hkmp7.mdl"

ATT.Category = {"eft_rearsight"}
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.DrawFunc = function(swep, model)
    if swep:GetValue("FoldSights") then
        model:SetBodygroup(1, 1)
    else
        model:SetBodygroup(1, 0)
    end
end

ATT.Sights = {
    {
        Pos = Vector(0, 10, -0.70),
        Ang = Angle(0, -0.5, 0),
        Magnification = 1.1,
        ViewModelFOV = 53,
        IsIronSight = true
    }
}

ATT.FoldSights = true

ARC9.LoadAttachment(ATT, "eft_rearsight_mp7_folded")

///////////////////////////////////////      Force Down (Front)


ATT = {}

ATT.PrintName = "Force Iron Sights Down"
ATT.CompactName = "DOWN"
ATT.Icon = Material("entities/arc9/unlameifier/eft_iron_force_down.png", "mips smooth")
ATT.Description = [[Forces iron sights down.

For the record, you really only need one of these enabled. No, mixing them doesn't work.]]
ATT.SortOrder = -99

ATT.Category = {"eft_frontsight"}
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Bone = "j_gun",
        Pos = Vector(0, 0, 0),
        Ang = Angle(180, 180, 180),
        Icon_Offset = Vector(0, 0, 1),
        Category = {"eft_frontsight"}
    }
}

ATT.FoldSights = true

ARC9.LoadAttachment(ATT, "unlameifier_eft_iron_force_down_front")

///////////////////////////////////////      Force Down (Rear)


ATT = {}

ATT.PrintName = "Force Iron Sights Down"
ATT.CompactName = "DOWN"
ATT.Icon = Material("entities/arc9/unlameifier/eft_iron_force_down.png", "mips smooth")
ATT.Description = [[Forces iron sights down.

For the record, you really only need one of these enabled. No, mixing them doesn't work.]]
ATT.SortOrder = -99

ATT.Category = {"eft_rearsight"}
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Attachments = {
    {
        PrintName = "Rear sight",
        Bone = "j_gun",
        Pos = Vector(0, 0, 0),
        Ang = Angle(180, 180, 180),
        Icon_Offset = Vector(0, 0, 1),
        Category = {"eft_rearsight"}
    }
}

ATT.FoldSights = true

ARC9.LoadAttachment(ATT, "unlameifier_eft_iron_force_down_rear")

///////////////////////////////////////      Force Up (Front)


ATT = {}

ATT.PrintName = "Force Iron Sights Up"
ATT.CompactName = "UP"
ATT.Icon = Material("entities/arc9/unlameifier/eft_iron_force_up.png", "mips smooth")
ATT.Description = [[Forces iron sights up.

For the record, you really only need one of these enabled. No, mixing them doesn't work.]]
ATT.SortOrder = -98

ATT.Category = {"eft_frontsight"}
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Bone = "j_gun",
        Pos = Vector(0, 0, 0),
        Ang = Angle(180, 180, 180),
        Icon_Offset = Vector(0, 0, 1),
        Category = {"eft_frontsight"}
    }
}

ATT.FoldSights = false

ARC9.LoadAttachment(ATT, "unlameifier_eft_iron_force_up_front")

///////////////////////////////////////      Force Up (Rear)


ATT = {}

ATT.PrintName = "Force Iron Sights Up"
ATT.CompactName = "UP"
ATT.Icon = Material("entities/arc9/unlameifier/eft_iron_force_up.png", "mips smooth")
ATT.Description = [[Forces iron sights up.

For the record, you really only need one of these enabled. No, mixing them doesn't work.]]
ATT.SortOrder = -98

ATT.Category = {"eft_rearsight"}
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Attachments = {
    {
        PrintName = "Rear sight",
        Bone = "j_gun",
        Pos = Vector(0, 0, 0),
        Ang = Angle(180, 180, 180),
        Icon_Offset = Vector(0, 0, 1),
        Category = {"eft_rearsight"}
    }
}

ATT.FoldSights = false

ARC9.LoadAttachment(ATT, "unlameifier_eft_iron_force_up_rear")

///////////////////////////////////////      Glock 17 Full Auto Sear


ATT = {}

ATT.PrintName = "Glock 17 Full Auto Sear"
ATT.CompactName = "Full Auto"
ATT.CustomPros = {["Enables Fully Automatic Fire"] = "",}
ATT.CustomCons = {["Locked To Fully Automatic Fire"] = "",}
ATT.Icon = Material("entities/arc9/unlameifier/eft_glock_fullauto.png", "mips smooth")
ATT.Description = [[Functionally similar to the infamous "Glock Switch", this is a more discrete take on its more obvious sibling. To reduce suspicion from law enforcement, the sear is installed into the backplate. This makes it appear as though the firearm has not been illegally modified until it is fired. This does, however, introduce some reliability problems. Your mileage may vary.

Unlike the Glock Switch, you cannot change the firemode due to its integral-installation design.]]
ATT.AutoStats = true

ATT.Category = {"eft_custom_glock"}

ATT.Firemodes = {
    {
        Mode = -1,
        -- add other attachment modifiers
    }
}

ATT.RPM = 600
ATT.RecoilUp = 75
ATT.VisualRecoilMult = 2
ATT.MalfunctionMeanShotsToFail = 75

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot", "eft_custom_glock"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_eft_glock_17_full_auto_balanced")

///////////////////////////////////////      Videogame Shotguns (M870)


ATT = {}

ATT.PrintName = "Videogame Logic"
ATT.CompactName = "Videogame Logic"
ATT.CustomPros = {["Better spread"] = "",}
ATT.CustomCons = {["Disable when using slugs"] = "",}
ATT.Icon = Material("entities/arc9/unlameifier/eft_shotgun_videogame.png", "mips smooth")
ATT.Description = [[Gives EFT shotguns more spread so then they behave more like a traditional videogame shotgun. Surprisingly very practical.

Maybe don't equip this on non-shotguns (unless you hate yourself)]]
ATT.AutoStats = true

ATT.Spread = 115 * ARC9.MOAToAcc

ATT.Category = {"eft_custom_slot"}
ATT.Folder = "Unlameifier/Utilities"
ATT.SortOrder = -98

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot",}
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_eft_videogame_shotguns")

ATT = {}

ATT.PrintName = "Force-Disable Damage Lookup Tables"
ATT.CompactName = "Disable DLUTs"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Force-disables damage lookup tables on weapons that use them for whatever reason. You NEED this in order to be able to modify damage on EFT weapons (except for shotguns, for some reason).

Still, if you're noticing your damage isn't being changed despite equipping a damage modifier, this will more than likely fix that problem. Beware that this can screw with damage curves.]]

ATT.Category = {"eft_custom_slot"}
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Folder = "Unlameifier/Utilities"

ATT.DamageLookupTable = false

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot",}
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_tuning_disable_dluts")

///////////////////////////////////////      DOOM Hold Pose


ATT = {}

ATT.PrintName = "Alternative viewmodel position (DOOM)"
ATT.CompactName = "DOOM Hold"
ATT.Icon = Material("entities/arc9/unlameifier/eft_doom.png", "mips smooth")
ATT.Description = [[You know what? Fuck all this tactical Bravo-Delta-Sierra-Mike larper shit. I'm playing DOOM.

Makes you hold your gun at the center of the screen, like DOOM.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true

ATT.ViewModelFOVBase = 80
ATT.ActivePos = Vector(-4.20, -7, -2.2)
ATT.ActiveAng = Angle(0, 0, 0)
ATT.ReloadPos = Vector(-3, -3, 9)
ATT.ReloadAng = Angle(0, 0, -13)
ATT.SprintAng = Angle(0, -10, 0)
ATT.SprintPos = Vector(-4.20, -7, -2.2)
ATT.CrouchPos = Vector(0, -3, 0)
ATT.CrouchAng = Angle(0, 0, 0)

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ATT.Category = {"eft_custom_slot"}
ATT.Folder = "Unlameifier/Toys"
ARC9.LoadAttachment(ATT, "unlameifier_eft_doom_hold")

///////////////////////////////////////      Extra Firemodes

ATT = {}

ATT.PrintName = "Full-Auto"
ATT.CompactName = "Full-Auto"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Full-auto. That's it. There's really nothing else to this. Is this a cheat? idk, probably. Were you going to ask for it anyway? Yes.

Just remember: No full-auto in the buildings.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes"

-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
    { Mode = -1, PoseParam = 2},
    { Mode = 1, PoseParam = 2 }
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_full_auto")

ATT = {}

ATT.PrintName = "Full-Auto ONLY"
ATT.CompactName = "Full-Auto ONLY"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Full-auto without the option for semi-auto. You like to live dangerously, I see.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes"

-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
    { Mode = -1, PoseParam = 2},
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_full_auto_only")

ATT = {}

ATT.PrintName = "Semi-Auto"
ATT.CompactName = "Semi-Auto"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Semi-auto. That's it. There's really nothing else to this. Is this a cheat? Highly unlikely. Were you going to ask for it anyway? No.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes"

-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
    { Mode = 1, PoseParam = 2 }
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_semi_auto")

ATT = {}

ATT.PrintName = "3 Round Burst"
ATT.CompactName = "3-Burst"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[3 Round Burst. That's it. There's really nothing else to this. Is this a cheat? idk, you like burst or something? Were you going to ask for it anyway? Probably.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes"

-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
    { Mode = 3, PoseParam = 2 },
	{ Mode = 1, PoseParam = 2 },
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_3rb")

ATT = {}

ATT.PrintName = "3 Round Burst ONLY"
ATT.CompactName = "3-Burst ONLY"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[3 Round Burst without the option for semi-auto. You like to live dangerously, but not too dangerously.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes"

-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
    { Mode = 3, PoseParam = 2 },
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_3rb_only")

ATT = {}

ATT.PrintName = "Navy Trigger Group"
ATT.CompactName = "Navy"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Full Auto, 3 Round Burst, and Semi-Auto all bundled together. For the man who can't decide whether he wants to burst his weapon or mag dump it.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes"

-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
    { Mode = -1, PoseParam = 2 },
	{ Mode = 3, PoseParam = 2 },
	{ Mode = 1, PoseParam = 2 },
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_navy")

ATT = {}

ATT.PrintName = "2 Round Burst"
ATT.CompactName = "2-Burst"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[2 Round Burst. Kinda like the KRISS Vector but minus the funny full-auto.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes"

-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
    { Mode = 2, PoseParam = 2 },
	{ Mode = 1, PoseParam = 2 },
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_2rb")

ATT = {}

ATT.PrintName = "KRISS Vector Trigger Group"
ATT.CompactName = "Vector"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Full Auto, 2 Round Burst, and Semi-Auto all bundled together. Kinda like the Navy Trigger Group but you work at Valve Software.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes"

-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
    { Mode = -1, PoseParam = 2 },
	{ Mode = 2, PoseParam = 2 },
	{ Mode = 1, PoseParam = 2 },
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_vector")

ATT = {}

ATT.PrintName = "Multi-Burst"
ATT.CompactName = "M-Burst"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Bursts divisible by 30. Have fun.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes"

-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
    { Mode = 30, PoseParam = 2 },
	{ Mode = 15, PoseParam = 2 },
	{ Mode = 10, PoseParam = 2 },
	{ Mode = 6, PoseParam = 2 },
	{ Mode = 3, PoseParam = 2 },
	{ Mode = 1, PoseParam = 2 },
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_mburst")

ATT = {}

ATT.PrintName = "Multi-Burst 2"
ATT.CompactName = "M-Burst 2"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Bursts divisible by 30, except for 30 and 1. Have fun.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes"

-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
	{ Mode = 15, PoseParam = 2 },
	{ Mode = 10, PoseParam = 2 },
	{ Mode = 6, PoseParam = 2 },
	{ Mode = 3, PoseParam = 2 },
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_mburst2")

ATT = {}

ATT.PrintName = "Multi-Burst 3"
ATT.CompactName = "M-Burst 3"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Bursts divisible by 30, except for 30, 15, 6, and 1. Have fun.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes"

-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
	{ Mode = 10, PoseParam = 2 },
	{ Mode = 3, PoseParam = 2 },
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_mburst3")

ATT = {}

ATT.PrintName = "Slamfire"
ATT.CompactName = "Slamfire"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Enables slamfire on manually-cycling weapons. Useless on automatics.

Needs another firemode to work. Doesn't matter what order you place this in.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes"

ATT.SlamFire = true

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_slamfire")

ATT = {}

ATT.PrintName = "Runaway Burst"
ATT.CompactName = "Runaway Burst"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Makes it so your bursts don't stop until they've completely finished their defined burst. You can use this with other firemodes, or use it by itself for a "Sputter" or Magdump mode.

Equip this first in your firemode stack or custom bursts won't work.]]
ATT.SortOrder = 0
ATT.AttNotForNPCs = true
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes"

ATT.RunawayBurst = true

-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
    { Mode = 9999, PoseParam = 2},
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_runaway_burst")

ATT = {}

ATT.PrintName = "Auto Burst"
ATT.CompactName = "Auto Burst"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Makes it so your bursts keep firing in a full-auto like pattern. On its own, it doesn't do much... So make sure to equip another firemode and a delay in the Burst Modifiers folder.

Equip this first in your firemode stack or it won't work.]]
ATT.SortOrder = 0
ATT.AttNotForNPCs = true
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes"

ATT.AutoBurst = true
ATT.RunawayBurst = true

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_autoburst")

ATT = {}

ATT.PrintName = "1 Second Delay"
ATT.CompactName = "1s"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Adds a 1 second delay between bursts. Can be used for autobursts or to stop you from spamming the trigger.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes/Burst Modifiers"

ATT.PostBurstDelay = 1

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_1s_delay")

ATT = {}

ATT.PrintName = "0.9s Delay"
ATT.CompactName = "0.9s"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Adds a 0.9s delay between bursts. Can be used for autobursts or to stop you from spamming the trigger.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes/Burst Modifiers"

ATT.PostBurstDelay = 0.9

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_09s_delay")

ATT = {}

ATT.PrintName = "0.8s Delay"
ATT.CompactName = "0.8s"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Adds a 0.8s delay between bursts. Can be used for autobursts or to stop you from spamming the trigger.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes/Burst Modifiers"

ATT.PostBurstDelay = 0.8

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_08s_delay")

ATT = {}

ATT.PrintName = "0.7s Delay"
ATT.CompactName = "0.7s"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Adds a 0.7s delay between bursts. Can be used for autobursts or to stop you from spamming the trigger.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes/Burst Modifiers"

ATT.PostBurstDelay = 0.7

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_07s_delay")

ATT = {}

ATT.PrintName = "0.6s Delay"
ATT.CompactName = "0.6s"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Adds a 0.6s delay between bursts. Can be used for autobursts or to stop you from spamming the trigger.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes/Burst Modifiers"

ATT.PostBurstDelay = 0.6

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_06s_delay")

ATT = {}

ATT.PrintName = "0.5s Delay"
ATT.CompactName = "0.5s"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Adds a 0.5s delay between bursts. Can be used for autobursts or to stop you from spamming the trigger.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes/Burst Modifiers"

ATT.PostBurstDelay = 0.5

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_05s_delay")

ATT = {}

ATT.PrintName = "0.4s Delay"
ATT.CompactName = "0.4s"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Adds a 0.4s delay between bursts. Can be used for autobursts or to stop you from spamming the trigger.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes/Burst Modifiers"

ATT.PostBurstDelay = 0.4

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_04s_delay")

ATT = {}

ATT.PrintName = "0.3s Delay"
ATT.CompactName = "0.3s"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Adds a 0.3s delay between bursts. Can be used for autobursts or to stop you from spamming the trigger.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes/Burst Modifiers"

ATT.PostBurstDelay = 0.3

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_03s_delay")

ATT = {}

ATT.PrintName = "0.2s Delay"
ATT.CompactName = "0.2s"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Adds a 0.2s delay between bursts. Can be used for autobursts or to stop you from spamming the trigger.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes/Burst Modifiers"

ATT.PostBurstDelay = 0.2

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_02s_delay")

ATT = {}

ATT.PrintName = "0.15s Delay"
ATT.CompactName = "0.15s"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Adds a 0.15s delay between bursts. Can be used for autobursts or to stop you from spamming the trigger. Why not 0.1? That's just full-auto, you silly goose.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Firemodes/Burst Modifiers"

ATT.PostBurstDelay = 0.15

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_firemode_015s_delay")

///////////////////////////////////////      RPMs

ATT = {}

ATT.PrintName = "300 RPM"
ATT.CompactName = "300"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[300 RPM. Slow but not too slow.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/RPM"

ATT.RPM = 300

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_rpm_300")

ATT = {}

ATT.PrintName = "500 RPM"
ATT.CompactName = "500"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[500 RPM. Slower than an AKM, faster than 300 RPM.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/RPM"

ATT.RPM = 500

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_rpm_500")

ATT = {}

ATT.PrintName = "600 RPM"
ATT.CompactName = "600"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[600 RPM. Standard RPM of AK-family rifles chambered in 7.62x39mm, in case you needed an example.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/RPM"

ATT.RPM = 600

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_rpm_600")

ATT = {}

ATT.PrintName = "650 RPM"
ATT.CompactName = "650"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[600 RPM. Standard RPM of AK-family rifles chambered in 5.45x39mm, in case you needed an example.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/RPM"

ATT.RPM = 650

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_rpm_650")

ATT = {}

ATT.PrintName = "770 RPM"
ATT.CompactName = "770"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[770 RPM. Not sure if any gun uses this RPM... but it feels good so it's going to be an option.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/RPM"

ATT.RPM = 770

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_rpm_770")

ATT = {}

ATT.PrintName = "800 RPM"
ATT.CompactName = "800"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[800 RPM. Standard RPM of M4-family rifles chambered in 5.56x45mm, in case you needed an example.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/RPM"

ATT.RPM = 800

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_rpm_800")

ATT = {}

ATT.PrintName = "850 RPM"
ATT.CompactName = "850"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[850 RPM. RPM of the HK416A5 rifle, in case you needed an example. Weird how this fires faster than an M4...]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/RPM"

ATT.RPM = 850

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_rpm_850")

ATT = {}

ATT.PrintName = "1200 RPM"
ATT.CompactName = "1200"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[1200 RPM. RPM of the Glock 18C and KRISS Vector, in case you needed an example. Do you REALLY need to be shooting this fast...?]]
ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/RPM"

ATT.RPM = 1200

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_rpm_1200")

ATT = {}

ATT.PrintName = "6000 RPM"
ATT.CompactName = "6000"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[6000 RPM. Because you were going to ask anyways. Pretty performance intensive, not gonna lie. Server owners be wary of this.]]
ATT.SortOrder = 1
ATT.AttNotForNPCs = true
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/RPM"
ATT.AttNotForNPCs = true

ATT.RPM = 6000

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_rpm_6000")

ATT = {}

ATT.PrintName = "99999 RPM"
ATT.CompactName = "99999"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[99999 RPM. Odds are ARC9 won't even let you shoot this fast, but regardless it's still going to hit the maximum firerate limit. Here be dragons...]]
ATT.SortOrder = 1
ATT.AttNotForNPCs = true
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/RPM"
ATT.AttNotForNPCs = true

ATT.RPM = 99999

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_rpm_99999")

ATT = {}

ATT.PrintName = "0"
ATT.CompactName = "0"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[0. Cycle as fast as the base will let you... Which is surprisingly not very fast.]]
ATT.SortOrder = 1
ATT.AttNotForNPCs = true
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/RPM/Cycle Time"
ATT.AttNotForNPCs = true

ATT.CycleTime = 0

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_rpm_0_cycle")

ATT = {}

ATT.PrintName = "0.5x"
ATT.CompactName = "0.5x"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[0.5x. Cycle twice as fast.]]
ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/RPM/Cycle Time"

ATT.CycleTimeMult = 0.5

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_rpm_05_cycle")

ATT = {}

ATT.PrintName = "0.25x"
ATT.CompactName = "0.25x"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[0.25x. Cycle four times as fast.]]
ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/RPM/Cycle Time"

ATT.CycleTimeMult = 0.25

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_rpm_025_cycle")

///////////////////////////////////////      Tracers

ATT = {}

ATT.PrintName = "Red Tracers"
ATT.CompactName = "Red"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Gives your gun red tracers.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Tracers"

ATT.TracerNum = 1
ATT.TracerSize = 8
ATT.TracerColor = Color(222, 31, 31)

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_tracer_red")

ATT = {}

ATT.PrintName = "Green Tracers"
ATT.CompactName = "Green"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Gives your gun green tracers.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Tracers"

ATT.TracerNum = 1
ATT.TracerSize = 8
ATT.TracerColor = Color(31, 222, 73)

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_tracer_green")

ATT = {}

ATT.PrintName = "Blue Tracers"
ATT.CompactName = "Blue"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Gives your gun blue tracers.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Tracers"

ATT.TracerNum = 1
ATT.TracerSize = 8
ATT.TracerColor = Color(31, 57, 222)

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_tracer_blue")

ATT = {}

ATT.PrintName = "Yellow Tracers"
ATT.CompactName = "Yellow"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Gives your gun yellow tracers.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Tracers"

ATT.TracerNum = 1
ATT.TracerSize = 8
ATT.TracerColor = Color(222, 217, 31)

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_tracer_yellow")

ATT = {}

ATT.PrintName = "Orange Tracers"
ATT.CompactName = "Orange"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Gives your gun orange tracers.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Tracers"

ATT.TracerNum = 1
ATT.TracerSize = 8
ATT.TracerColor = Color(222, 136, 31)

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_tracer_orange")

ATT = {}

ATT.PrintName = "Purple Tracers"
ATT.CompactName = "Purple"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Gives your gun purple tracers.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Tracers"

ATT.TracerNum = 1
ATT.TracerSize = 8
ATT.TracerColor = Color(124, 31, 222)

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_tracer_purple")

ATT = {}

ATT.PrintName = "Pink Tracers"
ATT.CompactName = "Pink"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Gives your gun pink tracers.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Tracers"

ATT.TracerNum = 1
ATT.TracerSize = 8
ATT.TracerColor = Color(222, 31, 213)

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_tracer_pink")

ATT = {}

ATT.PrintName = "White Tracers"
ATT.CompactName = "White"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Gives your gun white tracers.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Tracers"

ATT.TracerNum = 1
ATT.TracerSize = 8
ATT.TracerColor = Color(255, 255, 255)

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_tracer_white")

ATT = {}

ATT.PrintName = "Cyan Tracers"
ATT.CompactName = "Cyan"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Gives your gun cyan tracers.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Tracers"

ATT.TracerNum = 1
ATT.TracerSize = 8
ATT.TracerColor = Color(31, 180, 222)

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_tracer_cyan")

ATT = {}

ATT.PrintName = "Teal Tracers"
ATT.CompactName = "Teal"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Gives your gun teal tracers.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Tracers"

ATT.TracerNum = 1
ATT.TracerSize = 8
ATT.TracerColor = Color(31, 222, 188)

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_tracer_teal")

ATT = {}

ATT.PrintName = "Tom Aero 0 Teal"
ATT.CompactName = "TA Teal"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Gives your gun teal tracers, except a little greener]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Tracers"

ATT.TracerNum = 1
ATT.TracerSize = 8
ATT.TracerColor = Color(0, 255, 132)

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "unlameifier_tracer_tateal")

///////////////////////////////////////      Misc Toys

ATT = {}

ATT.PrintName = "Dissolve Effect"
ATT.CompactName = "Dissolve"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Makes anything you kill dissolve, like the AR2 energy ball. Just for funsies :)]]

ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Toys"
ATT.AttNotForNPCs = true
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.DamageTypeOverride = DMG_DISSOLVE + DMG_BULLET

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_unlameifier_toys_dissolve")

ATT = {}

ATT.PrintName = "Remove Tool Effect"
ATT.CompactName = "Remove Tool"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Makes anything you kill not spawn a ragdoll, like the Remove Tool. Just for funsies :)

might be abusable, beware.]]

ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Toys"
ATT.AttNotForNPCs = true
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.DamageTypeOverride = DMG_REMOVENORAGDOLL + DMG_BULLET

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_unlameifier_toys_remove_tool")

ATT = {}

ATT.PrintName = "Shock Effect"
ATT.CompactName = "Shock"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Makes anything you hit spark, as though the gun were electric. Just for funsies :)]]

ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Toys"
ATT.AttNotForNPCs = true
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.DamageTypeOverride = DMG_SHOCK + DMG_BULLET

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_unlameifier_toys_shock")

ATT = {}

ATT.PrintName = "Lightning Effect"
ATT.CompactName = "Lightning"
ATT.Icon = Material("entities/arc9/unlameifier/arc9_unlameifier_unfinished.png", "mips smooth")
ATT.Description = [[Unlike spark, this one is MUCH more violent. Combines shock + dissolve for a spectacular kill effect. Just for funsies :)

Visually, this has the same effect as when you kill something with the Super Gravity Gun. Pretty neat!]]

ATT.Category = {"eft_custom_slot", }
ATT.Folder = "Unlameifier/Toys"
ATT.AttNotForNPCs = true
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.DamageTypeOverride = DMG_SHOCK + DMG_BULLET + DMG_DISSOLVE

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_unlameifier_toys_lightning")