"
" Vim syntax file
" Language: Flow Cadence
" Maintainer: Yaz Khoury
" Latest Revision: February 27, 2021
" Filenames: *.cdc
"

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword cadenceStatement pub struct resource post emit self as 
syn keyword cadenceStatement let import fun return access init pre from 
syn keyword cadenceStatement var 
syn keyword cadenceConditional if else
" syn keyword cadenceOperator and in not or
syn keyword cadenceBoolean true false
syn keyword cadenceNil nil 
syn keyword cadenceType Int Int8 Int16 Int32 Int64 Int128 Int256
syn keyword cadenceType UInt UInt8 UInt16 UInt32 UInt64 UInt128 UInt256
syn keyword cadenceType Bool
syn keyword cadenceType Word8 Word16 Word32 Word64
syn keyword cadenceType String 
syn keyword cadenceType Fix64 UFix64 
syn keyword cadenceType Address
syn keyword cadenceType AnyStruct AnyResource
syn keyword cadenceType Never
syn keyword cadenceTodo TODO FIXME NOTE contained

"Functions
syn match cadenceFunction "[a-zA-Z_][a-zA-Z0-9_]*" display contained

syn match cadenceComment "//.*$" contains=cadenceTodo

"Literals
syn match cadenceNumber "\<\d\>" display
syn match cadenceNumber "\<[1-9]\d\+\>" display
syn match cadenceNumberError "\<0\d\+\>" display
syn match cadenceAddress "\<0x\x\{40}\>" display
syn match cadenceAddressError "\<0x\x\{0,39}\>" display
syn match cadenceAddressError "\<0x\x\{41,}\>" display
syn match cadenceAddressError "\<0x\x*\X\+.\+\>" display
syn match cadenceDecimal "\<\d*\.\d\+\>" display

"String
syn match cadenceString +".\{-}"+ display
syn match cadenceString +'.\{-}'+ display

hi link cadenceStatement Statement
hi link cadenceConditional Conditional
hi link cadenceRepeat Repeat
hi link cadenceOperator Operator
hi link cadenceBoolean Boolean
hi link cadenceDecorator Define
hi link cadenceDecoratorName Function
hi link cadenceComment Comment
hi link cadenceTypes Type
hi link cadenceNumber Number
hi link cadenceAddress Number
hi link cadenceAddressError Error
hi link cadenceDecimal Float
hi link cadenceFunction Function
hi link cadenceBuiltin Function
