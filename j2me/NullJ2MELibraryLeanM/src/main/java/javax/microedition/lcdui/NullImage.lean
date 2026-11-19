-- Generated Code Do Not Modify
-- package javax.microedition.lcdui
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullImage

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullImage" "NULL_IMAGE_ARRAY" (<- JR.newArray "L" 1 #[(JV.int 0)])
    JR.setStatic "NullImage" "NULL_IMAGE" (<- JR.new "Image" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullImage",
    javaName := "javax.microedition.lcdui.NullImage",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_IMAGE_ARRAY", JV.null), ("NULL_IMAGE", JV.null)],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullImage


