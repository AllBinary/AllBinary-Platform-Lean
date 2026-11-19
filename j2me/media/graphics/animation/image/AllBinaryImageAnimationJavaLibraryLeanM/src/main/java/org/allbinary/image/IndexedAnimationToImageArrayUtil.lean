-- Generated Code Do Not Modify
-- package org.allbinary.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_IndexedAnimationToImageArrayUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    let mut l_sequentialAnimationInterface : JV := (JR.arg jargs 2)
    let mut l_size : JV := (JR.asI (<- JR.call l_sequentialAnimationInterface "getAnimationSize_0" #[]))
    let mut l_imageArray : JV := (<- JR.newArray "L" 1 #[l_size])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let _ := (<- JR.call l_sequentialAnimationInterface "setFrame_1" #[l_index])
            JR.aset l_imageArray l_index (<- JR.call (<- JR.callStatic "AnimationFrameToImageUtil" "getInstance_0" #[]) "getInstanceWH_3" #[l_width, l_height, l_sequentialAnimationInterface])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_imageArray


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "IndexedAnimationToImageArrayUtil",
    javaName := "org.allbinary.image.IndexedAnimationToImageArrayUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_3", #["int", "int", "IndexedAnimation"], true, m_getInstance_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_IndexedAnimationToImageArrayUtil


