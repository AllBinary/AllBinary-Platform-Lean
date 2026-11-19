-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles.renderer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryRendererBase3

def jfields (this : JV) : JM JV := do
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_update_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    repeat
        if !(JR.truth (<- JR.gt (<- JR.call (<- JR.getField this "list") "size_0" #[]) (JV.int 0))) then break
        let mut l_openGLESImage : JV := (<- JR.call (<- JR.getField this "list") "removeAt_1" #[(JV.int 0)])
        if JR.truth (<- JR.ne l_openGLESImage JV.null) then
            let _ := (<- JR.call l_openGLESImage "set_1" #[l_gl])
            pure ()
        pure ()
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_image])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AllBinaryRendererBase3",
    javaName := "org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("list", JV.null)],
    statics := #[],
    methods := #[
        ("update_1", #["GL10"], false, m_update_1), 
        ("add_1", #["Image"], false, m_add_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryRendererBase3


