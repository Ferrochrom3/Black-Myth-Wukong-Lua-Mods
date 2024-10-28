-- summon (summon only once)
-- onHitSummon (summon when damage is done to enemy, the buff duration needs to be long enough for the damage to occur)
-- continuousSummon (can be used as "summon" with duration is 1, or be continously summon with a set interval throughout some duration)

-- Shine effects cannot be re-applied until it's duration is over

-- IDs that uses "AddBuff" must include a Single in "EffectParamsFloat" (value of 0) for every buff added in "EffectParams"
-- Ex. "738 延迟效果-大圣模式劈棍" has 5 buffs added in "FUStBuffEffectAttr-0" in "EffectParams", so there are 5 Single's in "EffectParamsFloat"

local effect_id_table = {
    effect_RockSolidDeflectScreenShake = 232,
    effect_RockSolidDeflectSlowTime = 240,
    effect_TacticalRetreatSeenThrough = 295, -- Everything below this is custom
    effect_GreatSageWeaponYellowShine = 725, -- Staff shine effect, minimum 100ms
    effect_GreatSageWeaponOrangeShine = 726, -- Staff shine effect, minimum 300ms
    effect_GreatSageWeaponRedShine = 727,    -- Staff shine effect, minimum 100ms
    effect_BlazingKaramStaffFire = 728,
    effect_BodyFire = 729,
    effect_SeeThroughRedFlash = 730,
    effect_StaffRedCharge = 731,    -- Staff glow effect
    effect_StaffOrangeCharge = 741, -- Staff glow effect
    effect_StaffYellowCharge = 742, -- Staff glow effect
    effect_SeeThroughGoldFlash = 747,

    combat_SeeThrough = 739,     -- Buff will be removed after getting hit and grants 740
    combat_SeeThroughBuff = 740, -- Buffs added after a sucessful See Through (739), does not include immunity frames
    combat_Immunity = 114,

    onHit_slowDownTime = 712,

    summon_KangJinStarLightningExplosion = 710,
    summon_StoneMonkeyFloatingRocks = 732,

    onHitSummon_RedLoongLightningGroup = 713,
    onHitSummon_HundredEyedDaoistSpellLightning = 718,
    onHitSummon_YakshaKingSpikes = 719,
    onHitSummon_RedBoySlamLava = 720,
    onHitSummon_MacaqueChiefSwordSlash = 721,
    onHitSummon_BlazingKarmaStaffLava = 722,
    onHitSummon_StoneMonkeyGroundExplosion = 723,
    onHitSummon_FloorFire = 724,
    onHitSummon_BlueRocksExplosion = 733,
    onHitSummon_ShiGanDangExplosion = 734,
    onHitSummon_LargeLavaExplosion = 735,

    continuousSummon_KangJinStarLaser = 711,                -- Interval: 800ms
    continuousSummon_RedBoySlamLava = 714,                  -- Interval: 300ms
    continuousSummon_MacaqueChiefSwordSlash = 715,          -- Interval: 300ms
    continuousSummon_YelloBrowExpandingLightningRing = 716, -- Interval: 300ms
    continuousSummon_SupremeInspectorFeather = 717,         -- Interval: 500ms

    delayEffect_SkyFallStrike = 736,
    delayEffect_FourFocusSmash = 737,
    delayEffect_WukongStanceSmash = 738,
    delayEffect_ChuringGale = 743,
    delayEffect_SpinningStaffHeavyAttack = 744,
    delayEffect_LightAttackCombo5 = 745,
    delayEffect_ForcefulThurst = 746,
}

return effect_id_table
