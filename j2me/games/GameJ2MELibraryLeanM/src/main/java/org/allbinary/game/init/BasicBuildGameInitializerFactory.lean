-- Generated Code Do Not Modify
-- package org.allbinary.game.init
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicBuildGameInitializerFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicBuildGameInitializerFactory" "NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY" (<- JR.new "BasicBuildGameInitializerFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "BaseGameInitialization" "NULL_BASE_GAME_INITIALIZATION")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicBuildGameInitializerFactory",
    javaName := "org.allbinary.game.init.BasicBuildGameInitializerFactory",
    super := "Object",
    interfaces := #["GameInitializationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY", JV.null)],
    methods := #[
        ("getInstance_0", #[], false, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicBuildGameInitializerFactory


