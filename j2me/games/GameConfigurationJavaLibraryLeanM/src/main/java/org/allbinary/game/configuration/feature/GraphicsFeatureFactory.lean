-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.feature
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GraphicsFeatureFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "NONE" (<- JR.new "GraphicsFeature" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "NULL_STRING")])
    JR.setField this "TRANSPARENT_IMAGE_CREATION" (<- JR.new "GraphicsFeature" #[(JV.str "Transparent Image Creation")])
    JR.setField this "IMAGE_GRAPHICS" (<- JR.new "GraphicsFeature" #[(JV.str "Image Graphics")])
    JR.setField this "IMAGE_ROTATION_ON_THE_FLY" (<- JR.new "GraphicsFeature" #[(JV.str "Image Rotated On The Fly")])
    JR.setField this "IMAGE_TO_ARRAY_GRAPHICS" (<- JR.new "GraphicsFeature" #[(JV.str "Image To Array Graphics")])
    JR.setField this "SPRITE_QUARTER_ROTATION_GRAPHICS" (<- JR.new "GraphicsFeature" #[(JV.str "Sprite Quarter Rotation Graphics")])
    JR.setField this "SPRITE_FULL_GRAPHICS" (<- JR.new "GraphicsFeature" #[(JV.str "Sprite Full Rotation Graphics")])
    JR.setField this "VECTOR_GRAPHICS" (<- JR.new "GraphicsFeature" #[(JV.str "BasicArrayList Graphics")])
    JR.setField this "VECTOR_TO_IMAGE_GRAPHICS" (<- JR.new "GraphicsFeature" #[(JV.str "BasicArrayList To Image Graphics")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GraphicsFeatureFactory" "instance" (<- JR.new "GraphicsFeatureFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GraphicsFeatureFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GraphicsFeatureFactory",
    javaName := "org.allbinary.game.configuration.feature.GraphicsFeatureFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NONE", JV.null), ("TRANSPARENT_IMAGE_CREATION", JV.null), ("IMAGE_GRAPHICS", JV.null), ("IMAGE_ROTATION_ON_THE_FLY", JV.null), ("IMAGE_TO_ARRAY_GRAPHICS", JV.null), ("SPRITE_QUARTER_ROTATION_GRAPHICS", JV.null), ("SPRITE_FULL_GRAPHICS", JV.null), ("VECTOR_GRAPHICS", JV.null), ("VECTOR_TO_IMAGE_GRAPHICS", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GraphicsFeatureFactory


