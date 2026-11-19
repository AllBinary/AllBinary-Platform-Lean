-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TopUBoundBounceAIFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 1)
    let mut l_gameInput : JV := (JR.arg jargs 2)
    let mut l_velocityInterfaceCompositeInterface : JV := l_ownerLayerInterface
    let mut l_velocityInterface : JV := (<- JR.call l_velocityInterfaceCompositeInterface "getVelocityProperties_0" #[])
    let mut l_maxDistancePerTick : JV := (JR.asI ((<- JR.shr (<- JR.call l_velocityInterface "getMaxForwardVelocity_0" #[]) (<- JR.call (<- JR.call l_velocityInterface "getVelocityXBasicDecimalP_0" #[]) "getScaledFactor_0" #[]))))
    let mut l_halfWidth : JV := (JR.asI (<- JR.add (<- JR.add (<- JR.mul (<- JR.call l_ownerLayerInterface "getWidth_0" #[]) (JV.int 2)) l_maxDistancePerTick) (JV.int 1)))
    let mut l_halfHeight : JV := (JR.asI (<- JR.add (<- JR.add (<- JR.mul (<- JR.call l_ownerLayerInterface "getHeight_0" #[]) (JV.int 2)) l_maxDistancePerTick) (JV.int 1)))
    let mut l_point : JV := (<- JR.call (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "createXY_2" #[l_halfWidth, (<- JR.add l_halfHeight (JV.int 60))])
    let mut l_displayInfo : JV := (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    let mut l_rectangle : JV := (<- JR.new "Rectangle" #[l_point, ((<- JR.sub (<- JR.sub (<- JR.call l_displayInfo "getLastWidth_0" #[]) l_halfWidth) (<- JR.call l_point "getX_0" #[]))), ((<- JR.sub (<- JR.sub (<- JR.call l_displayInfo "getLastHeight_0" #[]) l_halfHeight) (<- JR.call l_point "getY_0" #[])))])
    return (<- JR.new "BoundBounceAI" #[l_ownerLayerInterface, l_gameInput, (<- JR.new "TopULayerBounds" #[l_rectangle]), (<- JR.new "ReverseVelocityBoundsVisitor" #[l_ownerLayerInterface])])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TopUBoundBounceAIFactory",
    javaName := "org.allbinary.game.ag.ai.TopUBoundBounceAIFactory",
    super := "Object",
    interfaces := #["ArtificialIntelligenceInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_3", #["ABHashtable", "AllBinaryLayer", "GameInput"], false, m_getInstance_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TopUBoundBounceAIFactory


