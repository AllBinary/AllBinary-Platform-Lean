-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.weapon
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_WeaponLayerArrayLayerCircularStaticPool

def jfields (this : JV) : JM JV := do
    JR.setField this "MAX" (JR.asI (JV.int 5))
    JR.setField this "circularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(<- JR.getField this "MAX")])
    JR.setField this "WEAPONLAYER_ARRAY" (<- JR.newArray "L" 2 #[(<- JR.mul (<- JR.getField this "MAX") (JV.int 2))])
    JR.setField this "TWO_WEAPONLAYER_ARRAY" (<- JR.newArray "L" 2 #[(<- JR.getField this "MAX")])
    JR.setField this "THREE_WEAPONLAYER_ARRAY" (<- JR.newArray "L" 2 #[(<- JR.getField this "MAX")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "WeaponLayerArrayLayerCircularStaticPool" "instance" (<- JR.new "WeaponLayerArrayLayerCircularStaticPool" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "WeaponLayerArrayLayerCircularStaticPool" "instance")


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.getField this "MAX"))) then break
            JR.aset (<- JR.getField this "WEAPONLAYER_ARRAY") l_index (<- JR.newArray "L" 1 #[(JV.int 1)])
            JR.aset (<- JR.getField this "TWO_WEAPONLAYER_ARRAY") l_index (<- JR.newArray "L" 1 #[(JV.int 2)])
            JR.aset (<- JR.getField this "THREE_WEAPONLAYER_ARRAY") l_index (<- JR.newArray "L" 1 #[(JV.int 3)])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    JR.setField this "WEAPONLAYER_ARRAY" (<- JR.getField this "WEAPONLAYER_ARRAY")
    JR.setField this "TWO_WEAPONLAYER_ARRAY" (<- JR.getField this "TWO_WEAPONLAYER_ARRAY")
    JR.setField this "THREE_WEAPONLAYER_ARRAY" (<- JR.getField this "THREE_WEAPONLAYER_ARRAY")
    pure JV.null


def m_getWeaponLayerArrays_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_size : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.eq l_size (JV.int 1)) then
        return (<- JR.getField this "WEAPONLAYER_ARRAY")
    else
        if JR.truth (<- JR.eq l_size (JV.int 2)) then
            return (<- JR.getField this "TWO_WEAPONLAYER_ARRAY")
        else
            if JR.truth (<- JR.eq l_size (JV.int 3)) then
                return (<- JR.getField this "THREE_WEAPONLAYER_ARRAY")
    throw (<- JR.new "RuntimeException" #[])


def m_getInstanceArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_size : JV := (JR.asI (JR.arg jargs 0))
    let mut l_weaponLayerArray : JV := (<- JR.aget (<- JR.call this "getWeaponLayerArrays_1" #[l_size]) (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[]))
    let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "next_0" #[])
    return l_weaponLayerArray


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "WeaponLayerArrayLayerCircularStaticPool",
    javaName := "org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("MAX", (JV.int 0)), ("circularIndexUtil", JV.null), ("WEAPONLAYER_ARRAY", JV.null), ("TWO_WEAPONLAYER_ARRAY", JV.null), ("THREE_WEAPONLAYER_ARRAY", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_0", #[], false, m_init_0), 
        ("getWeaponLayerArrays_1", #["int"], false, m_getWeaponLayerArrays_1), 
        ("getInstanceArray_1", #["int"], false, m_getInstanceArray_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_WeaponLayerArrayLayerCircularStaticPool


