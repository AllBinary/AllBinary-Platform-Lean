-- Generated Code Do Not Modify
-- package org.allbinary.logic.string
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_StringValidationJSEUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isBlank_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_string : JV := (JR.arg jargs 0)
    let mut l_len : JV := (JR.asI (<- JR.call l_string "length_0" #[]))
    if true then
        let mut l_i : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_i l_len)) then break
            let mut l_c : JV := (JR.asC (<- JR.call l_string "charAt_1" #[l_i]))
            if JR.truth (<- JR.eq (<- JR.callStatic "Character" "isWhitespace_1" #[l_c]) (JV.bool false)) then
                return (JV.bool false)
            l_i := (JR.inc l_i)
            pure ()
        pure ()
    return (JV.bool true)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "StringValidationJSEUtil",
    javaName := "org.allbinary.logic.string.StringValidationJSEUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("isBlank_1", #["String"], true, m_isBlank_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_StringValidationJSEUtil


