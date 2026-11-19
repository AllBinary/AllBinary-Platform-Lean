-- Generated Code Do Not Modify
-- package org.allbinary.util
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicArrayList

def jfields (this : JV) : JM JV := do
    JR.setField this "arrayUtil" (<- JR.callStatic "ArrayUtil" "getInstance_0" #[])
    JR.setField this "currentIndex" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_addAt_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_element : JV := (JR.arg jargs 1)
    if JR.truth (<- JR.cor (<- JR.gt l_index (<- JR.getField this "currentIndex")) (do pure (<- JR.lt l_index (JV.int 0)))) then
        let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "INDEX_LABEL")])
        let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_index])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "BasicArrayList" "SIZE")])
        let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "currentIndex")])
        throw (<- JR.new "IndexOutOfBoundsException" #[(<- JR.call l_stringBuffer "toString_0" #[])])
    let _ := (<- JR.call this "ensureCapacity_1" #[(<- JR.add (<- JR.getField this "currentIndex") (JV.int 1))])
    let _ := (<- JR.callStatic "System" "arraycopy_5" #[(<- JR.getField this "objectArray"), l_index, (<- JR.getField this "objectArray"), (<- JR.add l_index (JV.int 1)), (<- JR.sub (<- JR.getField this "currentIndex") l_index)])
    JR.aset (<- JR.getField this "objectArray") l_index l_element
    JR.setField this "currentIndex" (JR.inc (<- JR.getField this "currentIndex"))
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "ensureCapacity_1" #[(<- JR.add (<- JR.getField this "currentIndex") (JV.int 1))])
    let jtemp2 : JV := (<- JR.getField this "currentIndex")
    JR.setField this "currentIndex" (JR.inc jtemp2)
    JR.aset (<- JR.getField this "objectArray") jtemp2 l_anyType
    return (JV.bool true)


def m_removeAt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.ge l_index (<- JR.getField this "currentIndex")) then
        let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "INDEX_LABEL")])
        let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_index])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "BasicArrayList" "SIZE")])
        let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "currentIndex")])
        throw (<- JR.new "IndexOutOfBoundsException" #[(<- JR.call l_stringBuffer "toString_0" #[])])
    let mut l_oldValue : JV := (<- JR.aget (<- JR.getField this "objectArray") l_index)
    let mut l_numMoved : JV := (JR.asI (<- JR.sub (<- JR.sub (<- JR.getField this "currentIndex") l_index) (JV.int 1)))
    if JR.truth (<- JR.gt l_numMoved (JV.int 0)) then
        let _ := (<- JR.callStatic "System" "arraycopy_5" #[(<- JR.getField this "objectArray"), (<- JR.add l_index (JV.int 1)), (<- JR.getField this "objectArray"), l_index, l_numMoved])
        pure ()
    let jtemp4 : JV := (JR.dec (<- JR.getField this "currentIndex"))
    JR.setField this "currentIndex" jtemp4
    JR.aset (<- JR.getField this "objectArray") jtemp4 JV.null
    return l_oldValue


def m_remove_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq l_anyType JV.null) then
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index (<- JR.getField this "currentIndex"))) then break
                if JR.truth (<- JR.eq (<- JR.aget (<- JR.getField this "objectArray") l_index) JV.null) then
                    let mut l_numMoved : JV := (JR.asI (<- JR.sub (<- JR.sub (<- JR.getField this "currentIndex") l_index) (JV.int 1)))
                    if JR.truth (<- JR.gt l_numMoved (JV.int 0)) then
                        let _ := (<- JR.callStatic "System" "arraycopy_5" #[(<- JR.getField this "objectArray"), (<- JR.add l_index (JV.int 1)), (<- JR.getField this "objectArray"), l_index, l_numMoved])
                        pure ()
                    let jtemp6 : JV := (JR.dec (<- JR.getField this "currentIndex"))
                    JR.setField this "currentIndex" jtemp6
                    JR.aset (<- JR.getField this "objectArray") jtemp6 JV.null
                    return (JV.bool true)
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        pure ()
    else
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index (<- JR.getField this "currentIndex"))) then break
                if JR.truth (<- JR.cor (<- JR.eq l_anyType (<- JR.aget (<- JR.getField this "objectArray") l_index)) (do pure (<- JR.call l_anyType "equals_1" #[(<- JR.aget (<- JR.getField this "objectArray") l_index)]))) then
                    let mut l_numMoved : JV := (JR.asI (<- JR.sub (<- JR.sub (<- JR.getField this "currentIndex") l_index) (JV.int 1)))
                    if JR.truth (<- JR.gt l_numMoved (JV.int 0)) then
                        let _ := (<- JR.callStatic "System" "arraycopy_5" #[(<- JR.getField this "objectArray"), (<- JR.add l_index (JV.int 1)), (<- JR.getField this "objectArray"), l_index, l_numMoved])
                        pure ()
                    let jtemp5 : JV := (JR.dec (<- JR.getField this "currentIndex"))
                    JR.setField this "currentIndex" jtemp5
                    JR.aset (<- JR.getField this "objectArray") jtemp5 JV.null
                    return (JV.bool true)
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        pure ()
    return (JV.bool false)


def m_removeAll2_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    let mut l_result : JV := (JV.bool true)
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            if JR.truth (<- JR.call this "remove_1" #[(<- JR.call l_list "get_1" #[l_index])]) then
                pure ()
            else
                l_result := (JV.bool false)
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_result


def m_addAll2_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "ensureCapacity_1" #[(<- JR.add (<- JR.getField this "currentIndex") (<- JR.getField l_list "currentIndex"))])
    let mut l_listSize : JV := (JR.asI (<- JR.getField l_list "currentIndex"))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_listSize)) then break
            let jtemp7 : JV := (<- JR.getField this "currentIndex")
            JR.setField this "currentIndex" (JR.inc jtemp7)
            JR.aset (<- JR.getField this "objectArray") jtemp7 (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (JV.bool true)


def m_addAllList_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    let mut l_newObjectArray : JV := (<- JR.call l_list "toArray_0" #[])
    return (<- JR.call this "addAll_1" #[l_newObjectArray])


def m_addAll_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_newObjectArray : JV := (JR.arg jargs 0)
    let mut l_numSize : JV := (JR.asI (<- JR.alen l_newObjectArray))
    let _ := (<- JR.call this "ensureCapacity_1" #[(<- JR.add (<- JR.getField this "currentIndex") l_numSize)])
    let _ := (<- JR.callStatic "System" "arraycopy_5" #[l_newObjectArray, (JV.int 0), (<- JR.getField this "objectArray"), (<- JR.getField this "currentIndex"), l_numSize])
    JR.setField this "currentIndex" (JR.castLike (<- JR.getField this "currentIndex") (<- JR.add (<- JR.getField this "currentIndex") l_numSize))
    return (<- JR.ne l_numSize (JV.int 0))


def m_ensureCapacity_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_minSize : JV := (JR.asI (JR.arg jargs 0))
    let mut l_oldCapacity : JV := (JR.asI (<- JR.alen (<- JR.getField this "objectArray")))
    if JR.truth (<- JR.gt l_minSize l_oldCapacity) then
        let mut l_newCapacity : JV := (JR.asI (<- JR.add ((<- JR.shr ((<- JR.mul l_oldCapacity (JV.int 3))) (JV.int 1))) (JV.int 1)))
        if JR.truth (<- JR.lt l_newCapacity l_minSize) then
            l_newCapacity := (JR.asI l_minSize)
            pure ()
        JR.setField this "objectArray" (<- JR.call (<- JR.getField this "arrayUtil") "copyOf_2" #[(<- JR.getField this "objectArray"), l_newCapacity])
        pure ()
    pure JV.null


def m_trimToSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_oldCapacity : JV := (JR.asI (<- JR.alen (<- JR.getField this "objectArray")))
    if JR.truth (<- JR.lt (<- JR.getField this "currentIndex") l_oldCapacity) then
        JR.setField this "objectArray" (<- JR.call (<- JR.getField this "arrayUtil") "copyOf_2" #[(<- JR.getField this "objectArray"), (<- JR.getField this "currentIndex")])
        pure ()
    pure JV.null


def m_indexOf_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq l_anyType JV.null) then
        if true then
            let mut l_i : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_i (<- JR.getField this "currentIndex"))) then break
                if JR.truth (<- JR.eq (<- JR.aget (<- JR.getField this "objectArray") l_i) JV.null) then
                    return (JR.asI l_i)
                l_i := (JR.inc l_i)
                pure ()
            pure ()
        pure ()
    else
        if true then
            let mut l_i : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_i (<- JR.getField this "currentIndex"))) then break
                if JR.truth (<- JR.call l_anyType "equals_1" #[(<- JR.aget (<- JR.getField this "objectArray") l_i)]) then
                    return (JR.asI l_i)
                l_i := (JR.inc l_i)
                pure ()
            pure ()
        pure ()
    return (JR.asI (JV.int (-1)))


def m_lastIndexOf_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq l_anyType JV.null) then
        if true then
            let mut l_i : JV := (JR.asI (<- JR.sub (<- JR.getField this "currentIndex") (JV.int 1)))
            repeat
                if !(JR.truth (<- JR.ge l_i (JV.int 0))) then break
                if JR.truth (<- JR.eq (<- JR.aget (<- JR.getField this "objectArray") l_i) JV.null) then
                    return (JR.asI l_i)
                l_i := (JR.dec l_i)
                pure ()
            pure ()
        pure ()
    else
        if true then
            let mut l_i : JV := (JR.asI (<- JR.sub (<- JR.getField this "currentIndex") (JV.int 1)))
            repeat
                if !(JR.truth (<- JR.ge l_i (JV.int 0))) then break
                if JR.truth (<- JR.call l_anyType "equals_1" #[(<- JR.aget (<- JR.getField this "objectArray") l_i)]) then
                    return (JR.asI l_i)
                l_i := (JR.dec l_i)
                pure ()
            pure ()
        pure ()
    return (JR.asI (JV.int (-1)))


def m_get_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.ge l_index (<- JR.getField this "currentIndex")) then
        let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "INDEX_LABEL")])
        let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_index])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "BasicArrayList" "SIZE")])
        let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "currentIndex")])
        throw (<- JR.new "IndexOutOfBoundsException" #[(<- JR.call l_stringBuffer "toString_0" #[])])
    return (<- JR.aget (<- JR.getField this "objectArray") l_index)


def m_set_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_element : JV := (JR.arg jargs 1)
    if JR.truth (<- JR.ge l_index (<- JR.getField this "currentIndex")) then
        let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "INDEX_LABEL")])
        let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_index])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "BasicArrayList" "SIZE")])
        let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "currentIndex")])
        throw (<- JR.new "IndexOutOfBoundsException" #[(<- JR.call l_stringBuffer "toString_0" #[])])
    let mut l_oldValue : JV := (<- JR.aget (<- JR.getField this "objectArray") l_index)
    JR.aset (<- JR.getField this "objectArray") l_index l_element
    return l_oldValue


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        let mut l_i : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_i (<- JR.getField this "currentIndex"))) then break
            JR.aset (<- JR.getField this "objectArray") l_i JV.null
            l_i := (JR.inc l_i)
            pure ()
        pure ()
    JR.setField this "currentIndex" (JR.asI (JV.int 0))
    pure JV.null


def m_size_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "currentIndex"))


def m_isEmpty_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.eq (<- JR.getField this "currentIndex") (JV.int 0))


def m_contains_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    return (<- JR.ge (<- JR.call this "indexOf_1" #[l_anyType]) (JV.int 0))


def m_toArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "arrayUtil") "copyOf_2" #[(<- JR.getField this "objectArray"), (<- JR.getField this "currentIndex")])


def m_toArrayType_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_objectArray : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.lt (<- JR.alen l_objectArray) (<- JR.getField this "currentIndex")) then
        return (<- JR.call (<- JR.getField this "arrayUtil") "copyOfType_3" #[(<- JR.getField this "objectArray"), (<- JR.getField this "currentIndex"), (<- JR.call l_objectArray "getClass_0" #[])])
    let _ := (<- JR.callStatic "System" "arraycopy_5" #[(<- JR.getField this "objectArray"), (JV.int 0), l_objectArray, (JV.int 0), (<- JR.getField this "currentIndex")])
    if JR.truth (<- JR.gt (<- JR.alen l_objectArray) (<- JR.getField this "currentIndex")) then
        JR.aset l_objectArray (<- JR.getField this "currentIndex") JV.null
        pure ()
    return l_objectArray


def m_clone_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_size : JV := (JR.asI (<- JR.call this "size_0" #[]))
    let mut l_list : JV := (<- JR.new "BasicArrayListS" #[l_size])
    let mut l_anyType : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_anyType := (<- JR.aget (<- JR.getField this "objectArray") l_index)
            let _ := (<- JR.call l_list "add_1" #[l_anyType])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_list


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_COMMA_SEP : JV := (<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "COMMA_SEP")
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.getField this "currentIndex"))) then break
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.aget (<- JR.getField this "objectArray") l_index) "toString_0" #[])])
            let _ := (<- JR.call l_stringBuffer "append_1" #[l_COMMA_SEP])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_objectArray : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "objectArray" l_objectArray
    pure this

initialize JR.registerClass {
    name := "BasicArrayList",
    javaName := "org.allbinary.util.BasicArrayList",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("arrayUtil", JV.null), ("objectArray", JV.null), ("currentIndex", (JV.int 0))],
    statics := #[("SIZE", (JV.str ", Size: "))],
    methods := #[
        ("addAt_2", #["int", "Any"], false, m_addAt_2), 
        ("add_1", #["Any"], false, m_add_1), 
        ("removeAt_1", #["int"], false, m_removeAt_1), 
        ("remove_1", #["Any"], false, m_remove_1), 
        ("removeAll2_1", #["BasicArrayList"], false, m_removeAll2_1), 
        ("addAll2_1", #["BasicArrayList"], false, m_addAll2_1), 
        ("addAllList_1", #["BasicArrayList"], false, m_addAllList_1), 
        ("addAll_1", #["AnyArr"], false, m_addAll_1), 
        ("ensureCapacity_1", #["int"], false, m_ensureCapacity_1), 
        ("trimToSize_0", #[], false, m_trimToSize_0), 
        ("indexOf_1", #["Any"], false, m_indexOf_1), 
        ("lastIndexOf_1", #["Any"], false, m_lastIndexOf_1), 
        ("get_1", #["int"], false, m_get_1), 
        ("set_2", #["int", "Any"], false, m_set_2), 
        ("clear_0", #[], false, m_clear_0), 
        ("size_0", #[], false, m_size_0), 
        ("isEmpty_0", #[], false, m_isEmpty_0), 
        ("contains_1", #["Any"], false, m_contains_1), 
        ("toArray_0", #[], false, m_toArray_0), 
        ("toArrayType_1", #["AnyArr"], false, m_toArrayType_1), 
        ("clone_0", #[], false, m_clone_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_1", #["AnyArr"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicArrayList


