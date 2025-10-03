open Ppxlib

let identifier = Longident.Lident "mod"
[%%ignore]

Format.asprintf "%a" Pprintast.longident identifier
[%%expect_in <= 5.1 {|
- : string = "mod"
|}]
[%%expect_in >= 5.2 {|
- : string = "\\#mod"
|}]
