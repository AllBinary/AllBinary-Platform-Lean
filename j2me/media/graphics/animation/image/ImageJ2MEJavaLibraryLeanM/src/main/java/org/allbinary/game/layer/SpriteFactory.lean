-- Generated Code Do Not Modify
-- package org.allbinary.game.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SpriteFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "SpriteFactory" "instance" (<- JR.new "SpriteFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SpriteFactory" "instance")


def m_createSprite_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_frameWidth : JV := (JR.asI (JR.arg jargs 1))
    let mut l_frameHeight : JV := (JR.asI (JR.arg jargs 2))
    return (<- JR.new "Sprite" #[l_image, l_frameWidth, l_frameHeight])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SpriteFactory",
    javaName := "org.allbinary.game.layer.SpriteFactory",
    super := "Object",
    interfaces := #["SpriteFactoryInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("createSprite_3", #["Image", "int", "int"], false, m_createSprite_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SpriteFactory


