-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LocalPlayerInputIdFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "MAX_NUMBER_OF_PLAYERS" (JR.asI (JV.int 6))
    JR.setField this "MAX_FAST_DEVICEID" (JR.asI (JV.int 65))
    JR.setField this "deviceIdToplayerId" (<- JR.newArray "I" 1 #[(<- JR.getField this "MAX_FAST_DEVICEID")])
    JR.setField this "playerIdToDeviceId" (<- JR.newArray "I" 1 #[(<- JR.getField this "MAX_NUMBER_OF_PLAYERS")])
    JR.setField this "playersInPlay" (<- JR.newArray "Z" 1 #[(<- JR.getField this "MAX_NUMBER_OF_PLAYERS")])
    JR.setField this "totalDevicesMapped" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LocalPlayerInputIdFactory" "instance" (<- JR.new "LocalPlayerInputIdFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "LocalPlayerInputIdFactory" "instance")


def m_getDeviceId_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerInputId : JV := (JR.asI (JR.arg jargs 0))
    return (JR.asI (<- JR.aget (<- JR.getField this "playerIdToDeviceId") l_playerInputId))


def m_getPlayerForDevice_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 0))
    let mut l_index : JV := (JR.asI (JV.int 0))
    if JR.truth (<- JR.lt l_deviceId (<- JR.getField this "MAX_FAST_DEVICEID")) then
        let mut l_playerInputId : JV := (JR.asI (<- JR.aget (<- JR.getField this "deviceIdToplayerId") l_deviceId))
        if JR.truth (<- JR.ne l_playerInputId (JV.int (-1))) then
            return (JR.asI l_playerInputId)
        pure ()
    else
        if true then
            l_index := (JR.asI (<- JR.sub (<- JR.getField this "totalDevicesMapped") (JV.int 1)))
            repeat
                if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
                if JR.truth (<- JR.eq (<- JR.aget (<- JR.getField this "playerIdToDeviceId") l_index) l_deviceId) then
                    return (JR.asI l_index)
                l_index := (JR.dec l_index)
                pure ()
            pure ()
        pure ()
    l_index := (JR.asI (<- JR.getField this "totalDevicesMapped"))
    if JR.truth (<- JR.lt l_deviceId (<- JR.getField this "MAX_FAST_DEVICEID")) then
        JR.aset (<- JR.getField this "deviceIdToplayerId") l_deviceId (JR.asI l_index)
        pure ()
    else
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Added DeviceId: ")]) "appendint_1" #[l_deviceId]) "append_1" #[(JV.str " beyond fast Id list")]) "toString_0" #[]), this, (JV.str "getPlayerForDevice")])
        pure ()
    JR.aset (<- JR.getField this "playerIdToDeviceId") l_index (JR.asI l_deviceId)
    let _ := (<- JR.call (<- JR.callStatic "AnalogLocationInputFactory" "getInstance_0" #[]) "addPlayer_1" #[(<- JR.getField this "totalDevicesMapped")])
    JR.setField this "totalDevicesMapped" (JR.inc (<- JR.getField this "totalDevicesMapped"))
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Added DeviceId: ")]) "appendint_1" #[l_deviceId]) "append_1" #[(JV.str " at: ")]) "appendint_1" #[l_index]) "append_1" #[(JV.str " Total: ")]) "appendint_1" #[(<- JR.getField this "totalDevicesMapped")]) "toString_0" #[]), this, (JV.str "getPlayerForDevice")])
    return (JR.asI l_index)


def m_getTotalDevicesInPlay_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_total : JV := (JR.asI (JV.int 0))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.getField this "totalDevicesMapped") (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            if JR.truth (<- JR.eq (<- JR.aget (<- JR.getField this "playersInPlay") l_index) (JV.bool true)) then
                l_total := (JR.inc l_total)
                pure ()
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    return (JR.asI l_total)


def m_isPlayerInPlay_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerInputId : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.aget (<- JR.getField this "playersInPlay") l_playerInputId)


def m_setPlayerInPlay_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerInputId : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Setting PlayerInPlay with playerInputId: ")]) "appendint_1" #[l_playerInputId]) "toString_0" #[]), this, (JV.str "setPlayerInPlay")])
    JR.aset (<- JR.getField this "playersInPlay") l_playerInputId (JV.bool true)
    pure JV.null


def m_setPlayerOutOfPlay_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerInputId : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Setting PlayerOutOfPlay with playerInputId: ")]) "appendint_1" #[l_playerInputId]) "toString_0" #[]), this, (JV.str "setPlayerOutOfPlay")])
    JR.aset (<- JR.getField this "playersInPlay") l_playerInputId (JV.bool false)
    pure JV.null


def m_getPlayersInPlay_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "playersInPlay")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getField this "deviceIdToplayerId")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            JR.aset (<- JR.getField this "deviceIdToplayerId") l_index (JR.asI (JV.int (-1)))
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure this

initialize JR.registerClass {
    name := "LocalPlayerInputIdFactory",
    javaName := "org.allbinary.game.input.LocalPlayerInputIdFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("MAX_NUMBER_OF_PLAYERS", (JV.int 0)), ("MAX_FAST_DEVICEID", (JV.int 0)), ("deviceIdToplayerId", JV.null), ("playerIdToDeviceId", JV.null), ("playersInPlay", JV.null), ("totalDevicesMapped", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getDeviceId_1", #["int"], false, m_getDeviceId_1), 
        ("getPlayerForDevice_1", #["int"], false, m_getPlayerForDevice_1), 
        ("getTotalDevicesInPlay_0", #[], false, m_getTotalDevicesInPlay_0), 
        ("isPlayerInPlay_1", #["int"], false, m_isPlayerInPlay_1), 
        ("setPlayerInPlay_1", #["int"], false, m_setPlayerInPlay_1), 
        ("setPlayerOutOfPlay_1", #["int"], false, m_setPlayerOutOfPlay_1), 
        ("getPlayersInPlay_0", #[], false, m_getPlayersInPlay_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LocalPlayerInputIdFactory


