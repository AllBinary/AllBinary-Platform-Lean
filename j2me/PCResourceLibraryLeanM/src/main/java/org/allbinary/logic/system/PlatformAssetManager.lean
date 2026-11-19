-- Generated Code Do Not Modify
-- package org.allbinary.logic.system
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PlatformAssetManager

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PlatformAssetManager" "instance" (<- JR.new "PlatformAssetManager" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PlatformAssetManager" "instance")


def m_getResourceAsStream_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let mut l_resourceUtil : JV := (<- JR.callStatic "ResourceUtil" "getInstance_0" #[])
    let mut l_inputStream : JV := (<- JR.call l_resourceUtil "getResourceAsStream_1" #[l_resource])
    return l_inputStream


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PlatformAssetManager",
    javaName := "org.allbinary.logic.system.PlatformAssetManager",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getResourceAsStream_1", #["String"], false, m_getResourceAsStream_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PlatformAssetManager


