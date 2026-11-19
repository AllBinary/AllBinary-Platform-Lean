-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.resources
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameGraphicsResourceUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "SPRITE" (JV.str "_sprite")
    JR.setField this "QUARTER" (JV.str "_quarter")
    JR.setField this "name" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameGraphicsResourceUtil" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "GameGraphicsResourceUtil" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "GameGraphicsResourceUtil" "instance" (<- JR.new "GameGraphicsResourceUtil" #[])
        pure ()
    return (<- JR.getStatic "GameGraphicsResourceUtil" "instance")


def m_getString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphicsFeatureFactory : JV := (<- JR.callStatic "GraphicsFeatureFactory" "getInstance_0" #[])
    let mut l_graphicsFeature : JV := (<- JR.getField l_graphicsFeatureFactory "NONE")
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_graphicsFeatureFactory "IMAGE_TO_ARRAY_GRAPHICS")]) then
        l_graphicsFeature := (<- JR.getField l_graphicsFeatureFactory "IMAGE_TO_ARRAY_GRAPHICS")
        pure ()
    else
        if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_graphicsFeatureFactory "SPRITE_FULL_GRAPHICS")]) then
            l_graphicsFeature := (<- JR.getField l_graphicsFeatureFactory "SPRITE_FULL_GRAPHICS")
            pure ()
        else
            if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_graphicsFeatureFactory "SPRITE_QUARTER_ROTATION_GRAPHICS")]) then
                l_graphicsFeature := (<- JR.getField l_graphicsFeatureFactory "SPRITE_QUARTER_ROTATION_GRAPHICS")
                pure ()
            else
                if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_graphicsFeatureFactory "IMAGE_ROTATION_ON_THE_FLY")]) then
                    l_graphicsFeature := (<- JR.getField l_graphicsFeatureFactory "IMAGE_ROTATION_ON_THE_FLY")
                    pure ()
    return (<- JR.call this "getStringForFeature_1" #[l_graphicsFeature])


def m_getStringForFeature_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphicsFeature : JV := (JR.arg jargs 0)
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_graphicsFeatureFactory : JV := (<- JR.callStatic "GraphicsFeatureFactory" "getInstance_0" #[])
    let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_graphicsFeatureFactory "VECTOR_GRAPHICS")]) then
        pure ()
    else
        if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_graphicsFeatureFactory "IMAGE_GRAPHICS")]) then
            if JR.truth (<- JR.cor (<- JR.eq l_graphicsFeature (<- JR.getField l_graphicsFeatureFactory "IMAGE_TO_ARRAY_GRAPHICS")) (do pure (<- JR.eq l_graphicsFeature (<- JR.getField l_graphicsFeatureFactory "IMAGE_ROTATION_ON_THE_FLY")))) then
                pure ()
            else
                if JR.truth (<- JR.eq l_graphicsFeature (<- JR.getField l_graphicsFeatureFactory "SPRITE_FULL_GRAPHICS")) then
                    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "SPRITE")])
                    pure ()
                else
                    if JR.truth (<- JR.eq l_graphicsFeature (<- JR.getField l_graphicsFeatureFactory "SPRITE_QUARTER_ROTATION_GRAPHICS")) then
                        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "QUARTER")])
                        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "SPRITE")])
                        pure ()
                    else
                        throw (<- JR.new "Exception" #[(JV.str "None/Unknown Sub Image Resource Type Specified")])
            pure ()
        else
            if JR.truth (<- JR.call (<- JR.callStatic "OpenGLFeatureUtil" "getInstance_0" #[]) "isAnyThreed_0" #[]) then
                let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CanvasStrings" "getInstance_0" #[]) "OBJ_MODEL")])
                pure ()
            else
                throw (<- JR.new "Exception" #[(JV.str "None/Unknown Main Image Resource Type Specified")])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    try
        JR.setField this "name" (<- JR.call this "getString_0" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "CONSTRUCTOR"), l_e])
            pure ()
        else
            throw jex0
    pure this

initialize JR.registerClass {
    name := "GameGraphicsResourceUtil",
    javaName := "org.allbinary.game.layer.resources.GameGraphicsResourceUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("SPRITE", JV.null), ("QUARTER", JV.null), ("name", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getString_0", #[], false, m_getString_0), 
        ("getStringForFeature_1", #["GraphicsFeature"], false, m_getStringForFeature_1), 
        ("getName_0", #[], false, m_getName_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameGraphicsResourceUtil


