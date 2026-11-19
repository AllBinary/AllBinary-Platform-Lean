-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.resources
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicGameResources

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "RESOURCE" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "RESOURCE_DESTROY" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicGameResources" "stringBuffer" (<- JR.new "StringMaker" #[])
    pure JV.null


def m_init_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ROOT : JV := (JR.arg jargs 0)
    let mut l_SIZE : JV := (JR.arg jargs 1)
    try
        let mut l_scale : JV := (JR.asI (<- JR.call (<- JR.call (<- JR.getField (<- JR.callStatic "GameConfigurationCentral" "getInstance_0" #[]) "SCALE") "getValue_0" #[]) "intValue_0" #[]))
        if JR.truth (<- JR.cand (<- JR.gt l_scale (JV.int 1)) (do pure (<- JR.lt (<- JR.sub l_scale (JV.int 1)) (<- JR.alen l_SIZE)))) then
            let _ := (<- JR.call this "append_2" #[l_ROOT, (<- JR.aget l_SIZE (<- JR.sub l_scale (JV.int 1)))])
            pure ()
        else
            throw (<- JR.new "Exception" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Invalid Value: ")]) "appendint_1" #[l_scale]) "toString_0" #[])])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "INIT"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_append_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ROOT : JV := (JR.arg jargs 0)
    let mut l_sizeString : JV := (JR.arg jargs 1)
    let mut l_DESTROY : JV := (JV.str "_destroy")
    let mut l_string : JV := (<- JR.call this "getString_0" #[])
    let _ := (<- JR.call (<- JR.getStatic "BasicGameResources" "stringBuffer") "delete_2" #[(JV.int 0), (<- JR.call (<- JR.getStatic "BasicGameResources" "stringBuffer") "length_0" #[])])
    let _ := (<- JR.call (<- JR.getStatic "BasicGameResources" "stringBuffer") "append_1" #[l_ROOT])
    let _ := (<- JR.call (<- JR.getStatic "BasicGameResources" "stringBuffer") "append_1" #[l_string])
    let _ := (<- JR.call (<- JR.getStatic "BasicGameResources" "stringBuffer") "append_1" #[l_sizeString])
    JR.setField this "RESOURCE" (<- JR.call (<- JR.getStatic "BasicGameResources" "stringBuffer") "toString_0" #[])
    let _ := (<- JR.call (<- JR.getStatic "BasicGameResources" "stringBuffer") "delete_2" #[(JV.int 0), (<- JR.call (<- JR.getStatic "BasicGameResources" "stringBuffer") "length_0" #[])])
    let _ := (<- JR.call (<- JR.getStatic "BasicGameResources" "stringBuffer") "append_1" #[l_ROOT])
    let _ := (<- JR.call (<- JR.getStatic "BasicGameResources" "stringBuffer") "append_1" #[l_DESTROY])
    let _ := (<- JR.call (<- JR.getStatic "BasicGameResources" "stringBuffer") "append_1" #[l_string])
    let _ := (<- JR.call (<- JR.getStatic "BasicGameResources" "stringBuffer") "append_1" #[l_sizeString])
    JR.setField this "RESOURCE_DESTROY" (<- JR.call (<- JR.getStatic "BasicGameResources" "stringBuffer") "toString_0" #[])
    pure JV.null


def m_getString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.callStatic "GameGraphicsResourceUtil" "getInstance_0" #[]) "getName_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicGameResources",
    javaName := "org.allbinary.game.layer.resources.BasicGameResources",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("RESOURCE", JV.null), ("RESOURCE_DESTROY", JV.null)],
    statics := #[("stringBuffer", JV.null)],
    methods := #[
        ("init_2", #["String", "StringArr"], false, m_init_2), 
        ("append_2", #["String", "String"], false, m_append_2), 
        ("getString_0", #[], false, m_getString_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicGameResources


