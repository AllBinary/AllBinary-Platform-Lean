-- Generated Code Do Not Modify
-- package org.allbinary.game.resource
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FeaturedResourceFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "ANIMATION_FEATURES" (JV.str "Animation Features: Vector: ")
    JR.setField this "IMAGE_LABEL" (JV.str " Image: ")
    JR.setField this "IMAGE_GRAPHICS_ARRAY" (JV.str "Image Array: ")
    JR.setField this "IMAGE_GRAPHICS_ROTATION" (JV.str "Image Rotate: ")
    JR.setField this "SPRITE_QUARTER" (JV.str " Sprite Quarter: ")
    JR.setField this "SPRITE_FULL" (JV.str " Sprite Full: ")
    JR.setField this "IS_LOADING_LEVEL_LABEL" (JV.str " isLoadingLevel ")
    JR.setField this "IS_FEATURE" (JV.str " isFeature: ")
    JR.setField this "GAME_FEATURE_CONTROLLED" (JV.str "GameFeatureControlledInterface: ")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_level : JV := (JR.asI (JR.arg jargs 0))
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "list") "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let mut l_featureInterface : JV := (<- JR.aget (<- JR.getField (<- JR.getField this "list") "objectArray") l_index)
            let mut l_isLoadingLevel : JV := (<- JR.call l_featureInterface "isLoadingLevel_1" #[l_level])
            let mut l_isFeature : JV := (<- JR.call l_featureInterface "isFeature_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "GAME_FEATURE_CONTROLLED")]) "append_1" #[(<- JR.call l_featureInterface "toString_0" #[])]) "append_1" #[(<- JR.getField this "IS_LOADING_LEVEL_LABEL")]) "append_1" #[(<- JR.call (<- JR.callStatic "ResourceLoadingLevelFactory" "getInstance_0" #[]) "getLevelString_1" #[l_level])]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "COLON_SEP")]) "appendboolean_1" #[l_isLoadingLevel]) "append_1" #[(<- JR.getField this "IS_FEATURE")]) "appendboolean_1" #[l_isFeature]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "INIT")])
            if JR.truth (<- JR.cand l_isLoadingLevel (do pure l_isFeature)) then
                let _ := (<- JR.call l_featureInterface "init_1" #[l_level])
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    let mut l_graphicsFeatureFactory : JV := (<- JR.callStatic "GraphicsFeatureFactory" "getInstance_0" #[])
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "ANIMATION_FEATURES")])
    let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[(<- JR.call l_features "isFeature_1" #[(<- JR.getField l_graphicsFeatureFactory "VECTOR_GRAPHICS")])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "IMAGE_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[(<- JR.call l_features "isFeature_1" #[(<- JR.getField l_graphicsFeatureFactory "IMAGE_GRAPHICS")])])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "INIT")])
    if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_graphicsFeatureFactory "IMAGE_GRAPHICS")]) then
        let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "IMAGE_GRAPHICS_ARRAY")])
        let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[(<- JR.call l_features "isFeature_1" #[(<- JR.getField l_graphicsFeatureFactory "IMAGE_TO_ARRAY_GRAPHICS")])])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "IMAGE_GRAPHICS_ROTATION")])
        let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[(<- JR.call l_features "isFeature_1" #[(<- JR.getField l_graphicsFeatureFactory "IMAGE_TO_ARRAY_GRAPHICS")])])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "SPRITE_QUARTER")])
        let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[(<- JR.call l_features "isFeature_1" #[(<- JR.getField l_graphicsFeatureFactory "SPRITE_QUARTER_ROTATION_GRAPHICS")])])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "SPRITE_FULL")])
        let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[(<- JR.call l_features "isFeature_1" #[(<- JR.getField l_graphicsFeatureFactory "SPRITE_FULL_GRAPHICS")])])
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "INIT")])
        pure ()
    pure JV.null


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "list") "clear_0" #[])
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_featureInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "START_LABEL")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_featureInterface])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "ADD")])
    let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_featureInterface])
    pure JV.null


def m_getList_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "list")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FeaturedResourceFactory",
    javaName := "org.allbinary.game.resource.FeaturedResourceFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("list", JV.null), ("commonStrings", JV.null), ("ANIMATION_FEATURES", JV.null), ("IMAGE_LABEL", JV.null), ("IMAGE_GRAPHICS_ARRAY", JV.null), ("IMAGE_GRAPHICS_ROTATION", JV.null), ("SPRITE_QUARTER", JV.null), ("SPRITE_FULL", JV.null), ("IS_LOADING_LEVEL_LABEL", JV.null), ("IS_FEATURE", JV.null), ("GAME_FEATURE_CONTROLLED", JV.null)],
    statics := #[],
    methods := #[
        ("init_1", #["int"], false, m_init_1), 
        ("clear_0", #[], false, m_clear_0), 
        ("add_1", #["GameFeatureControlledInterface"], false, m_add_1), 
        ("getList_0", #[], false, m_getList_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FeaturedResourceFactory


