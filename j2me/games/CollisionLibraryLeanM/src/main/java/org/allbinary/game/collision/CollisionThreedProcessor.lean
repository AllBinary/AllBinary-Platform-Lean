-- Generated Code Do Not Modify
-- package org.allbinary.game.collision
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CollisionThreedProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isCollision_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_myLayer : JV := (JR.arg jargs 0)
    let mut l_myLayer2 : JV := (JR.arg jargs 1)
    if JR.truth (<- JR.cor (<- JR.cor (<- JR.cor (<- JR.cor (<- JR.cor (<- JR.ge (<- JR.call l_myLayer2 "getXP_0" #[]) (<- JR.call l_myLayer "getX2_0" #[])) (do pure (<- JR.ge (<- JR.call l_myLayer2 "getYP_0" #[]) (<- JR.call l_myLayer "getY2_0" #[])))) (do pure (<- JR.le (<- JR.call l_myLayer2 "getX2_0" #[]) (<- JR.call l_myLayer "getXP_0" #[])))) (do pure (<- JR.le (<- JR.call l_myLayer2 "getY2_0" #[]) (<- JR.call l_myLayer "getYP_0" #[])))) (do pure (<- JR.lt (<- JR.call l_myLayer2 "getZP_0" #[]) (<- JR.call l_myLayer "getZ2_0" #[])))) (do pure (<- JR.gt (<- JR.call l_myLayer2 "getZ2_0" #[]) (<- JR.call l_myLayer "getZP_0" #[])))) then
        return (JV.bool false)
    else
        return (JV.bool true)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "CollisionProcessor" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CollisionThreedProcessor",
    javaName := "org.allbinary.game.collision.CollisionThreedProcessor",
    super := "CollisionProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("isCollision_2", #["AllBinaryLayer", "AllBinaryLayer"], false, m_isCollision_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CollisionThreedProcessor


