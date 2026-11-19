-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FillAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let mut l_changed : JV := (JV.bool false)
    if JR.truth (<- JR.cor (<- JR.eq (<- JR.callInherited this "FillAnimation" "getBasicColorP_0" #[]) JV.null) (do pure (<- JR.ne (<- JR.call (<- JR.callInherited this "FillAnimation" "getBasicColorP_0" #[]) "intValue_0" #[]) (<- JR.call l_basicColor "intValue_0" #[])))) then
        l_changed := (JV.bool true)
        pure ()
    let _ := (<- JR.callSuper "IndexedAnimation" this "setBasicColorP_1" #[l_basicColor])
    if JR.truth l_changed then
        let _ := (<- JR.call this "updateModifiers_0" #[])
        pure ()
    pure JV.null


def m_changeBasicColor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let mut l_changed : JV := (JV.bool false)
    if JR.truth (<- JR.cor (<- JR.eq (<- JR.callInherited this "FillAnimation" "getChangeBasicColor_0" #[]) JV.null) (do pure (<- JR.ne (<- JR.call (<- JR.callInherited this "FillAnimation" "getChangeBasicColor_0" #[]) "intValue_0" #[]) (<- JR.call l_basicColor "intValue_0" #[])))) then
        l_changed := (JV.bool true)
        pure ()
    let _ := (<- JR.callSuper "IndexedAnimation" this "changeBasicColor_1" #[l_basicColor])
    if JR.truth l_changed then
        let _ := (<- JR.call this "updateModifiers_0" #[])
        pure ()
    pure JV.null


def m_setAlpha_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_alpha : JV := (JR.asI (JR.arg jargs 0))
    let mut l_changed : JV := (JV.bool false)
    if JR.truth (<- JR.ne (<- JR.getInherited this "FillAnimation" "alphaP") l_alpha) then
        l_changed := (JV.bool true)
        pure ()
    let _ := (<- JR.callSuper "IndexedAnimation" this "setAlpha_1" #[l_alpha])
    if JR.truth l_changed then
        let _ := (<- JR.call this "updateModifiers_0" #[])
        pure ()
    pure JV.null


def m_setScale_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleX : JV := (JR.asF (JR.arg jargs 0))
    let mut l_scaleY : JV := (JR.asF (JR.arg jargs 1))
    pure JV.null


def m_setMaxScale_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxScaleX : JV := (JR.asF (JR.arg jargs 0))
    let mut l_maxScaleY : JV := (JR.asF (JR.arg jargs 1))
    pure JV.null


def m_updateModifiers_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_g : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_g "drawRGB_8" #[(<- JR.getField this "pixelBuffer"), (JV.int 0), (<- JR.getField this "width"), (JV.int 0), (JV.int 0), (<- JR.getField this "width"), (<- JR.getField this "height"), (JV.bool true)])
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pixelBuffer : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    let mut l_animationBehavior : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "IndexedAnimation" this #[l_animationBehavior]
    let _ <- jfields this
    JR.setField this "width" (JR.asI (JV.int 100))
    JR.setField this "height" (JR.asI (JV.int 100))
    JR.setField this "pixelBuffer" l_pixelBuffer
    pure this

initialize JR.registerClass {
    name := "FillAnimation",
    javaName := "org.allbinary.animation.FillAnimation",
    super := "IndexedAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("pixelBuffer", JV.null), ("width", (JV.int 0)), ("height", (JV.int 0))],
    statics := #[],
    methods := #[
        ("setBasicColorP_1", #["BasicColor"], false, m_setBasicColorP_1), 
        ("changeBasicColor_1", #["BasicColor"], false, m_changeBasicColor_1), 
        ("setAlpha_1", #["int"], false, m_setAlpha_1), 
        ("setScale_2", #["float", "float"], false, m_setScale_2), 
        ("setMaxScale_2", #["float", "float"], false, m_setMaxScale_2), 
        ("updateModifiers_0", #[], false, m_updateModifiers_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_4", #["intArr", "int", "int", "AnimationBehavior"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FillAnimation


