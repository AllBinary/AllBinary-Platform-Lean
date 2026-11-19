-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.weapon.mine
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MineWeaponResources

def jfields (this : JV) : JM JV := do
    JR.setField this "DROP_TEXT_RESOURCE" (JV.str "/mine_drop_text_20_by_20.png")
    JR.setField this "DROP_RESOURCE" (JV.str "/mine_drop_20_by_20.png")
    JR.setField this "DROP_ICON_RESOURCE" (JV.str "/mine_drop_icon_20_by_20.png")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "MineWeaponResources" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "MineWeaponResources" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "MineWeaponResources" "instance" (<- JR.new "MineWeaponResources" #[])
        pure ()
    return (<- JR.getStatic "MineWeaponResources" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BasicGameResources" this #[]
    let _ <- jfields this
    let mut l_ROOT : JV := (JV.str "/mine")
    let mut l_SMALL : JV := (JV.str "_20_by_20.png")
    let mut l_MEDIUM : JV := l_SMALL
    let mut l_SIZE_FOUR : JV := l_SMALL
    let mut l_SIZE_FIVE : JV := l_SMALL
    let mut l_SIZE_SIX : JV := l_SMALL
    let mut l_SIZE : JV := (<- JR.arrayOf "L" #[l_SMALL, l_MEDIUM, l_SIZE_FOUR, l_SIZE_FIVE, l_SIZE_SIX])
    let _ := (<- JR.callSuper "BasicGameResources" this "init_2" #[l_ROOT, l_SIZE])
    pure this

initialize JR.registerClass {
    name := "MineWeaponResources",
    javaName := "org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources",
    super := "BasicGameResources",
    interfaces := #[],
    isInterface := false,
    fields := #[("DROP_TEXT_RESOURCE", JV.null), ("DROP_RESOURCE", JV.null), ("DROP_ICON_RESOURCE", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MineWeaponResources


