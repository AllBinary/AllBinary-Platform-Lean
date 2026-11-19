-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.feature
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameFeatureFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "SOUND" (<- JR.new "GameFeature" #[(JV.str "Sound")])
    JR.setField this "MUSIC" (<- JR.new "GameFeature" #[(JV.str "Music")])
    JR.setField this "SCREEN_SHAKE" (<- JR.new "Feature" #[(JV.str "Screen Shake")])
    JR.setField this "POST_IMAGE_LOADING_MODIFICATION" (<- JR.new "Feature" #[(JV.str "Post Image Loading Modification (Scaling, Rotation, or Other)")])
    JR.setField this "HEALTH_BARS" (<- JR.new "GameFeature" #[(JV.str "Health Bars")])
    JR.setField this "DAMAGE_FLOATERS" (<- JR.new "GameFeature" #[(JV.str "Damage Floaters")])
    JR.setField this "GAME_INPUT_LAYER_PROCESSOR" (<- JR.new "GameFeature" #[(JV.str "Game Input Layer Processor")])
    JR.setField this "ARTIFICIAL_INTELLEGENCE_PROCESSOR" (<- JR.new "GameFeature" #[(JV.str "Artificial Intelligence Layer Processor")])
    JR.setField this "COLLIDABLE_INTERFACE_LAYER_PROCESSOR" (<- JR.new "GameFeature" #[(JV.str "Collidable Interface Layer Processor")])
    JR.setField this "TICKABLE_LAYER_PROCESSOR" (<- JR.new "GameFeature" #[(JV.str "Tickable Layer Processor")])
    JR.setField this "CHEATING" (<- JR.new "GameFeature" #[(JV.str "Cheating")])
    JR.setField this "DROPPED_ITEMS" (<- JR.new "GameFeature" #[(JV.str "Drops")])
    JR.setField this "DROPPED_ITEMS_FROM_DEATH" (<- JR.new "GameFeature" #[(JV.str "Drops from Dead")])
    JR.setField this "TEST_DESTROYED_LAYER_PROCESSOR" (<- JR.new "GameFeature" #[(JV.str "Destroyed Layer Processor")])
    JR.setField this "COLLISIONS_WITH_SOURCE" (<- JR.new "GameFeature" #[(JV.str "Allow Collisions With Source")])
    JR.setField this "COLLISIONS_FORCED_TWO_DIMENSIONAL" (<- JR.new "GameFeature" #[(JV.str "Collisions Forced Two Dimensional")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameFeatureFactory" "instance" (<- JR.new "GameFeatureFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameFeatureFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameFeatureFactory",
    javaName := "org.allbinary.game.configuration.feature.GameFeatureFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("SOUND", JV.null), ("MUSIC", JV.null), ("SCREEN_SHAKE", JV.null), ("POST_IMAGE_LOADING_MODIFICATION", JV.null), ("HEALTH_BARS", JV.null), ("DAMAGE_FLOATERS", JV.null), ("GAME_INPUT_LAYER_PROCESSOR", JV.null), ("ARTIFICIAL_INTELLEGENCE_PROCESSOR", JV.null), ("COLLIDABLE_INTERFACE_LAYER_PROCESSOR", JV.null), ("TICKABLE_LAYER_PROCESSOR", JV.null), ("CHEATING", JV.null), ("DROPPED_ITEMS", JV.null), ("DROPPED_ITEMS_FROM_DEATH", JV.null), ("TEST_DESTROYED_LAYER_PROCESSOR", JV.null), ("COLLISIONS_WITH_SOURCE", JV.null), ("COLLISIONS_FORCED_TWO_DIMENSIONAL", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameFeatureFactory


