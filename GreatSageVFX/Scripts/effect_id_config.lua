-- Prefix 999 = VFX
-- Prefix 555 = wukong stance max focus delayed  vfx
-- Prefix 444 = 4x focus delayed vfx
-- Prefix 222 = combat buffs
-- Prefix 111 = specific attack delayed VFX
-- Custom See Through buff requireds a SetSimpleState (to set the player to immune for the duration of the buff) and a Generation on BeAttacked to apply another immunity buff to add additional immunity time
local effect_id_table = {
    vfx_GreatSageYellowShine = 999000,
    vfx_GreatSageOrangeShine = 999001,
    vfx_GreatSageRedShine = 999002,
    vfx_StaffYellowCharge = 999003,
    vfx_StaffOrangeCharge = 999004,
    vfx_StaffRedCharge = 999005,

    delayedEffect_5FocusSmash1 = 555001,
    delayedEffect_5FocusSmash2 = 555002,
    delayedEffect_5FocusSmash3 = 555003,

    delayedEffect_4FocusSmash1 = 444001,
    delayedEffect_4FocusSmash2 = 444002,
    delayedEffect_4FocusSmash3 = 444003,

    delayedEffect_ChuringGale1 = 111000,
    delayedEffect_ChuringGale2 = 111001,

    immunity1000 = 222000,        -- 800ms of immunity
    dasheng2ASeeThrough = 222001, -- Provides immunity for the duration of this buff and adds "immunity800" after being damaged
    immunity400 = 222002,
    dasheng3ASeeThrough = 222003, -- Provides immunity for the duration of this buff and adds "immunity800" after being damaged

    resoluteCounterflowSeeThrough = 287,
    tacticalRetreatSeeThrough = 293,
    defaultImmunity = 117,
}

return effect_id_table
