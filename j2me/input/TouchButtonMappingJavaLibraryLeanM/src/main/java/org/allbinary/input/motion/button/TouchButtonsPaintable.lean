-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchButtonsPaintable

def jfields (this : JV) : JM JV := do
    JR.setField this "basicSetColorUtil" (<- JR.callStatic "BasicColorSetUtil" "getInstance_0" #[])
    JR.setField this "touchButtonFactory" (<- JR.callStatic "TouchButtonFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_list : JV := (<- JR.call (<- JR.getField this "touchButtonFactory") "getList_0" #[])
    let _ := (<- JR.call (<- JR.getField this "basicSetColorUtil") "setBasicColorP3_3" #[l_graphics, (<- JR.getField this "foregroundBasicColor"), (<- JR.getField this "foregroundColor")])
    let mut l_touchButton : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
        repeat
            let jtemp1 : JV := (JR.dec l_index)
            l_index := jtemp1
            
            if !(JR.truth (<- JR.ge jtemp1 (JV.int 0))) then break
            l_touchButton := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            let _ := (<- JR.call l_touchButton "paint_1" #[l_graphics])
            pure ()
        pure ()
    if true then
        let mut l_index : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
        repeat
            let jtemp2 : JV := (JR.dec l_index)
            l_index := jtemp2
            
            if !(JR.truth (<- JR.ge jtemp2 (JV.int 0))) then break
            l_touchButton := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            let _ := (<- JR.call l_touchButton "paintHint_1" #[l_graphics])
            pure ()
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    JR.setField this "foregroundBasicColor" l_basicColor
    JR.setField this "foregroundColor" (JR.asI (<- JR.call l_basicColor "intValue_0" #[]))
    pure this

initialize JR.registerClass {
    name := "TouchButtonsPaintable",
    javaName := "org.allbinary.input.motion.button.TouchButtonsPaintable",
    super := "Paintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("foregroundBasicColor", JV.null), ("foregroundColor", (JV.int 0)), ("basicSetColorUtil", JV.null), ("touchButtonFactory", JV.null)],
    statics := #[],
    methods := #[
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_1", #["BasicColor"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchButtonsPaintable


