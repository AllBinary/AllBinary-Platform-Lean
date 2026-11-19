-- Generated Code Do Not Modify
-- package org.allbinary.game.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CollidableCompositeLayer

def jfields (this : JV) : JM JV := do
    JR.setField this "collidableInferface" (<- JR.call (<- JR.callStatic "CollidableNeverCollideBehaviorFactory" "getInstance_0" #[]) "createBehavior_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CollidableCompositeLayer" "NULL_COLLIDABLE_COMPOSITE_LAYER" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getNullInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "CollidableCompositeLayer" "NULL_COLLIDABLE_COMPOSITE_LAYER") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "CollidableCompositeLayer" "NULL_COLLIDABLE_COMPOSITE_LAYER" (<- JR.new "CollidableCompositeLayer" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "RectangleFactory" "SINGLETON"), (<- JR.getStatic "ViewPositionBase" "NULL_VIEW_POSITION"), (<- JR.callStatic "CollidableNeverCollideBehaviorFactory" "getInstance_0" #[])])
        pure ()
    return (<- JR.getStatic "CollidableCompositeLayer" "NULL_COLLIDABLE_COMPOSITE_LAYER")


def m_getArtificialIntelligenceInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.getInherited this "CollidableCompositeLayer" "commonStrings") "NOT_IMPLEMENTED"), this])
    return (<- JR.callStatic "ArtificialIntelligence" "getInstance_0" #[])


def m_getCollidableInferface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "collidableInferface")


def m_setCollidableInferface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_collidableInferface : JV := (JR.arg jargs 0)
    JR.setField this "collidableInferface" l_collidableInferface
    pure JV.null


def m_implmentsCollidableInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool true)


def m_toStringAppend_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (JR.arg jargs 0)
    let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    let _ := (<- JR.callSuper "AllBinaryGameLayer" this "toStringAppend_1" #[l_stringBuffer])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "NEW_LINE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.call this "getCollidableInferface_0" #[]) "toString_0" #[])])
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call this "toStringAppend_1" #[l_stringBuffer])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_layerInfo : JV := (JR.arg jargs 1)
    let mut l_viewPosition : JV := (JR.arg jargs 2)
    let mut l_collidableBaseBehaviorFactory : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "AllBinaryGameLayer" this #[l_name, l_layerInfo, l_viewPosition]
    let _ <- jfields this
    if JR.truth (<- JR.ne l_collidableBaseBehaviorFactory (<- JR.callStatic "CollidableNeverCollideBehaviorFactory" "getInstance_0" #[])) then
        let _ := (<- JR.call this "setCollidableInferface_1" #[(<- JR.call l_collidableBaseBehaviorFactory "createBehavior_0" #[])])
        pure ()
    pure this

initialize JR.registerClass {
    name := "CollidableCompositeLayer",
    javaName := "org.allbinary.game.layer.CollidableCompositeLayer",
    super := "AllBinaryGameLayer",
    interfaces := #["CollidableInterfaceCompositeInterface"],
    isInterface := false,
    fields := #[("collidableInferface", JV.null)],
    statics := #[("NULL_COLLIDABLE_COMPOSITE_LAYER", JV.null)],
    methods := #[
        ("getNullInstance_0", #[], true, m_getNullInstance_0), 
        ("getArtificialIntelligenceInterface_0", #[], false, m_getArtificialIntelligenceInterface_0), 
        ("getCollidableInferface_0", #[], false, m_getCollidableInferface_0), 
        ("setCollidableInferface_1", #["CollidableBaseBehavior"], false, m_setCollidableInferface_1), 
        ("implmentsCollidableInterface_0", #[], false, m_implmentsCollidableInterface_0), 
        ("toStringAppend_1", #["StringMaker"], false, m_toStringAppend_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_4", #["String", "Rectangle", "ViewPositionBase", "CollidableBaseBehaviorFactory"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CollidableCompositeLayer


