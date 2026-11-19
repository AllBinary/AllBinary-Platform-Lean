-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.special
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CollidableDestroyableDamageableLayer

def jfields (this : JV) : JM JV := do
    JR.setField this "partInterfaceArrayP" (<- JR.callStatic "PartInterfaceUtil" "getZeroArray_0" #[])
    JR.setField this "allBinaryGameLayerManagerP" (<- JR.callStatic "AllBinaryGameLayerManager" "getNullInstance_0" #[])
    JR.setField this "isDraggable" (JV.bool false)
    JR.setField this "isDragged" (JV.bool false)
    JR.setField this "isDropped" (JV.bool false)
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CollidableDestroyableDamageableLayer" "NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getNullInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "CollidableDestroyableDamageableLayer" "NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "CollidableDestroyableDamageableLayer" "NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER" (<- JR.new "CollidableDestroyableDamageableLayer" #[(<- JR.getField (<- JR.callStatic "BasicGroupFactory" "getInstance_0" #[]) "NONE_ARRAY"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "RectangleFactory" "SINGLETON"), (<- JR.getStatic "ViewPositionBase" "NULL_VIEW_POSITION")])
        pure ()
    return (<- JR.getStatic "CollidableDestroyableDamageableLayer" "NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER")


def m_initPosition_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callInherited this "CollidableDestroyableDamageableLayer" "setPosition_3" #[(<- JR.getField this "initX"), (<- JR.getField this "initY"), (<- JR.getField this "initZ")])
    pure JV.null


def m_initPositionXYZ_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_z : JV := (JR.asI (JR.arg jargs 2))
    JR.setField this "initX" (JR.asI l_x)
    JR.setField this "initY" (JR.asI l_y)
    JR.setField this "initZ" (JR.asI l_z)
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "CollidableCompositeLayer" this "paint_1" #[l_graphics])
    pure JV.null


def m_damage_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_damage : JV := (JR.asI (JR.arg jargs 0))
    let mut l_damageType : JV := (JR.asI (JR.arg jargs 1))
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getInherited this "CollidableDestroyableDamageableLayer" "commonStrings") "NOT_IMPLEMENTED")])


def m_getDamage_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_damageType : JV := (JR.asI (JR.arg jargs 0))
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getInherited this "CollidableDestroyableDamageableLayer" "commonStrings") "NOT_IMPLEMENTED")])


def m_isDestroyed_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getInherited this "CollidableDestroyableDamageableLayer" "commonStrings") "NOT_IMPLEMENTED")])


def m_getGroupInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "groupInterface")


def m_setGroupInterface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_teamInterface : JV := (JR.arg jargs 0)
    JR.setField this "groupInterface" l_teamInterface
    pure JV.null


def m_setAllBinaryGameLayerManager_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameLayerManager : JV := (JR.arg jargs 0)
    JR.setField this "allBinaryGameLayerManagerP" l_allBinaryGameLayerManager
    if JR.truth (<- JR.eq (<- JR.getField this "allBinaryGameLayerManagerP") JV.null) then
        throw (<- JR.new "RuntimeException" #[])
    pure JV.null


def m_isReadyForExplosion_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "readyForExplosion")


def m_setReadyForExplosion_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_isReadyForExplosion : JV := (JR.arg jargs 0)
    JR.setField this "readyForExplosion" l_isReadyForExplosion
    pure JV.null


def m_getInitWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "initWidth"))


def m_getInitHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "initHeight"))


def m_getInitX_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "initX"))


def m_getInitY_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "initY"))


def m_up_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_down_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_right_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_left_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_strafeLeft_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_strafeRight_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_fire_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    pure JV.null


def m_special1_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    pure JV.null


def m_special2_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    pure JV.null


def m_special3_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    pure JV.null


def m_special4_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    pure JV.null


def m_special5_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    pure JV.null


def m_upAnalog_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_yAnalogValue : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def m_downAnalog_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_yAnalogValue : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def m_rightAnalog_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_xAnalogValue : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def m_leftAnalog_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_xAnalogValue : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def m_rightTrigger_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    let mut l_xAnalogValue : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def m_leftTrigger_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    let mut l_xAnalogValue : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def m_onDestroyed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_destroyedEvent : JV := (JR.arg jargs 0)
    pure JV.null


def m_getPickupBehavior_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "pickupBehavior")


def m_setPickupBehavior_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pickupBehavior : JV := (JR.arg jargs 0)
    JR.setField this "pickupBehavior" l_pickupBehavior
    pure JV.null


def m_addPart_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pickedUpLayerInterfaceFactoryInterface : JV := (JR.arg jargs 0)
    pure JV.null


def m_setPartInterfaceArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_partInterfaceArray : JV := (JR.arg jargs 0)
    JR.setField this "partInterfaceArrayP" l_partInterfaceArray
    pure JV.null


def m_getPartInterfaceArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "partInterfaceArrayP")


def m_toStringAppend_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (JR.arg jargs 0)
    let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    let mut l_positionStrings : JV := (<- JR.callStatic "PositionStrings" "getInstance_0" #[])
    let _ := (<- JR.callSuper "CollidableCompositeLayer" this "toStringAppend_1" #[l_stringBuffer])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "NEW_LINE")])
    let mut l_groupInterfaceArray : JV := (<- JR.call this "getGroupInterface_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.alen l_groupInterfaceArray))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.aget l_groupInterfaceArray l_index) "toString_0" #[])])
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "COMMA")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let mut l_pickupBehavior : JV := (<- JR.call this "getPickupBehavior_0" #[])
    if JR.truth (<- JR.ne l_pickupBehavior JV.null) then
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "NEW_LINE")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_pickupBehavior "toString_0" #[])])
        pure ()
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "NEW_LINE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "CollidableDestroyableDamageableLayer" "READYFOREXPLOSION")])
    let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[(<- JR.getField this "readyForExplosion")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "NEW_LINE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getInherited this "CollidableDestroyableDamageableLayer" "commonStrings") "INIT")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_positionStrings "X_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "initX")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_positionStrings "Y_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "initX")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_positionStrings "Z_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "initZ")])
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call this "toStringAppend_1" #[l_stringBuffer])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_groupInterface : JV := (JR.arg jargs 0)
    let mut l_name : JV := (JR.arg jargs 1)
    let mut l_layerInfo : JV := (JR.arg jargs 2)
    let mut l_viewPosition : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "CollidableCompositeLayer" this #[l_name, l_layerInfo, l_viewPosition, (<- JR.callStatic "CollidableNeverCollideBehaviorFactory" "getInstance_0" #[])]
    let _ <- jfields this
    JR.setField this "initWidth" (JR.asI (<- JR.call l_layerInfo "getWidth_0" #[]))
    JR.setField this "initHeight" (JR.asI (<- JR.call l_layerInfo "getHeight_0" #[]))
    JR.setField this "groupInterface" l_groupInterface
    JR.setField this "pickupBehavior" (<- JR.callStatic "PickupBehavior" "getNullInstance_0" #[])
    pure this

initialize JR.registerClass {
    name := "CollidableDestroyableDamageableLayer",
    javaName := "org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer",
    super := "CollidableCompositeLayer",
    interfaces := #["DestroyableInterface", "DamageableInterface", "PickupCompositeInterface", "SpecialGameInputInterface"],
    isInterface := false,
    fields := #[("groupInterface", JV.null), ("readyForExplosion", (JV.bool false)), ("initWidth", (JV.int 0)), ("initHeight", (JV.int 0)), ("initX", (JV.int 0)), ("initY", (JV.int 0)), ("initZ", (JV.int 0)), ("partInterfaceArrayP", JV.null), ("pickupBehavior", JV.null), ("allBinaryGameLayerManagerP", JV.null), ("isDraggable", (JV.bool false)), ("isDragged", (JV.bool false)), ("isDropped", (JV.bool false))],
    statics := #[("NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER", JV.null), ("READYFOREXPLOSION", (JV.str "ReadyForExplosion: "))],
    methods := #[
        ("getNullInstance_0", #[], true, m_getNullInstance_0), 
        ("initPosition_0", #[], false, m_initPosition_0), 
        ("initPositionXYZ_3", #["int", "int", "int"], false, m_initPositionXYZ_3), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("damage_2", #["int", "int"], false, m_damage_2), 
        ("getDamage_1", #["int"], false, m_getDamage_1), 
        ("isDestroyed_0", #[], false, m_isDestroyed_0), 
        ("getGroupInterface_0", #[], false, m_getGroupInterface_0), 
        ("setGroupInterface_1", #["GroupArr"], false, m_setGroupInterface_1), 
        ("setAllBinaryGameLayerManager_1", #["AllBinaryGameLayerManager"], false, m_setAllBinaryGameLayerManager_1), 
        ("isReadyForExplosion_0", #[], false, m_isReadyForExplosion_0), 
        ("setReadyForExplosion_1", #["boolean"], false, m_setReadyForExplosion_1), 
        ("getInitWidth_0", #[], false, m_getInitWidth_0), 
        ("getInitHeight_0", #[], false, m_getInitHeight_0), 
        ("getInitX_0", #[], false, m_getInitX_0), 
        ("getInitY_0", #[], false, m_getInitY_0), 
        ("up_0", #[], false, m_up_0), 
        ("down_0", #[], false, m_down_0), 
        ("right_0", #[], false, m_right_0), 
        ("left_0", #[], false, m_left_0), 
        ("strafeLeft_0", #[], false, m_strafeLeft_0), 
        ("strafeRight_0", #[], false, m_strafeRight_0), 
        ("fire_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_fire_2), 
        ("special1_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_special1_2), 
        ("special2_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_special2_2), 
        ("special3_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_special3_2), 
        ("special4_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_special4_2), 
        ("special5_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_special5_2), 
        ("upAnalog_1", #["int"], false, m_upAnalog_1), 
        ("downAnalog_1", #["int"], false, m_downAnalog_1), 
        ("rightAnalog_1", #["int"], false, m_rightAnalog_1), 
        ("leftAnalog_1", #["int"], false, m_leftAnalog_1), 
        ("rightTrigger_3", #["AllBinaryLayerManager", "GameKeyEvent", "int"], false, m_rightTrigger_3), 
        ("leftTrigger_3", #["AllBinaryLayerManager", "GameKeyEvent", "int"], false, m_leftTrigger_3), 
        ("onDestroyed_1", #["DestroyedEvent"], false, m_onDestroyed_1), 
        ("getPickupBehavior_0", #[], false, m_getPickupBehavior_0), 
        ("setPickupBehavior_1", #["PickupBehavior"], false, m_setPickupBehavior_1), 
        ("addPart_1", #["PickedUpLayerInterfaceFactoryInterface"], false, m_addPart_1), 
        ("setPartInterfaceArray_1", #["PartInterfaceArr"], false, m_setPartInterfaceArray_1), 
        ("getPartInterfaceArray_0", #[], false, m_getPartInterfaceArray_0), 
        ("toStringAppend_1", #["StringMaker"], false, m_toStringAppend_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_4", #["GroupArr", "String", "Rectangle", "ViewPositionBase"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CollidableDestroyableDamageableLayer


