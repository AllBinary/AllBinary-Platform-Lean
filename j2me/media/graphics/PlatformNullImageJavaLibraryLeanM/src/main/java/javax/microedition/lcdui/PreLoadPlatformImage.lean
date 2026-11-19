-- Generated Code Do Not Modify
-- package javax.microedition.lcdui
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PreLoadPlatformImage

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PreLoadPlatformImage" "instance" (<- JR.new "PreLoadPlatformImage" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PreLoadPlatformImage" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "PlatformImage" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PreLoadPlatformImage",
    javaName := "javax.microedition.lcdui.PreLoadPlatformImage",
    super := "PlatformImage",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PreLoadPlatformImage


