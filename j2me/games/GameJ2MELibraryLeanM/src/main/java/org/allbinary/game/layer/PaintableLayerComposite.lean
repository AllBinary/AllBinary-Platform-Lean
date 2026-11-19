-- Generated Code Do Not Modify
-- package org.allbinary.game.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PaintableLayerComposite

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "paintableArray")))
        repeat
            let jtemp1 : JV := (JR.dec l_index)
            l_index := jtemp1
            
            if !(JR.truth (<- JR.ge jtemp1 (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "paintableArray") l_index) "paint_1" #[l_graphics])
            pure ()
        pure ()
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_paintableInterface : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "paintableArray")))
        repeat
            let jtemp2 : JV := (JR.dec l_index)
            l_index := jtemp2
            
            if !(JR.truth (<- JR.ge jtemp2 (JV.int 0))) then break
            l_paintableInterface := (<- JR.aget (<- JR.getField this "paintableArray") l_index)
            let _ := (<- JR.call l_paintableInterface "paintThreed_1" #[l_graphics])
            pure ()
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_paintableArray : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    JR.setField this "paintableArray" l_paintableArray
    pure this

initialize JR.registerClass {
    name := "PaintableLayerComposite",
    javaName := "org.allbinary.game.layer.PaintableLayerComposite",
    super := "Paintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("paintableArray", JV.null)],
    statics := #[],
    methods := #[
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("jinit_1", #["LayerArr"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PaintableLayerComposite


