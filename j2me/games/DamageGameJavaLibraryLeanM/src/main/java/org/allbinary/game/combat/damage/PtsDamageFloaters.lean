-- Generated Code Do Not Modify
-- package org.allbinary.game.combat.damage
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PtsDamageFloaters

def jfields (this : JV) : JM JV := do
    JR.setField this "basicSetColorUtil" (<- JR.callStatic "BasicColorSetUtil" "getInstance_0" #[])
    JR.setField this "lastDamage" (<- JR.newArray "I" 1 #[(JV.int 5)])
    JR.setField this "lastDamageString" (<- JR.newArray "C" 2 #[(JV.int 5), (JV.int 0)])
    JR.setField this "lastDamageStringSizeArray" (<- JR.newArray "I" 1 #[(JV.int 5)])
    JR.setField this "circularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(JV.int 5)])
    JR.setField this "myRandomFactory" (<- JR.callStatic "MyRandomFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PtsDamageFloaters" "basicColorArrayIndexer" (<- JR.new "BasicColorArrayIndexer" #[(<- JR.arrayOf "L" #[(<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE"), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "RED"), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "YELLOW"), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "BLUE")])])
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_damage : JV := (JR.asI (JR.arg jargs 0))
    let mut l_index : JV := (JR.asI (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[]))
    JR.aset (<- JR.getField this "lastDamage") l_index (JR.asI l_damage)
    JR.aset (<- JR.getField this "lastDamageString") l_index (<- JR.call (<- JR.getField this "primitiveLongUtil") "getCharArray_1" #[(<- JR.aget (<- JR.getField this "lastDamage") l_index)])
    JR.aset (<- JR.getField this "lastDamageStringSizeArray") l_index (JR.asI (<- JR.call (<- JR.getField this "primitiveLongUtil") "getCurrentTotalDigits_0" #[]))
    let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "next_0" #[])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_viewPosition : JV := (<- JR.call (<- JR.getField this "layerInterface") "getViewPosition_0" #[])
    let mut l_x : JV := (JR.asI (<- JR.call l_viewPosition "getX_0" #[]))
    let mut l_y : JV := (JR.asI (<- JR.call l_viewPosition "getY_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getField this "lastDamage")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            if JR.truth (<- JR.ne (<- JR.aget (<- JR.getField this "lastDamage") l_index) (JV.int 0)) then
                let mut l_delta : JV := (JR.asI (<- JR.mul (JV.int 10) ((<- JR.add l_index (JV.int 2)))))
                let _ := (<- JR.call (<- JR.getField this "basicSetColorUtil") "setBasicColorP_2" #[l_graphics, (<- JR.call (<- JR.getStatic "PtsDamageFloaters" "basicColorArrayIndexer") "get_0" #[])])
                let _ := (<- JR.call l_graphics "drawChars_6" #[(<- JR.aget (<- JR.getField this "lastDamageString") l_index), (JV.int 0), (<- JR.aget (<- JR.getField this "lastDamageStringSizeArray") l_index), (<- JR.sub l_x (<- JR.call (<- JR.getField this "myRandomFactory") "getNextInt_1" #[l_delta])), (<- JR.sub l_y l_delta), (JV.int 0)])
                let _ := (<- JR.call (<- JR.getStatic "PtsDamageFloaters" "basicColorArrayIndexer") "next_0" #[])
                pure ()
            JR.aset (<- JR.getField this "lastDamage") l_index (JR.asI (JV.int 0))
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "DamageFloaters" this #[]
    let _ <- jfields this
    JR.setField this "primitiveLongUtil" (<- JR.callStatic "PrimitiveLongUtil" "createPowerOfTen_1" #[(JV.int 100000)])
    JR.setField this "layerInterface" l_layerInterface
    let mut l_CHAR_ARRAY : JV := (<- JR.call (<- JR.callStatic "CharArrayFactory" "getInstance_0" #[]) "getZeroCharArray_0" #[])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getField this "lastDamageString")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            JR.aset (<- JR.getField this "lastDamageString") l_index l_CHAR_ARRAY
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure this

initialize JR.registerClass {
    name := "PtsDamageFloaters",
    javaName := "org.allbinary.game.combat.damage.PtsDamageFloaters",
    super := "DamageFloaters",
    interfaces := #[],
    isInterface := false,
    fields := #[("basicSetColorUtil", JV.null), ("layerInterface", JV.null), ("lastDamage", JV.null), ("lastDamageString", JV.null), ("lastDamageStringSizeArray", JV.null), ("circularIndexUtil", JV.null), ("primitiveLongUtil", JV.null), ("myRandomFactory", JV.null)],
    statics := #[("basicColorArrayIndexer", JV.null)],
    methods := #[
        ("add_1", #["int"], false, m_add_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_1", #["AllBinaryLayer"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PtsDamageFloaters


