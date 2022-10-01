soyop return $iif($me isop $chan,$m(control),$iif($me ishelp $chan,$m(control),$iif($me isowner $chan,owner)))
ipef if (** isin $address($$1,2)) || (xx. isin $address($$1,2)) || ($right($address($$1,2),2) == .x) || ($right($address($$1,2),2) == xx) || ($address($$1,2) == *!*@0.0.0.0 ) { return falsa }
ipef2 if ( ** isin $$1) || (xx. isin $$1) || ($right($$1,2) == .x) || ($right($$1,2) == xx) || ($$1 == 0.0.0.0) || ($len($$1) < 2) { return falsa }


CUAGr {
  drawrect -rnd $1 $gettok(%gui.cc,17,44) 1 $2 $3 $4 $5 %skinr %skinr
  drawrect -rnd $1 $gettok(%gui.cc,16,44) 1 $calc($2 + 1) $calc($3 + 1) $4 $5 %skinr %skinr
  if ($6) {
    var %an = $calc($width($6-,Verdana,9,0,0) + 12) , %x = $calc($2 + 6) , %y = $calc($3 - 6)
    drawrect -dfrn $1 $gettok(%gui.cc,20,44) 1 %x %y %an 12 %skinr %skinr
    drawrect -drn $1 $gettok(%gui.cc,16,44) 1 %x %y %an 12 %skinr %skinr
    drawtext -rcn $1 $gettok(%gui.cc,19,44) Verdana 9 $calc($2 + 13) $calc($3 - 6) 999 14 $6-
    drawtext -rcn $1 $gettok(%gui.cc,18,44) Verdana 9 $calc($2 + 12) $calc($3 - 7) 999 14 $6- 
  }
}

KUA {
  if $8 != - drawrect -frn $1 $8 1 $2 $3 $4 $5
  var %c35 = $calc($3 + $5) | var %c24 = $calc($2 + $4)
  drawline -rn $1 $7 1 $2 %c35 %c24 %c35 %c24 $3
  drawline -rn $1 $6 1 $2 %c35 $2 $3 %c24 $3
  if ($9) {
    var %an = $calc($width($9-,Verdana,9,0,0) + 12) , %x = $calc($2 + 6) , %y = $calc($3 - 6)
    drawrect -dfrn $1 $gettok(%gui.cc,20,44) 1 %x %y %an 12 %skinr %skinr
    drawrect -drn $1 $gettok(%gui.cc,16,44) 1 %x %y %an 12 %skinr %skinr
    drawtext -rcn $1 $gettok(%gui.cc,19,44) Verdana 9 $calc($2 + 13) $calc($3 - 6) 999 14 $9-
    drawtext -rcn $1 $gettok(%gui.cc,18,44) Verdana 9 $calc($2 + 12) $calc($3 - 7) 999 14 $9- 
  }
}

CUA {
  drawrect -rnd $1 $7 1 $calc($2 + 1) $calc($3 + 1) $4 $5 %skinr %skinr
  drawrect -rndf $1 $6 1 $2 $3 $4 $5 %skinr %skinr
  drawrect -rndf $1 $8 1 $calc($2 + 1) $calc($3 + 1) $calc($4 - 1) $calc($5 - 1) %skinr %skinr
  if ($9) {
    var %an = $calc($width($9-,Verdana,9,0,0) + 12) , %x = $calc($2 + 6) , %y = $calc($3 - 6)
    drawrect -dfrn $1 $gettok(%gui.cc,20,44) 1 %x %y %an 12 %skinr %skinr
    drawrect -drn $1 $gettok(%gui.cc,16,44) 1 %x %y %an 12 %skinr %skinr
    drawtext -rcn $1 $gettok(%gui.cc,19,44) Verdana 9 $calc($2 + 13) $calc($3 - 6) 999 14 $9-
    drawtext -rcn $1 $gettok(%gui.cc,18,44) Verdana 9 $calc($2 + 12) $calc($3 - 7) 999 14 $9- 
  }
}

OPT {
  ;  drawtext -rcn $1 %gui.t verdana 9 $calc($2 + 18) $calc($3 + 1) 999 99 $5-
  drawtext -rnb $1 %gui.t $getdot($1,$2,$3) verdana 9 $calc($2 + 18) $calc($3 + 1) $5-
  if $left($4,1) == $chr(35) { var %var = $group($gettok($4,1,47)) }
  else { var %var = % [ $+ [ $gettok($4,1,47) ] ] }
  if ( %var == on ) { drawpic -cnt $1 65280 $2 $3 16 0 16 16 " $+ $mircdirskin\ $+ %skin $+ \opt.bmp" }
  else { drawpic -cnt $1 65280 $2 $3 0 0 16 16 " $+ $mircdirskin\ $+ %skin $+ \opt.bmp" }
}

GTX {
  cua $$1 $2 $3 $4 15 %gui.t2 %gui.t3 %gui.t1
  if % [ $+ [ $5 ] ] != $null {
    drawtext -rcnpb $$1 %gui.t4 %gui.t6 Verdana 9 $calc($2 + 5) $calc($3 + 1) $calc($4 - 10) 14 % [ $+ [ $5 ] ]
  }
  if $6 != $null {
    ;    if $left($6,1) == ! { drawtext -rn $$1 %gui.t5 Verdana 9 $2 $calc($3 - 15) $mid($6-,2,100) | return }
    ;    drawtext -rn $$1 %gui.t5 Verdana 9 $calc($2 - $width($6-,Verdana,9,0,0) -2 ) $calc($3 + 1) $6-
    if $left($6,1) == ! { drawtext -rnb $$1 %gui.t5 $getdot($1,$calc($2 - 1),$3) Verdana 9 $2 $calc($3 - 15) $mid($6-,2,100) | return }
    drawtext -rnb $$1 %gui.t5 $getdot($1,$calc($2 - 1),$3) Verdana 9 $calc($2 - $width($6-,Verdana,9,0,0) -2 ) $calc($3 + 1) $6-
  }
}

BOTON {
  var %bancho = $width($6-,Verdana,9,1,0) , %btexp = $calc((($4 + 18) / 2) - (%bancho / 2))
  drawpic -cnt $1 65280 $2 $3 197 0 12 24 %gui.t8
  drawpic -cnts $1 65280 $calc($2 + 12) $3 $calc($4 - 8) 24 210 0 1 24 %gui.t8
  drawpic -cnt $1 65280 $calc($2 + $4 + 4) $3 212 0 12 24 %gui.t8
  drawtext -ron $1 %gui.t7 Verdana 9 $calc($2 + %btexp) $calc($3 + 6) $6-
  drawtext -ron $1 %gui.t6 Verdana 9 $calc($2 + %btexp - 1) $calc($3 + 5) $6-
}

BOTONp {
  var %bancho = $width($6-,Verdana,9,1,0) , %btexp = $calc((($4 + 18) / 2) - (%bancho / 2)) , %bm = " $+ $mircdirskin\ $+ %skin $+ \Opt.bmp"
  drawpic -cnt $1 65280 $2 $3 225 0 12 24 %bm
  drawpic -cnts $1 65280 $calc($2 + 12) $3 $calc($4 - 8) 24 238 0 1 24 %bm
  drawpic -cnt $1 65280 $calc($2 + $4 + 4) $3 240 0 12 24 %bm
  drawtext -ron $1 $gettok(%gui.cc,14,44) Verdana 9 $calc($2 + %btexp - 1) $calc($3 + 5) $6-
  drawtext -ron $1 $gettok(%gui.cc,13,44) Verdana 9 $calc($2 + %btexp - 2) $calc($3 + 4) $6-
}

GCB {
  cua $1 $2 $3 $4 14 %gui.t3 %gui.t2 %gui.t1
  drawpic -cnt $$1 65280 $calc($2 + $4 - 6) $3 253 0 16 16 " $+ $mircdirskin\ $+ %skin $+ \opt.bmp"
  if % [ $+ [ $5 ] ] != $null {
    drawtext -rcn $$1 %gui.t4 Verdana 9 $calc($2 + 5) $calc($3 + 1) $calc($4 - 12) 15 % [ $+ [ $5 ] ]
  }
  var %gcbt = $gettok($1-,2,31)
  if %gcbt != $null {
    ;    if $left(%gcbt,1) == ! { drawtext -rn $1 %gui.t5 Verdana 9 $2 $calc($3 - 15) $mid(%gcbt,2,100) | return }
    ;    drawtext -rn $1 %gui.t5 Verdana 9 $calc($2 - $width(%gcbt,Verdana,9,0,0) -2 ) $calc($3 + 1) %gcbt
    if $left(%gcbt,1) == ! { drawtext -rnb $1 %gui.t5 $getdot($1,$calc($2 - 1),$3) Verdana 9 $2 $calc($3 - 15) $mid(%gcbt,2,100) | return }
    drawtext -rnb $1 %gui.t5 $getdot($1,$calc($2 - 1),$3) Verdana 9 $calc($2 - $width(%gcbt,Verdana,9,0,0) -2 ) $calc($3 + 1) %gcbt
  }
}

GUiTGRID {
  var %x = $calc($2 + 5),%y = $calc($3 - 14),%i = 1
  :L1
  var %a = $gettok($11-,%i,22) | if (!%a) return
  drawtext -rn $1 $gettok(%gui.cc2,18,44) Verdana 9 $calc(%x + 1) %y %a
  drawtext -rn $1 $gettok(%gui.cc2,17,44) Verdana 9 %x $calc(%y - 1) %a
  inc %i | var %x = $calc($gettok($10,%i,44) + $2 + 6) | goto L1
}

GUIDIBop {
  var %gtok = 1
  set %gui.t $gettok(%gui.cc,2,44)
  :L1
  var %gtoka = $gettok($2-,%gtok,124) | if %gtoka == $null { if %pulsado == op { drawline $$1 } | unset %gui.t* | return }
  opt $$1 %gtoka | inc %gtok 1 | goto L1
}

GUIpulsaop {
  var %gtok = 1
  :L1
  set %gtoka $gettok($3-,%gtok,124) | if %gtoka == $null { unset %gtok %gtoka %var | return }
  if $inrect($1,$2,$gettok(%gtoka,1,32),$gettok(%gtoka,2,32),$calc($width($gettok(%gtoka,4-99,32),verdana,9,0,0) + 18),16) == $true { 
    %guidrop = opcion $active %gtok $gettok(%gtoka,1,32) $gettok(%gtoka,2,32) $calc($width($gettok(%gtoka,4-99,32),verdana,9,0,0) + 18) 16 $replace($gettok(%gtoka,3,32),_,$chr(32))
    drawtext -rc $active $gettok(%gui.cc,5,44) verdana 9 $calc($gettok(%gtoka,1,32) + 18) $calc($gettok(%gtoka,2,32) + 1) 999 99 $gettok(%gtoka,4-99,32) | sss clik
    .timerGUIDROP -mo 0 300 guidrop sesale
    return
  }
  inc %gtok 1 | goto L1
}

GUIDIBtx {
  var %gtok = 1
  set %gui.t1 $gettok(%gui.cc,3,44) | set %gui.t2 $gettok(%gui.cc,4,44) | set %gui.t3 $gettok(%gui.cc,5,44) | set %gui.t4 $gettok(%gui.cc,6,44) | set %gui.t5 $gettok(%gui.cc,7,44) | set %gui.t6 $gettok(%gui.cc,3,44)
  :L1
  var %gtoka = $gettok($2-,%gtok,124) | if %gtoka == $null { unset %gui.t* | return }
  gtx $$1 %gtoka | inc %gtok 1 | goto L1
}

GUIpulsatx {
  set %gtok 1 | unset %pulsado
  :L1
  set %gtoka $gettok($3-,%gtok,124) | if %gtoka == $null { unset %gtok %gtoka | return }
  if $inrect($1,$2,$gettok(%gtoka,1,32),$gettok(%gtoka,2,32),$gettok(%gtoka,3,32),15) == $true {
    CIERRAEDIGUI $editbox(@edita)
    %edita.tab = %gtok $active
    set %edig.v $active | set %edig.edita $gettok(%gtoka,4,32)
    window -eh +d @edita $calc($gettok(%gtoka,1,32) + $window($active).x + 3) $calc($gettok(%gtoka,2,32) + $window($active).y + $window($active).h - $window($active).dh + 1) $calc($gettok(%gtoka,3,32) - 4) 14 Verdana 9
    editbox @edita % [ $+ [ $gettok(%gtoka,4,32) ] ]
    window -a @edita
    .timerEDIGUI -om 0 50 edigui
    set %pulsado tx | sss clik | return
  }
  inc %gtok 1 | goto L1
}

EDIGUI {
  if ($active != @edita) { window -c @edimuestra | CIERRAEDIGUI $editbox(@edita) }
  if ($window(@edimuestra).state != normal) {
    if ( isin $editbox(@edita)) || ( isin $editbox(@edita)) { window -c @edimuestra | window -k +d @edimuestra 1000 $window(@barra).h 500 16 Verdana 9 | window -a @edita }
  }
  if ($window(@edimuestra).state == normal) echo @edimuestra  $editbox(@edita)
  if %edig.edita != $null { set % $+ %edig.edita $editbox(@edita) }
}

CIERRAEDIGUI {
  if (%editg.edita) { set % $+ %edig.edita $1- }
  %pulsa.tx = %edig.edita
  if ($window(%edig.v).state == normal) { guidibtx %edig.v % [ $+ [ $remove(%edig.v,@) ] $+ .tx ] }
  var %onedit = onedit. $+ %edig.v | if ($isalias(%onedit)) { %onedit %edig.edita }
  .timerEDIGUI off | window -c @edita | if (%edig.v) && ($window(%edig.v)) drawline %edig.v | unset %edig.*
  window -c @edimuestra
}

GUIDIBbt {
  if $window($$1).state == $null return
  var %gtok = 1
  set %gui.t6 $gettok(%gui.cc,13,44) | set %gui.t7 $gettok(%gui.cc,14,44)
  set %gui.t8 " $+ $mircdirskin\ $+ %skin $+ \Opt.bmp"
  :L1
  var %gtoka = $gettok($2-,%gtok,124) | if (!%gtoka) { drawline $$1 | unset %gui.t* | return }
  boton $$1 %gtoka | inc %gtok | goto L1
}

GUIpulsabt {
  var %gtok = 1
  :L1
  var %gtoka = $gettok($3-,%gtok,124) , %bancho = $calc($gettok(%gtoka,3,32) + 16) | if %gtoka == $null { unset %gtok %gtoka | return }
  if ($inrect($1,$2,$gettok(%gtoka,1,32),$gettok(%gtoka,2,32),%bancho,22)) {
    %guidrop = boton $active %gtok $gettok(%gtoka,1,32) $gettok(%gtoka,2,32) %bancho 22 $replace($gettok(%gtoka,4,32),_,$chr(32))
    botonp $active %gtoka | drawline $active | sss clik
    .timerGUIDROP -mo 0 300 guidrop sesale
  }
  inc %gtok 1 | goto L1
}

GUIDROP {
  var %a = %guidrop , %t = $gettok(%a,1,32)
  if $1 == sesale {
    if !$inrect($mouse.x,$mouse.y,$gettok(%a,4,32),$gettok(%a,5,32),$gettok(%a,6,32),$gettok(%a,7,32)) { 
      .timerGUIDROP off | unset %guidrop 
      if %t == boton { guidibbt $gettok(%a,2,32) % [ $+ [ $remove($gettok(%a,2,32),@) $+ .bt ] ] }
      if %t == opcion { guidibop $gettok(%a,2,32) % [ $+ [ $remove($gettok(%a,2,32),@) $+ .op ] ] | drawline $gettok(%a,2,32) }
    }
    return
  }
  .timerguidrop off 
  unset %guidrop
  if %t == boton {
    guidibbt $gettok(%a,2,32) % [ $+ [ $remove($gettok(%a,2,32),@) $+ .bt ] ]
    $gettok(%a,8-,32)
    return
  }
  if %t == opcion {
    if $left($gettok(%a,8,32),1) == $chr(35) {
      var %var = $gettok($gettok(%a,8,32),1,47) | if $group(%var) != on { .enable %var } | else { .disable %var }
    }
    else {
      var %var = % [ $+ [ $gettok($gettok(%a,8,32),1,47) ] ] | if %var != on { set % [ $+ [ $gettok($gettok(%a,8,32),1,47) ] ] on } | else { set % [ $+ [ $gettok($gettok(%a,8,32),1,47) ] ] off }
    }
    var %gui.ex = $replace($gettok($gettok(%a,8-,32),2,47),_,$chr(32)) | if %gui.ex != $null .timer -m 1 200 %gui.ex
    guidibop $gettok(%a,2,32) % [ $+ [ $remove($gettok(%a,2,32),@) $+ .op ] ] | drawline $gettok(%a,2,32)
    if ($isalias(onOPT. $+ $gettok(%a,2,32))) { onOPT. $+ $gettok(%a,2,32) $gettok(%a,8,32) }
    return
  }
}


GUIDIBcb {
  var %gtok = 1
  set %gui.t1 $gettok(%gui.cc,3,44) | set %gui.t2 $gettok(%gui.cc,4,44) | set %gui.t3 $gettok(%gui.cc,5,44) | set %gui.t4 $gettok(%gui.cc,6,44) | set %gui.t5 $gettok(%gui.cc,7,44)
  :L1
  var %gtoka = $gettok($2-,%gtok,124) | if %gtoka == $null { unset %gui.t* | return }
  gcb $$1 %gtoka | inc %gtok 1 | goto L1
}

GUIpulsaCB {
  var %gtok = 1
  :L1
  set %gtoka $gettok($3-,%gtok,124) | if %gtoka == $null { unset %gtok %gtoka | return }
  if $inrect($1,$2,$gettok(%gtoka,1,32),$gettok(%gtoka,2,32),$calc($gettok(%gtoka,3,32) + 10),15) == $true {
    kombo $calc($gettok(%gtoka,1,32) + $window($active).x + 0) $calc($gettok(%gtoka,2,32) + $window($active).y + $window($active).h - $window($active).dh + 15) $calc($gettok(%gtoka,3,32) + 10) $gettok(%gtoka,4,32) $gettok($gettok(%gtoka,5-,32),1,31)
    sss clik | return
  }
  inc %gtok 1 | goto L1
}


CUAG {
  var %cuag1 = $6 | if %cuag1 == gui { %cuag1 = $gettok(%gui.cc,15,44) }
  cua $1 $2 $3 $4 $5 $gettok(%gui.cc,16,44) $gettok(%gui.cc,17,44) %cuag1 $7-
}
CUAGi {
  var %cuag1 = $6 | if %cuag1 == gui { %cuag1 = $gettok(%gui.cc,15,44) }
  cua $1 $2 $3 $4 $5 $gettok(%gui.cc,17,44) $gettok(%gui.cc,16,44) %cuag1 $7-
}
CUAR {
  var %cuag1 = $6 | if %cuag1 == gui { %cuag1 = $gettok(%gui.cc,15,44) }
  Kua $1 $2 $3 $4 $5 $gettok(%gui.cc,16,44) $gettok(%gui.cc,17,44) %cuag1 $7-
}
CUARi {
  var %cuag1 = $6 | if %cuag1 == gui { %cuag1 = $gettok(%gui.cc,15,44) }
  kua $1 $2 $3 $4 $5 $gettok(%gui.cc,17,44) $gettok(%gui.cc,16,44) %cuag1 $7-
}

PESTANA {
  var %b = $1 , %w = $1 , %a = [ % $+ [ $2 ] ] | tokenize 32 %a
  var %x = $1 , %y = $calc($2 - 20) , %c4 = $gettok(%gui.cc,8,44)
  var %c0 = $getdot(%w,$calc(%x + 2),$calc(%y + 22)) , %c00 = $calc(%c0 - (65793 * 16)) | if %c00 < 0 { %c00 = 0 } | var %c00b = $calc(%c00 + (65793 * 24))
  var %i = 1 | :L1
  var %t = $gettok($5-,%i,22)
  var %h = $calc($width(%t,Verdana,9,1,0) + 15)
  if %i == $3 { kua %w %x %y %h 20 $gettok(%gui.cc,16,44) $gettok(%gui.cc,17,44) %c0  | drawline -rn %w %c0 1 %x $calc(%y + 20) $calc(%h + %x + 1) $calc(%y + 20) | drawtext -ron %w %c4 Verdana 9 $calc(%x + 8) $calc(%y + 4) %t }
  else { kua %w %x %y %h 20 %c00b $gettok(%gui.cc,17,44) %c00 | drawline -rn %w $gettok(%gui.cc,16,44) 1 %x $calc(%y + 20) $calc(%h + %x + 1) $calc(%y + 20) | drawtext -rn %w %c4 Verdana 9 $calc(%x + 8) $calc(%y + 5) %t }
  inc %x $calc(%h + 1) | inc %i | if (%i <= $numtok($5-,22)) goto L1
}


GPESTANA {
  var %b = $1 | var %a = [ % $+ [ $1 ] ] | tokenize 32 %a
  var %x = $1 | var %y = $calc($2 - 20) | if ($mouse.y < %y) || ($mouse.y > $calc(%y + 20)) return
  var %i = 1 | :L1
  var %t = $gettok($5-,%i,22)
  var %h = $calc($width(%t,Verdana,9,1,0) + 15)
  if $inrect($mouse.x,$mouse.y,%x,%y,%h,20) { 
    set % $+ %b $1 $2 %i $4-
    pestana $active %b | drawline $active
    $4 %i    
    %i = 99
  }
  inc %x $calc(%h + 1) | inc %i | if (%i <= $numtok($5-,22)) goto L1
}

GUILISTA { 
  var %a = [ % $+ [ $2 ] ] , %s6 = $sline($gettok(%a,8,32),1).ln | if (%s6 == $null) { %s6 = 0 } | %a = $puttok(%a,%s6,6,32) | set % $+ $2 %a
  var %i = $gettok(%a,5,32) | if %i < 1 { %i = 1 | set % $+ $2 $gettok(%a,1-4,32) %i $gettok(%a,6-10,32) }
  var %il = $line($gettok(%a,8,32),0) | if ($calc($gettok(%a,4,32) + %i - 1) > %il) && (%il > 0) { 
    %i = $calc($line($gettok(%a,8,32),0) - $gettok(%a,4,32) + 1) | if %i < 1 { %i = 1 }
    set % $+ $2 $gettok(%a,1-4,32) %i $gettok(%a,6-10,32)
  }
  var %b = $1 , %w = $1 , %a = [ % $+ [ $2 ] ] | tokenize 32 %a
  var %x = $1 , %y = $2 | inc %x 4 | inc %y 1

  if (%gui.slist == 2) { cua %w $1 $calc($2 - 2) $calc($3 + 20) $calc($4 * 14 + 4) $gettok(%gui.cc,4,44) $gettok(%gui.cc,5,44) $gettok(%gui.cc,3,44) }
  else { cua %w $1 $calc($2 - 2) $3 $calc($4 * 14 + 3) $gettok(%gui.cc,4,44) $gettok(%gui.cc,5,44) $gettok(%gui.cc,3,44) }

  var %i = $5 , %n = $4 , %an = $calc($3 - 6) , %co = $gettok(%gui.cc,6,44) , %cof = $gettok(%gui.cc,3,44) , %coft = $gettok(%gui.cc2,8,44) , %cosel = $gettok(%gui.cc2,7,44)
  if ($9 == arbol) {
    var %xta = $calc(%x + 28) , %anta = $calc(%an - 28)
    while (%n > 0) {
      var %t = $line($8,%i) | if (!%t) { %n = 0 | goto L1a }
      if (%i == $6) { 
        if ($gettok(%t,2,8) == i) { drawrect -frnd %w %cosel 1 $calc(%x + 26) %y $calc($3 - 32) 13 6 6 | drawtext -cnr %w %coft verdana 9 %xta %y %anta 14 $strip($gettok(%t,3,8)) | if ($gettok(%t,6,8) > 0) { drawpic -cnt %w 65280 $calc(%xta - 16) %y $calc(($gettok(%t,6,8) - 1) *  14) 0 14 14 " $+ $mircdirskin\ $+ %skin $+ \miniconos.bmp" } }
        else { drawrect -frnd %w %cosel 1 $calc(%x + 14) %y $calc($3 - 20) 13 6 6 | drawtext -cnr %w %coft verdana 9 $calc(%x + 16) %y $calc(%an - 16) 14 $strip($gettok(%t,3,8)) | if ($gettok(%t,6,8) > 0) { drawpic -cnt %w 65280 %x %y $calc(($gettok(%t,6,8) - 1) *  14) 0 14 14 " $+ $mircdirskin\ $+ %skin $+ \miniconos.bmp" } }
      }
      else { 
        if ($gettok(%t,2,8) == i) { drawtext -cnrpb %w %co %cof Verdana 9 %xta %y %anta 14 $gettok(%t,3,8) | if ($gettok(%t,6,8) > 0) { drawpic -cnt %w 65280 $calc(%xta - 16) %y $calc(($gettok(%t,6,8) - 1) *  14) 0 14 14 " $+ $mircdirskin\ $+ %skin $+ \miniconos.bmp" } }
        else { drawtext -cnrpb %w %co %cof verdana 9 $calc(%x + 16) %y $calc(%an - 16) 14 $gettok(%t,3,8) | if ($gettok(%t,6,8) > 0) { drawpic -cnt %w 65280 %x %y $calc(($gettok(%t,6,8) - 1) *  14) 0 14 14 " $+ $mircdirskin\ $+ %skin $+ \miniconos.bmp" } }
      }
      inc %i | inc %y 14 | dec %n
      :L1a
    }
  } 
  if ($9) && ($9 != arbol) {
    var %zt = $9 $+ , $+ $3 , %zc = 1 , %zco
    while ($gettok(%zt,$calc(%zc + 1),44)) { %zco = %zco $+ $calc($gettok(%zt,$calc(%zc + 1),44) - $gettok(%zt,%zc,44) - 6) $+ , | inc %zc }

    while (%n > 0) {
      var %t = $line($8,%i) | if (!%t) { %n = 0 | goto L1b }
      if (%i == $6) { 
        drawrect -frnd %w %cosel 1 $calc(%x - 1) %y $calc($3 - 4) 13 6 6
        var %cotab = 1 | : LT2 | var %xx = $gettok($9,%cotab,44) , %lin = $gettok(%t,%cotab,8)
        if (%lin) && (%xx != $null) {
          if (#/# isin %lin) { %tmp.extratab = $7 | extratab %w $calc(%x + %xx) %y $calc(%an - %xx) $mid(%lin,4,999) }
          else { drawtext -cnr %w %coft Verdana 9 $calc(%x + %xx) %y $gettok(%zco,%cotab,44) 14 $strip(%lin) }
          inc %cotab | goto LT2
        }
      }
      else { 
        var %cotab = 1 | : LT1 | var %xx = $gettok($9,%cotab,44) , %lin = $gettok(%t,%cotab,8)
        if (%lin) && (%xx != $null) {
          if (#/# isin %lin) { %tmp.extratab = $7 | extratab %w $calc(%x + %xx) %y $calc(%an - %xx) $mid(%lin,4,999) }
          else { drawtext -cnrpb %w %co %cof Verdana 9 $calc(%x + %xx) %y $gettok(%zco,%cotab,44) 14 %lin }
          inc %cotab | goto LT1
        }
      }
      inc %i | inc %y 14 | dec %n
      :L1b
    }
    var %cotab = 2 | var %cotabc = $gettok(%gui.cc,15,44) | : LT3 | var %xx = $gettok($9,%cotab,44)
    if (%xx != $null) { drawline -rn %w %cotabc 1 $calc($1 + %xx) $2 $calc($1 + %xx) $calc($2 + 1 + $4 * 14) | inc %cotab | goto LT3 }
    var %xx = $calc($1 + 1) | var %yy = $calc($2 + 14) | var %yyi = $calc($4 - 1) | while %yyi > 0 {
      drawline -rn %w %cotabc 1 %xx %yy $calc($1 + $3) %yy | inc %yy 14 | dec %yyi
    }
  }
  if (!$9) {
    while (%n > 0) {
      var %t = $line($8,%i) | if (!%t) { %n = 0 | goto L1c }
      if (%i == $6) { drawrect -frnd %w %cosel 1 $calc(%x - 1) %y $calc($3 - 4) 13 6 6 | drawtext -cnr %w %coft Verdana 9 %x %y %an 14 $strip(%t) }
      else { drawtext -cnrpb %w %co %cof Verdana 9 %x %y %an 14 %t }
      inc %i | inc %y 14 | dec %n
      :L1c
    }
  }
  var %x = $calc($1 + $3 + 1) , %fle = " $+ $mircdirskin\ $+ %skin $+ \opt.bmp"
  drawpic -cnt %w 65280 $calc(%x + 1) $2 32 0 16 16 %fle
  drawpic -cnt %w 65280 $calc(%x + 1) $calc(($4 * 14) + $2 - 15) 48 0 16 16 %fle
  var %l = $calc($4 * 14 - 34) , %y = $calc($2 + 17)
  inc %x

  if (%gui.slist == 0) { cua %w %x %y 15 %l $gettok(%gui.cc,4,44) $gettok(%gui.cc,5,44) $gettok(%gui.cc,3,44) }
  else { 
    if (%gui.slist == 1) { drawrect -nfr %w $getdot(%w,$calc(%x - 1),%y) 1 %x %y 15 %l }
    cua %w $calc(%x + 6) %y 3 %l $gettok(%gui.cc2,5,44) $gettok(%gui.cc2,6,44) $gettok(%gui.cc2,4,44)
  }
  dec %l 3
  var %py = $calc((%l / $line($8,0)) * ($5 - 1))

  var %np = $calc($line($8,0) / $4) | if %np < 1 { return }
  var %p1 = $calc(%l / %np)
  cua %w $calc(%x + 2) $calc(%y + %py + 2) 11 %p1 $gettok(%gui.cc2,2,44) $gettok(%gui.cc2,3,44) $gettok(%gui.cc2,1,44)
}

GGUILISTA {
  var %click = $1 | var %b = $2 | var %w = $active | var %a = [ % $+ [ $2 ] ] | tokenize 32 %a
  if $inrect($mouse.x,$mouse.y,$1,$2,$3,$calc($4 * 14 + 1)) { 
    var %i = $int($calc(($mouse.y - $2) / 14)) | var %sel = $calc($5 + %i)
    set % $+ %b $1-5 %sel $7-
    sline $8 %sel
    guilista $active %b | drawline $active
    $gettok($replace($7,_,$chr(32)),1,22) %click %sel $line($8,%sel)
    if (*g***2 iswm $sline($8,1)) { .timerlistscroll -mo 1 500 listscroll ini $active %b $gettok($sline($8,1),1,8) }
  }
  if $inrect($mouse.x,$mouse.y,$calc($1 + $3),$2,16,16) { %tmp.arr1 = sube | listade1en1 %b $1- }
  if $inrect($mouse.x,$mouse.y,$calc($1 + $3),$calc(($4 * 14) + $2 - 15),16,16) { %tmp.arr1 = baja | listade1en1 %b $1- }
  if $inrect($mouse.x,$mouse.y,$calc($1 + $3),$calc($2 + 16),16,$calc($4 * 14 - 32)) { deslizalista %b $1- }
}

deslizalista {
  if (!$mouse.key & 1) { unset %tmp.vel | return }
  var %raja = $calc(($5 * 14) - 32)
  var %dl = $int($calc(($5 / $line($9,0)) * %raja))
  var %dy = $int($calc($3 + 16 + ((%raja / $line($9,0)) * ($6 - 1))))
  var %dr = $calc($mouse.y - %dy)
  if (%dr <= %dl) && (%dr >= 0) { 
    %tmp.arr2 = %dr | %tmp.arraja = %raja | %tmp.arrtotal = $line($9,0)
    .timerARRASTRA -m 0 10 arrastralista $1-
    return 
  }
  if (!%tmp.vel) { %tmp.vel = 500 } | else { %tmp.vel = 10 }
  if ($mouse.y < %dy) { set % $+ $1 $2-5 $calc($6 - $5) $7- | guilista $active $1 | drawline $active | .timer -m 1 %tmp.vel deslizalista $1 % [ $+ [ $1 ] ] }
  if ($mouse.y > $calc(%dy + %dl)) { set % $+ $1 $2-5 $calc($6 + $5) $7- | guilista $active $1 | drawline $active | .timer -m 1 %tmp.vel deslizalista $1 % [ $+ [ $1 ] ] }
}

arrastralista {
  if (!$mouse.key & 1) { unset %tmp.arr* | .timerarrastra off | return }
  var %y = $calc($mouse.y - %tmp.arr2) , %dy = $calc(%y - $3 - 16) , %i = $calc(%tmp.arrtotal / %tmp.arraja) , %a = $calc((%dy * %i) + 1.5)
  set % $+ $1 $2-5 $int(%a) $7- | guilista $active $1 | drawline $active
}

listade1en1 {
  if (!$mouse.key & 1) { unset %tmp.vel | return }
  if %tmp.arr1 == sube { var %i = $6 | if (%i > 1) { dec %i } }
  else { var %i = $6 | inc %i | if ($calc(%i + $5 - 1) > $line($9,0)) { %i = $calc($line($9,0) - $5 + 1) | if %i < 1 { %i = 1 } } }
  set % $+ $1 $2-5 %i $7-
  guilista $active $1 | drawline $active
  if (!%tmp.vel) { %tmp.vel = 500 } | else { %tmp.vel = 50 }
  .timerGGGL -m 1 %tmp.vel listade1en1 $1 % [ $+ [ $1 ] ]
}

GGGUILISTA {
  var %i = $1 | var %w = $2 | var %b = $3 | var %c = $4 | var %a = [ % $+ [ $3 ] ] | tokenize 32 %a
  if %i == reset {
    set % $+ %b $1-4 1 0 $7-
    guilista %w %b | drawline %w
    sline -r $8
  }
  if %i == sel {
    set % $+ %b $1-4 1 %c $7-
    guilista %w %b | drawline %w
    sline $8 %c
  }
}

SLINEA return $line($gettok($1-,8,32),$gettok($1-,6,32))
SLINEAN return $gettok($1-,6,32)

EXTRATAB {
  if (.ico isin $5-) || (.exe isin $5-) { 
    var %ff = $5- | if $left(%ff,5) == skin- { %ff = skin\ $+ %skin $+ \ $+ %ff } | if $exists(%ff) { drawpic -nsm $1 $2 $3 12 12 " $+ %ff $+ " }
    return
  }
  if (.bmp isin $5-) || (.png isin $5-) || (.jpg isin $5-) { 
    var %ff = $5- | if $left(%ff,5) == skin- { %ff = skin\ $+ %skin $+ \ $+ %ff } | if $exists(%ff) { drawpic -nstm $1 65280 $2 $3 12 12 " $+ %ff $+ " }
    return
  }
  if ($5 == on) { drawpic -cnt $1 65280 $2 $3 $calc(10 * 14) 0 14 14 " $+ $mircdirskin\ $+ %skin $+ \miniconos.bmp" }
  if ($5 == off) { drawpic -cnt $1 65280 $2 $3 $calc(11 * 14) 0 14 14 " $+ $mircdirskin\ $+ %skin $+ \miniconos.bmp" }
  if ($mouse.key == 1) {
    if ($inrect($mouse.x,$mouse.y,$2,$3,14,14)) { 
      if (%tmp.1onoff != $mouse.y) { 
        if ($gettok(%tmp.extratab,2,22)) { $ifmatch $1- }
        set -u1 %tmp.1onoff $mouse.y 
        sss clik
      } 
    }
  }
  unset %tmp.extratab
}

DIBUTEXT {
  var %i = 1 , %a = $remove($1,n) , %ii = $wrap($7-,$3,$4,%a,0) , %y = $6 , %al = $calc($4 * 2) , %cf = $getdot($2,$5,$6) , %co = $gettok(%gui.cc,2,44)
  while (%i <= %ii) {
    drawtext -npbr $2 %co %cf $3 $4 $5 %y $wrap($7-,$3,$4,%a,%i) | inc %y $4 | inc %y 2 | inc %i
  }
  if (n !isin $1) drawline $2
}

GUIWIN {
  var %tim = $ticks

  if ($2 isnum) { window -kpBhwz +d $1 $2-5 @guimgen arial 12 }
  else if ($2 != x) { window -kpBhwz +d $1 $cvent($4,$5) @guimgen arial 12 }

  drawrect -frn $1 $gettok(%gui.cc,1,44) 1 0 0 $4 $5
  if (%skintile) && (%skinbtex == on) { drawpic $gettok(%skintile,1,32) $+ n $1 0 0 $4 $5 " $+ $mircdirskin\ $+ %skin $+ \ $+ $gettok(%skintile,2-99,32) $+ " }
  ; else drawrect -frn $1 $gettok(%gui.cc,1,44) 1 0 0 $4 $5

  var %bm = " $+ $mircdirskin\ $+ %skin $+ \Opt.bmp"

  drawpic -cnt $1 65280 0 0 65 0 32 32 %bm
  var %t = $calc($4 - 128) | drawpic -cnst $1 65280 32 0 %t 32 98 0 1 32 %bm
  drawpic -cnt $1 65280 $calc($4 - 96) 0 100 0 96 32 %bm

  drawpic -cnst $1 65280 0 32 8 $calc($5 - 48) 0 17 8 1 %bm
  drawpic -cnst $1 65280 $calc($4 - 8) 32 8 $calc($5 - 48) 9 17 8 1 %bm

  drawpic -cnt $1 65280 0 $calc($5 - 16) 32 16 16 16 %bm
  drawpic -cnst $1 65280 16 $calc($5 - 8) $calc($4 - 32) 8 0 19 1 8 %bm

  if (% [ $+ [ $remove($1,@) $+ [ .skla ] ] ]) { drawpic -cnt $1 65280 $calc($4 - 32) $calc($5 - 32) 270 0 32 32 %bm }
  else drawpic -cnt $1 65280 $calc($4 - 16) $calc($5 - 16) 48 16 16 16 %bm

  if ($6) { drawtext -rcon $1 $gettok(%gui.cc,23,44) Arial 11 34 $calc($gettok(%gui.cc,24,44) + 1) %t 16 $6- | drawtext -rcon $1 $gettok(%gui.cc,22,44) Arial 11 33 $gettok(%gui.cc,24,44) %t 16 $6- }
  .timer -m 3 100  window -r $1
}

TITULA {
  var %a = $calc($window($1).w - 128)
  var %bm = " $+ $mircdirskin\ $+ %skin $+ \Opt.bmp" | if (%skinv < 4) { var %bm = " $+ $mircdirskin\base\Opt_alt.bmp" }
  drawpic -cnst $1 65280 32 0 %a 32 98 0 1 32 %bm
  drawtext -rcon $1 $gettok(%gui.cc,23,44) Arial 11 34 $calc($gettok(%gui.cc,24,44) + 1) %a 16 $2- | drawtext -rcon $1 $gettok(%gui.cc,22,44) Arial 11 33 $gettok(%gui.cc,24,44) %a 16 $2-
  drawline $1
  titlebar $1 $2-
}

GUICIERRA {
  var %a = $remove($1,@) | unset % [ $+ [ %a $+ .op ] ] % [ $+ [ %a $+ .tx ] ] % [ $+ [ %a $+ .cb ] ]  % [ $+ [ %a $+ .bt ] ] % [ $+ [ %a $+ .ls* ] ] % [ $+ [ %a $+ .p�* ] ] 
  window -c $1 $+ 1
  window -c $1 $+ 2
  window -c $1 $+ 3
  window -c $1 $+ .ls1
  window -c $1 $+ .ls2
  window -c $1 $+ .ls3
  if %skinafin != on window -h $1
  .timerCIERRA $+ $1 -mo 30 20 GUICIERRA2 $1 $int($calc($window($1).h / 8))
  sss winc
}
GUICIERRA2 {
  window $1 $calc($window($1).x + $2) $window($1).y $calc($window($1).w - $2) $calc($window($1).h - $2)
  if ($window($1).h < 8) { .timerCIERRA $+ $1 off | window -c $1 | var %a = $remove($1,@) $+ .cierra | if $isalias(%a) { %a } }
}

GUIDIB {
  var %a = $remove($1,@)
  guidibop $1 % [ $+ [ %a $+ .op ] ]
  guidibtx $1 % [ $+ [ %a $+ .tx ] ]
  guidibcb $1 % [ $+ [ %a $+ .cb ] ]
  guidibbt $1 % [ $+ [ %a $+ .bt ] ]
}

WMUEVE {
  if (!%tmp.wmuevex) { %tmp.wmuevex = $2 | %tmp.wmuevey = $3 | %tmp.wmuevew = $1 | .timerWMUEVE -o 0 0 wmueve $1 }
  var %y = $calc($mouse.dy - %tmp.wmuevey) | if (%y < 0) { %y = 0 }
  window %tmp.wmuevew $calc($mouse.dx - %tmp.wmuevex) %y
  if (!$mouse.key & 1) { unset %tmp.wmueve* | .timerWMUEVE off | wmueve2 $1 }
}
WMUEVE2 if ($isalias(redim. $+ $1)) { writeini ircap.ini ww $remove($1,@) $window($1).x $window($1).y $window($1).w $window($1).h }

gui.uclick {
  if $mouse.y < 32 {
    var %a = $calc($window($active).w - 26)
    if $inrect($mouse.x,$mouse.y,%a,4,20,18) { guicierra $active | return }
    dec %a 20 | if $inrect($mouse.x,$mouse.y,%a,4,14,18) { window -n $active | return }
  }
}




SKIN {
  var %s = $mircdirskin\ $+ $1 $+ \skin.ini | if !$exists(%s) { echo -ste $logo Skin $$1 error. | return } | if ($readini $mircdirskin\ $+ $$1 $+ \skin.ini SKIN ver > 8.0) { echo -ste $logo Skin $$1 error. | return }
  drawpic -c
  %skin = $1
  var %ini = $mircdirskin\ $+ %skin $+ \skin.ini
  %bar.f = $readini %ini BAR bar
  %bar.g = $readini %ini BAR bitmap
  %bar.po = $readini %ini BAR click
  %bar.m3 = $readini %ini BAR mp
  %gui.cc = $readini %ini DIALOG rgb
  %gui.cc2 = $readini %ini DIALOG rgb2
  %skinr = $readini %ini FONDOS skinr
  %gui.slist = $readini %ini FONDOS slist
  unset %skintile | if ($readini %ini FONDOS fondogui) { %skintile = $ifmatch }

  porcentaje <ini> 3
  porcentaje Barras...

  bar
  if ($isalias(sbarra))  sbarra redib
  if $group(#paner) == on { panerini off | panerini on }

  porcentaje Fondos...

  var %b = $readini %ini FONDOS fondo | if (%b) background $gettok(%b,1,32) skin\ $+ %skin $+ \ $+ $gettok(%b,2,32) | else background -mx
  var %b = $readini %ini FONDOS ico | if (%b) background -u skin\ $+ %skin $+ \ $+ %b | else background -ux
  var %b = $readini %ini FONDOS icof | if (%b) background -l skin\ $+ %skin $+ \ $+ %b | else background -lx
  var %b = $readini %ini FONDOS icob | if (%b) background -h skin\ $+ %skin $+ \ $+ %b | else background -hx

  if %setup.skin.b != on {
    var %b = $readini %ini FONDOS status | if (%b) scon -a background $gettok(%b,1,32) skin\ $+ %skin $+ \ $+ $gettok(%b,2-9,32) | else scon -a background -sx

    remini mirc.ini background wchannel | remini mirc.ini background wquery | remini mirc.ini background wchat

    var %b1 = $readini %ini FONDOS canal , %b2 = $readini %ini FONDOS privado
    if (%b1) { var %r1 = cfnrtp | var %r1 = $mid(%r1,$calc($gettok(%b1,2,44) + 1),1) | writeini mirc.ini background wchannel %b1 }
    if (%b2) { var %r2 = cfnrtp | var %r2 = $mid(%r2,$calc($gettok(%b2,2,44) + 1),1) | writeini mirc.ini background wquery %b2 | writeini mirc.ini background wchat %b2 }
    ;center, fill, normal, stretch, tile, photo

    var %m = $scon(0) | while (%m > 0) { 
      scon %m

      var %b3 = -e $+ %r1 | var %n = $chan(0) | while (%n > 0) { if (!%b1) background -xe $chan(%n) | else background %b3 $chan(%n) $gettok(%b1,1,44) | dec %n }

      var %b3 = -e $+ %r2 | var %n = $query(0) | while (%n > 0) { if (!%b2) background -xe $query(%n) | else background %b3 $query(%n) $gettok(%b2,1,44) | dec %n }
      var %n = $chat(0) | while (%n > 0) { if (!%b2) background -xe = $+ $chat(%n) | else background %b3 = $+ $chat(%n) $gettok(%b2,1,44) | dec %n }

      dec %m 
    } 
  }
  porcentaje Temas...
  if (%setup.skin.w != off) { var %b = $copiaini($readini %ini TEMA wav $+ .ewv,[wav],ircap.ini,[wav]) }
  var %b = $readini %ini TEMA txt | if (%b) && (%setup.skin.tm != off) {
    if ($remove($findfile(skin\,$gettok($nopath(%b),1,45) $+ - $+ %idioma $+ .tti,1),$mircdir,.tti)) .timer -m 1 100 tematxt $ifmatch
    else .timer -m 1 100 tematxt %b
  }
  .signal skin %skin
  porcentaje <fin>
}

PORCENTAJE {
  if $1 == <ini> { var %a = $active | window -c @p100 | window -kpBhwzdo +dL @P100 $cvent(200,50) | %p100.total = $2 | %p100.cont = 0 | window -a @p100 | window -a $replace(%a,Status Window,"Status Window") }
  if $1 == <fin> { window -c @p100 | unset %p100.total %p100.cont | return }
  drawrect -frn @P100 $gettok(%gui.cc,1,44) 1 0 0 200 50 | cuag @p100 0 0 199 49 gui
  cuari @P100 10 26 180 10 $gettok(%gui.cc,1,44)
  if $1 != <ini> {
    inc %p100.cont
    drawrect -frn @P100 $gettok(%gui.cc,6,44) 1 14 30 $calc((172 / %p100.total) * %p100.cont) 3
    drawtext -ron @P100  $gettok(%gui.cc,6,44) Verdana 9 $calc(100 - ($width($1-,Verdana,9,1,0) / 2)) 10 $1-
  }
  drawline @p100
}

F3 {
  if $script(setup.mrc) != $null { setup.cierra | return }
  if (!%apartado) { %apartado = setGENERAL }
  if ($1) { if ($1 != $remove($active,=)) && ($replace($1-,$chr(32),$chr(44)) != $snicks(#,1)) %apartado = $1- }
  %tiksetup = $ticks | .load -rs s\setup.mrc
}

F10 rrun %firu
cF10 avp %firu
F12 showmirc -t
sF12 if ($server) { .timerAUTOJ.* off | echo -se $logo $mg(autoj) } | else { .timerAUTOCON off | echo -se $logo $mg(autoc) }
cF12 if ($chr(32) isin $gettok(%recan,1-3,44)) { djoin 3 %recan | return }  if ($numtok(%recan,44) <= 3) join %recan | else { join $gettok(%recan,1-3,44) | djoin 3 $gettok(%recan,4-,44) }

NNET {
  var %n = $1 | if (!$1) { var %n = $server } | var %i = $numtok(%n,46)
  return $gettok(%n,$calc(%i - 1) $+ - $+ %i,46)
}

CTCP .ctcp $1- | echo -tq $tma(sctcp,$1,$2-)

SERVERZ if $script(conn.mrc) == $null { .load -rs s\conn.mrc } | conn

raya linesep -s

rrun run $1-

cvent return $int($calc(($window(-3).w / 2) - ($1 / 2))) $int($calc(($window(-3).h / 2) - ($2 / 2))) $1 $2

sss {
  if (%away.nosoun == on) && ($away) return
  if (%sloc != off ) { 
    var %sss = $readini ircap.ini WAV $$1 | if (!%sss) return
    if $mid(%sss,2,2) != :\ { %sss = $mircdir $+ %sss } | splay " $+ %sss $+ " 
  }
}

slocal if (%sloc != off ) { var %a = $1- | if ($mid(%a,2,2) != :\) { %a = $mircdir $+ %a } | if ($exists($shortfn(%a))) splay $shortfn(%a) }

bip sss BIP

fallo sss fallo

BAR {
  var %b = " $+ $mircdirskin\ $+ %skin $+ \bar.png"

  if (c isin $1) {
    if ($status != connected)  drawpic -cn @barra $gettok(%bar.pu,1,44) 0 $gettok(%bar.g,2,44) %b
    else drawpic -cn @barra $gettok(%bar.pu,1,44) 0 $gettok(%bar.g,1,44) %b
  }

  if (l isin $1) && (%bar.lag == on) {
    drawpic -cns @barra $gettok(%bar.pu,7,44) 0 88 $gettok(%bar.f,1,44) $gettok(%bar.g,5,44) %b
    if ($scid($window(@barra).cid).server) {
      laghisto @barra $calc($gettok(%bar.pu,7,44) + 19) $gettok(%bar.f,5,44) 70 24 $window(@barra).cid %lagmax 10
      drawtext -cnr @barra $gettok(%bar.f,6,44) Arial 9 $calc($gettok(%bar.pu,7,44) + 4) $gettok(%bar.f,5,44) 80 14 $scid($window(@barra).cid).server
      drawtext -cnr @barra $gettok(%bar.f,6,44) Arial 9 $calc($gettok(%bar.pu,7,44) + 4) $calc($gettok(%bar.f,5,44) + 10) 80 14 Lag: $int($gettok(%lag. [ $+ [ $window(@barra).cid ] ],1,32))
    }
  }

  if (p isin $1) {
  }

  if $1 == off { window -phBi +bd @barra 0 0 100 1 | window -h @barra 0 0 100 0 | return }
  if $1 != $null { drawline @barra | return }

  %bar.pu = -,-,-,-,-,-,-

  window -c @barra | window -phBi +bd @barra 0 0 $window(-3).w $gettok(%bar.f,1,44) @barra

  var %i = 8 , %x = 0 , %u = $window(@barra).w | :L1
  var %a = $gettok(%bar.f,%i,44) , %t = $gettok(%bar.f,$calc(%i + 1),44)
  if %a == c {
    if %t == 1 { var %x2 = %x | %x = $calc($window(@barra).w - $gettok($gettok(%bar.g,1,44),3,32)) | if %x < %x2 { %x = %x2 } }
    drawpic -cn @barra %x 0 $gettok(%bar.g,1,44) %b
    %bar.pu = $puttok(%bar.pu,%x,1,44)
    inc %x $gettok($gettok(%bar.g,1,44),3,32)
  }
  if %a == s {
    if %t == 1 { var %x2 = %x | %x = $calc($window(@barra).w - $gettok($gettok(%bar.g,4,44),3,32)) | if %x < %x2 { %x = %x2 } }

    drawpic -cn @barra %x 0 $gettok(%bar.g,4,44) %b
    %bar.pu = $puttok(%bar.pu,%x,5,44)
    inc %x $gettok($gettok(%bar.g,4,44),3,32)
  }
  if %a == i {
    drawpic -cns @barra %x 0 $calc($window(@barra).w - %x) $gettok(%bar.f,1,44) $gettok(%bar.g,3,44) %b
    %bar.pu = $puttok(%bar.pu,%x,2,44)
    var %i2 = 1 , %w = %x | :L2
    var %q = $readini(%perfil,bar,%i2)
    if %q != $null {
      var %ff = $gettok(%q,2,44) | if $left(%ff,5) == skin- { %ff = skin\ $+ %skin $+ \ $+ %ff }
      %ff = $shortfn(%ff)
      if $exists(%ff) {
        if (.ico isin %ff) || (.exe isin %ff) { drawpic -nsm @barra %x $gettok(%bar.f,3,44) $gettok(%bar.f,2,44) $gettok(%bar.f,2,44) %ff }
        if (.bmp isin %ff) || (.png isin %ff) || (.jpg isin %ff) { drawpic -nstm @barra $rgb(0,255,0) %x $gettok(%bar.f,3,44) $gettok(%bar.f,2,44) $gettok(%bar.f,2,44) %ff }
      }
      else { cuagr @barra %x $gettok(%bar.f,3,44) $gettok(%bar.f,2,44) $gettok(%bar.f,2,44) }
      inc %x $gettok(%bar.f,2,44) | inc %x $gettok(%bar.f,4,44)
      inc %i2 | goto L2
    }
    %bar.pu = $puttok(%bar.pu,$calc(%x -%w),3,44)
    %bar.pu = $puttok(%bar.pu,$calc(%i2 - 1),4,44)
    dec %x $gettok(%bar.f,4,44) | inc %x
  }
  if (%a == l) && (%bar.lag == on) {
    if %t == 1 { var %x2 = %x | %x = $calc($window(@barra).w - 84) | if %x < %x2 { %x = %x2 } }
    %bar.pu = $puttok(%bar.pu,%x,7,44)
    inc %x 88
    .timer -mo 1 300 bar l
  }

  if (%a == p)  && (%bar.ply == on) {
    if %t == 1 { var %x2 = %x | %x = $calc($window(@barra).w - $gettok($gettok(%bar.g,6,44),3,32)) | if %x < %x2 { %x = %x2 } }


    %bar.pu = $puttok(%bar.pu,%x,6,44)
    if ($isalias(bartit)) { drawpic -cn @barra %x 0 $gettok(%bar.g,6,44) %b | .timer -m 1 300 bartit }
    inc %x $gettok($gettok(%bar.g,6,44),3,32)
  }

  if %a != $null { inc %i | goto L1 }
  drawline @barra | window -a @barra
}


clickicobarra {
  var %xx = $calc($gettok($gettok(%bar.po,1,32),1,44) + $gettok(%bar.pu,1,44)) , %yy = $gettok($gettok(%bar.po,1,32),2,44) , %ww = $gettok($gettok(%bar.po,1,32),3,44) , %hh = $gettok($gettok(%bar.po,1,32),4,44)
  if ($inrect($1,$2,%xx,%yy,%ww,%hh)) { 
    if ($3 == sclick) { wpulsa @barra %xx %yy %ww %hh | sss clik | return }
    wpulsa off
    if $status == disconnected { server | bar con }
    else disconnect
    return
  }

  if $inrect($1,$2,$gettok(%bar.pu,2,44),$gettok(%bar.f,3,44),$gettok(%bar.pu,3,44),$gettok(%bar.f,2,44)) {
    var %i = 1 , %x = $gettok(%bar.pu,2,44) ,%y = $gettok(%bar.f,3,44) , %t = $gettok(%bar.f,2,44) , %t2 = $gettok(%bar.f,4,44) , %t3 = $gettok(%bar.pu,4,44)
    :L1
    if ($inrect($1,$2,%x,%y,%t,%t)) { 
      if ($3 == tooltip) return $gettok($readini(%perfil,bar,%i),1,44)
      if ($3 == sclick) { wpulsa @barra $calc(%x - 1) $calc(%y - 1) $calc(%t + 2) $calc(%t + 2) | sss clik }
      if ($3 == uclick) { var %co = $gettok($readini(%perfil,bar,%i),3,44) | if (%co) execom %co | wpulsa off }
      window -c @tttip | set -u5 %tmp.notttip on
      return
    }
    inc %i | inc %x %t | inc %x %t2 | if (%i <= %t3) goto L1
  }

  var %xx = $calc($gettok($gettok(%bar.po,2,32),1,44) + $gettok(%bar.pu,5,44)) , %yy = $gettok($gettok(%bar.po,2,32),2,44) , %ww = $gettok($gettok(%bar.po,2,32),3,44) , %hh = $gettok($gettok(%bar.po,2,32),4,44)
  if ($inrect($1,$2,%xx,%yy,%ww,%hh)) { 
    if ($3 == sclick) { wpulsa @barra %xx %yy %ww %hh } | else F3
  }
  if $inrect($1,$2,$gettok(%bar.pu,6,44),0,$gettok($gettok(%bar.g,6,44),3,32),$gettok(%bar.f,1,44)) {
    if ($isalias(mp3playerclick)) mp3playerclick $calc($1 - $gettok(%bar.pu,6,44)) $2 $3 $1
  }
}

BARTOLTIP {
  if $1 == cierra { unset %tmp.tol %tmp.toltip | tttipfunde ini | return }
  if %tttip != on || (%tmp.notttip) return
  inc %tmp.toltip | .timerTTTIP2 -o 1 1 unset %tmp.toltip | if (%tmp.toltip < $1) return
  if $inrect($mouse.x,$mouse.y,$gettok(%bar.pu,2,44),$gettok(%bar.f,3,44),$gettok(%bar.pu,3,44),$gettok(%bar.f,2,44)) {
    var %a = $clickicobarra($mouse.x,$mouse.y,tooltip)
    if (%a != %tmp.tol) && (%a) { 
      var %ex = off | if ($window(@tttip)) { var %ex = on }
      var %an = $width(%a,verdana,9,0) | if %an > 300 { %an = 300 }
      var %ac = $active | if $numtok(%ac,32) > 1 { var %ac = " $+ $active $+ " }
      .timerTTTIP off | window -c @tttip | window -pkdoihn +dL @tttip $mouse.dx $calc($mouse.dy + 22) $calc(%an + 8) 14
      drawrect -rnf @tttip $rgb(255,216,77) 1 0 0 $calc(%an + 8) 14
      drawrect -rn @tttip $rgb(80,105,233) 1 0 0 $calc(%an + 8) 14
      drawtext -rnc @tttip $rgb(0,0,0) verdana 9 4 0 %an 14 %a
      setlayer 255 @tttip 
      drawline @tttip | window -o @tttip
      %tmp.tol = %a
    }
    .timerTTTIP -mo 1 410 bartoltip cierra
  }
}

BAR-ICO {
  var %i = 1
  while ($readini(%perfil,bar,%i)) { if ($gettok($ifmatch,2-,44) == $3 $+ , $+ $4) goto esta | inc %i }
  if $1 == + { writeini %perfil bar %i $2 $+ , $+ $3 $+ , $+ $4 }
  :esta
  if $1 == - {
    while ($readini(%perfil,bar,$calc(%i + 1))) { writeini %perfil bar %i $ifmatch | inc %i }
    remini %perfil bar %i
  }
  bar
}

midelag {
  if $1 == on { %mlag = on | .timerLAG -i 0 60 midelag | .timer 1 1 midelag }
  if $1 == off { %mlag = off | .timerLAG off | return }
  if $1 == ex { .timerLAG -m 1 100 midelag %mlag | return }
  var %m = $scon(0)
  while (%m > 0) {
    scon %m
    if $gettok(%lag. [ $+ [ $cid ] ],1,32) == ? {
      var %a = $sba.sub(posy,sba.lag) | if (%a) { sba.lag %a - $cid | drawline @sba }
      if ($cid == $window(@barra).cid) && (%bar.lag == on) { bar -l }
    }
    set %lag. [ $+ [ $cid ] ] $gettok(? %lag. [ $+ [ $cid ] ],1-20,32)
    dec %m
  }
  scon -at1 .notice $!me PING $ticks MIDOLAG
}

LAGHISTO {
  var %col1 = $gettok(%bar.f,6,44) , %col2 = $gettok(%bar.f,7,44)
  if (!$8) { cua $1-5 $gettok(%gui.cc,4,44) $gettok(%gui.cc,5,44) $gettok(%gui.cc,3,44) | var %col1 = $gettok(%gui.cc,6,44) , %col2 = $gettok(%gui.cc,9,44) }
  if (!$scid($6).server) return
  var %y = $calc($3 + $5 - 4) , %i = 1 , %n = $8 | if (!%n) { var %n = 20 }
  var %an = $int($calc(($4 - 28) / %n)) , %x = $calc($2 + $4 - 5 - %an) , %cf = $calc((($5 - 8) / $7) * - 1)
  :L1
  var %al = $gettok(%lag. [ $+ [ $6 ] ],%i,32)
  if (%al == ?) { %al = $7 | var %col3 = %col2 | %col2 = 255 }
  if (%al > $7) { %al = $7 }
  drawrect -frn $1 %col2 1 %x %y %an $iif(%al < 1,-1,$calc(%al * %cf))
  if (%col3) { %col2 = %col3 | var %col3 }
  dec %x %an | dec %x
  inc %i | if %i <= %n goto L1
  if (!$8) {
    drawtext -cnr $1 %col1 Arial 9 $calc($2 + 3) $3 $calc($4 - 8) 14 $scid($6).server
    drawtext -cnr $1 %col1 Arial 9 $calc($2 + 3) $calc($3 + 10) 100 14 Lag: $int($gettok(%lag. [ $+ [ $6 ] ],1,32))
  }
}

WPULSA {
  if $1 == suelta {
    if ($mouse.key == 1) && ($inrect($mouse.x,$mouse.y,$gettok(%tmp.wpulsa,2,32),$gettok(%tmp.wpulsa,3,32),$gettok(%tmp.wpulsa,4,32),$gettok(%tmp.wpulsa,5,32)) == $true) return
    .timerWPULSA off
    .timer -m 1 100 wpulsa off
    return
  }
  if $1 == off {
    if ($window(@wpulsa)) drawcopy @wpulsa 0 0 $gettok(%tmp.wpulsa,4-5,32) $gettok(%tmp.wpulsa,1-3,32)
    window -c @wpulsa | unset %tmp.wpulsa | .timerWPULSA off
    return 
  }
  if ($window(@wpulsa)) return
  %tmp.wpulsa = $1- | window -phBi +bd @wpulsa 900 100 $4 $5 | drawcopy $1 $2 $3 $4 $5 @wpulsa 0 0
  var %a = %skinr | %skinr = 4 | cua $1 $2 $3 $calc($4 - 1) $calc($5 - 1) $rgb(50,50,50) $rgb(220,220,220) $rgb(0,0,0) | %skinr = %a
  drawcopy @wpulsa 2 2 $calc($4 - 0) $calc($5 - 0) $1 $calc($2 + 1) $calc($3 + 1)
  drawline $1
  .timerWPULSA -mo 0 100 wpulsa suelta
}

wrini if $4- == $null remini $1 $2 $3 | else writeini $1 $2 $3 $4-

COPIAINI {
  var %f1 = " $+ $1 $+ " , %f3 = " $+ $3 $+ "
  var %s = $read(%f1, w, $2) | if (!%s) return error | var %s = $readn | inc %s
  remini %f3 $remove($4,[,]) | :L1 | var %l = $read(%f1,%s) | if ($left(%l,1) == $chr(91)) || (%s > $lines(%f1)) return ok
  if (%l) { writeini %f3 $remove($4,[,]) $gettok(%l,1,61) $gettok(%l,2,61) } | inc %s | goto L1
}

JA {
  goto $1
  :YO20 | .rlevel 20 | var %n = $scon(0) | while (%n > 0) { .auser 20 $scon(%n).me | dec %n } | return
  :LISERV | if ($script(liserv.mrc) == $null) .load -rs s\util\liserv.mrc | abreliserv $2
}

op mode # +ooo $$1 $2 $3
dop mode # -ooo $$1 $2 $3
j join #$$1 $2- 
n names #$$1
ww whowas $$1
k kick # $1-
q query $$1
query dosno nicknuke $$1 | query $$1- | if (%priv.bu == on) { if ($exists(" $+ $logdir $+ $mkfn($$1) $+ .log")) loadbuf 20 -pc14 $$1 " $+ $logdir $+ $mkfn($$1) $+ .log" }

W if $netcon(1) == ircx.inb { whois $$1 } | else whois $$1 $$1
NLACCION if %nlaccion == on query $$1 | w $$1

MEFLOD {
  if (%pflood != on) || ($nick == $me) return
  .timerMEFLOD 1 20 unset %cflod
  if ($len(%cflod) < 800) { set %cflod %cflod $site } | var %maxflood = 3 | if ($1) { %maxflood = $1 }
  if ($count(%cflod ,$site) >= %maxflood) {
    ignore -ntiku60 $wildsite | silencia 60 $wildsite
    echo -st $tma(flood,$nick,$address,FLOOD)
    alarma
    .signal -n flood ctcp $nick $address $target    
    var %hlt = 1
  }

  if (($numtok(%cflod,32) >= 6) || ($len(%cflod) > 750)) && (!$2) {
    ignore -ntiku60 *!*@* | silencia 25 *!*@*
    echo -st $tma(flood,$nick,$address,FLOOD NET)
    echo -st $mg(igctcp,60)
    alarma
    .signal -n flood ctcpnet $nick $address $target    
    var %hlt = 1
  }
  if (%hlt == 1) { raya | halt }
}

TEFLOD {
  if (%pflood.t != on) return
  .timerTEFLOD 1 10 unset %tflod
  if ($count(%tflod,$site) >= 15) {
    ignore -u60 $wildsite | close -m $nick | silencia 60 $wildsite
    echo -st $tma(flood,$nick,$address, $iif($chan,[ $chan ]) $mg(txflod))
    .timerWHOIS off
    alarma
    .signal -n flood texto $nick $address $target    
  }
  %tflod = $site $left(%tflod,800)
  inc %tflod.net $1
  if (%tflod.net > 5000) && (%pflood.tfn == on) {
    ignore -u60 *!*@* | silencia 60 *!*@* | close -m
    echo -st $tma(flood,$nick,$address,$mg(txnflod))
    echo -st $mg(igtodo,60)
    alarma
    .signal -n flood textonet $nick $address $target    
    raya | halt
  }
}

SILENCIA if %pflood.sil == on { silence + $+ $2 | .timer 1 $1 silence - $+ $2 }
UNSETALL echo -t /unsetall ? no... | halt

TEMATXT {
  if $1 == cnick goto cnicks
  %tematxt = $1-
  var %a = 1 | :L1 | if (.tti isin $script(%a)) { .unload -rs " $+ $script(%a) $+ " } | else { inc %a } | if $script(%a) != $null goto L1
  var %a = " $+ $1 $+ .tti" | if $nopath(%a) == %a { %a = $mircdirskin\ $+ %a }
  .load -rs %a
  var %sq = color1 | if ($2) { %sq = color $+ $2 }
  %tma.K =  $+ $replace($readini(%a,%sq,base),$chr(44),$chr(44) $+ )
  porcentaje <ini>

  if %setup.skin.c != on {
    var %c = action,ctcp,highlight,info,info2,invite,join,kick,mode,nick,normal,notice,notify,other,own,part,quit,topic,wallops,whois,listbox,editbox,background,editbox text,listbox text,inactive
    porcentaje Color 1
    var %r = $readini(%a,%sq,color) , %n = 0 | while (%n < 26) { color $gettok(%c,$calc(%n + 1),44) $gettok(%r,$calc(%n + 1),44) | inc %n }
    porcentaje Color 2
    var %r = $readini(%a,%sq,rgb) , %n = 0 | while (%n < 16) { color %n $gettok(%r,$calc(%n + 1),44) | inc %n }
  }
  if $group(#tm.alin) == on { var %alin = alin }
  %tma.n1 = $_tm($read(%a,s,tma.n1 $+ %alin))
  %tma.n2 = $_tm($read(%a,s,tma.n2 $+ %alin))
  %tma.n3 = $_tm($read(%a,s,tma.n3 $+ %alin))
  %tma.n4 = $_tm($read(%a,s,tma.n4 $+ %alin))
  %tma.m1 = $_tm($read(%a,s,tma.m1 $+ %alin))
  %tma.m2 = $_tm($read(%a,s,tma.m2 $+ %alin))
  %tma.m3 = $_tm($read(%a,s,tma.m3 $+ %alin))
  %tma.m4 = $_tm($read(%a,s,tma.m4 $+ %alin))

  .timestamp -f $_tm($tstamp)

  %tma.tab = $readini(%a,tema,tab)
  if ($group(#tm.alin) == on) { %tma.tab = $readini(%a,tema,tab2) }

  if %setup.skin.f != on wtemabf $readini(%a,tema,fontpc) $+  $+ $readini(%a,tema,fontst)

  %skinl = $readini(%a,%sq,nickl)
  :cnicks
  var %i = $cnick(0) | while (%i > 0) { .cnick -r * | dec %i }
  .cnick -m2 * $gettok(%skinl,3,44) * 69
  .cnick -m2 * $gettok(%skinl,4,44) * 10
  .cnick -m2 * $gettok(%skinl,5,44) * 7
  .cnick -m2 * $gettok(%skinl,6,44) * 5
  .cnick -m2y * $gettok(%skinl,9,44)
  .cnick -m2i * $gettok(%skinl,10,44)
  .cnick -m2 * $gettok(%skinl,7,44) @
  .cnick -m2 * $gettok(%skinl,8,44) +%
  if ($readini(%a,%sq,i)) echo -st $logo $ifmatch
  porcentaje <fin>
}

wtemabf {
  var %m = $scon(0) , %t1 = $gettok($gettok($1-,1,22),1,32) , %f1 = $gettok($gettok($1-,1,22),2-,32) , %t2 = $gettok($gettok($1-,2,22),1,32) , %f2 = $gettok($gettok($1-,2,22),2-,32)
  while (%m > 0) {
    scon %m
    var %a = 1 | while ($chan(%a) != $null) { font -d $chan(%a) %t1 %f1 | inc %a }
    var %a = 1 | while ($query(%a) != $null) { font -d $query(%a) %t1 %f1 | inc %a }
    var %a = 1 | while ($chat(%a) != $null) { font -d = $+ $chat(%a) %t2 %f2 | inc %a }
    dec %m
  }
  writeini mirc.ini fonts fchannel %f1 $+ , $+ $calc(400 + %t1)
  writeini mirc.ini fonts fquery %f1 $+ , $+ $calc(400 + %t1)
  scon -a font -sd %t2 %f2
}

FOCUS {
  if (%focus != on) || (%modoventana isin max maxt mix) || (!$appactive) return
  var %u = $activecid , %a = $active | if $numtok(%a,32) > 1 { %a = " $+ %a $+ " } | if ($window($$1)) scid $$2 window -a $$1 | if ($$2 != %u) .timer -m 1 20 scid %u window -a %a | else  scid %u window -a %a
}

NEXE return $replace($1-,|,|)

alarma .timerALARMA 1 1 sss flod | flash -r10 Ataque recibido

TIPOEXT var %a = 1 | :L1 | var %b = $gettok($2,%a,44) $+ * | if %b == * return | if (%b iswm $1) { return %b } | inc %a | goto L1

DOSNO {
  goto $1
  :nicknuke
  if ($findtok(com1 com2 com3 com4 lpt1 lpt2 ps1 ps2 con null nul aux prn xxx0,$nick,32)) {
    echo -stq $tma(flood,$nick,$address,$mg(dosdb)) | .ignore -u10 $wildsite | .ignore -u10 $nick | alarma | halt
  }
  return
  :limitaprivados
  if ($calc($chat(0) + $query(0)) >= %lim_priv) && ($nick != $me) { .ignore -ptdu15 $nick | .timer 1 1 echo -ste $logo $mg(privbloq,$nick,%lim_priv) | sss noti | .timerNOPRIV 1 3 qc .notice $nick $mg(privbnot) | halt }
  return
  :concon
  if %pflood.2 != on return
  if (\ !isin $1-) && (/ !isin $2-) return
  echo -s $tma(flood,$nick,$address,$mg(doscon)) $2-
  .timer -m 1 100 .ignore -u10 $wildsite | close -mcf $nick
  .signal -n flood dos $nick $address $target    
  alarma
  halt
}

QC {
  var %w = @queue. $+ $cid
  if $1 == <> {
    var %c = $line(%w,1)
    if (!%c) { .timerQC. $+ $cid off | window -c %w | return }
    .timerQC. $+ $cid -m 1 $gettok(%c,1,32) qc <>
    dline %w 1 | $gettok(%c,2-,32)
    return
  }
  if ($!window(%w)) { window -lh %w }
  var %t = 8000 , %l = %tmp.qcflood [ $+ [ $cid ] ] | if (!%l) { %l = 0 }
  if %l < 20 { %t = 4000 }
  if %l < 15 { %t = 2000 }
  if %l < 7 { %t = 1000 }
  if %l < 4 { %t = 10 }

  aline %w %t $1-
  inc -u10 %tmp.qcflood [ $+ [ $cid ] ]
  if (!$timer(QC. $+ $cid)) { .timerQC. $+ $cid -m 1 100 qc <> }
}

borranickque {
  var %i = 1 | :L1 | var %a = $line(@dccola,%i) | if (%a) { if $gettok(%a,1,32) == $1 { dline @dccola %i } | else inc %i | goto L1 }
  var %i = 1 , %w = @queue. $+ $cid | :L2 | var %a = $line(%w,%i) | if (%a) { if ($findtok($gettok(%a,3-5,32),$1,32)) { dline %w %i } | else inc %i | goto L2 }
}


rebusca {
  set -u90 %tmp.noreenv on
  if ($active == $1) && (%m.w != on) echo -at $mg(nosta,<c3> $+ $1 $+ <c1>)
  if %qflod == 1 { return }

  if ($$1 == %siguenick) && ($isalias(siguenick)) { siguenick rastrea | return }

  %_w = ecot -st | if %m.w == on { %_w = ecot -at }
  if (%reloca == off) || (%tmp.noww == $1) { %_w $+ e $mg(nosta,<c3> $+ $1 $+ <c1>) | return }
  if (%reloca == on) { %_w $+ e $mg(nostaw,<c3> $+  $1 $+ <c1>) | %nwho = 1 | qc whowas $1 1 | set -u8 %tmp.noww $1 }
}

NICK { 
  unset %tmp.nickgpass | if (: isin $1) && (%ideninck == on) { %tmp.nickgpass = $1 }
  if ($gettok(%netcon. [ $+ [ $cid ] ],1,32) == hispano.inb) {
    var %a = $dapass(nick. $+ $nnet,$1)
    if (%a) { 
      .raw nick $1 $+ ! $+ %a
      return 
    }
  }
  nick $1-
  if $2 != $null anick $2
  if $gettok(%conn.p�1,3,32) == 1 { %conn.nick = $gettok($gettok($1-,1,58),1,33) | guidibtx @conn %conn.tx | drawline @conn }
}

IDENTIFICANICK {
  if %ideninck == off return
  var %a = %netcon. [ $+ [ $cid ] ] | if %a == $null return
  if ($gettok(%a,1,32) == hispano.inb) && (r isincs $usermode) return
  if ($gettok(%a,8-99,32) iswm $strip($1-)) && (%tmp.nid. [ $+ [ $cid ] ] != on) && ($nick == $gettok($gettok(%a,3,32),1,64)) { 
    if ($dapass(nick. $+ $nnet,$me)) { 
      var %b = $readini s\net\ $+ $gettok(%a,1,32) botcom identify
      $replace(%b,<nickserv>,$gettok(%a,3,32),<pass>,$dapass(nick. $+ $nnet,$me),<me>,$me)
      set -u5 %tmp.nid. [ $+ [ $cid ] ] on | return 
    }
    if (r !isin $usermode) { .timer 1 1 echo -se $logo $mg(nopass,$me) }
  }
}

DAPASS {
  var %dapas = 1
  :L1
  var %dapas2 = $readini %perfil $1 %dapas | if %dapas2 == $null return
  if $gettok(%dapas2,1,32) == $2 { return $decode64($gettok(%dapas2,2-99,32),m) }
  inc %dapas 1 | goto L1
}

ADPASS {
  var %dapas = 1
  :L1
  var %dapas2 = $readini %perfil $1 %dapas | if %dapas2 == $null { writeini %perfil $1 %dapas $2 $encode($3,m) $4- | return }
  if $gettok(%dapas2,1,32) == $2 { writeini %perfil $1 %dapas $2 $encode($3,m) $4- | return }
  inc %dapas 1 | goto L1
}

DELPASS {
  var %n = 1 | :L1 | var %a = $readini %perfil $1 %n | if (!%a) return | if $gettok(%a,1,32) != $2 { inc %n | goto L1 }
  :L2
  var %b = $readini %perfil $1 $calc(%n + 1) | if (!%b) { remini %perfil $1 %n | if (%n == 1) && (!$3) { remini %perfil $1 } | return }
  writeini %perfil $1 %n %b | inc %n | goto L2
}

mns {
  if $netcon(1) == $null { echo -se $logo $mg(nobot,$server) | halt }
  var %cbo = .msg $netcon(3)
  if ($netcon(1) isin dalnet.inb) && ($nnet != red-latina.org) { %cbo = nickserv }
  if $1 == * { %cbo $2- | ecot -stq $botecho($netcon(3)) <c4>--> $2 ****** | return }
  %cbo $1- | ecot -stq $botecho($netcon(3)) <c4>--> $1-
}
mcs {
  if $netcon(1) == $null { echo -se $logo $mg(nobot,$server) | halt }
  var %cbo = .msg $netcon(4)
  if ($netcon(1) isin dalnet.inb) && ($nnet != red-latina.org) { %cbo = chanserv }
  if $1 == * { %cbo $2- | ecot -stq $botecho($netcon(4)) <c4>--> $2 ****** | return }
  %cbo $1- | ecot -stq $botecho($netcon(4)) <c4>--> $1-
}
mms {
  if $netcon(1) == $null { echo -se $logo $mg(nobot,$server) | halt }
  var %cbo = .msg $netcon(5)
  if ($netcon(1) isin dalnet.inb) && ($nnet != red-latina.org) { %cbo = memoserv }
  if ($1 == *) { %cbo $2- | return }
  %cbo $1- | if $window(@MEMOS).state != $null { ecot @MEMOS <c4>--> $1- | return }
  ecot -stq $botecho($netcon(5)) <c4>--> $1-
}

NETCON {
  var %a = %netcon. [ $+ [ $cid ] ]
  if ($1 != $null) { return $gettok(%a,$1,32) }
  return %a
}


cargabots {
  var %bmenu , %i = 1 | while ($scon(%i).cid != $null) { var %a = $gettok(%netcon. [ $+ [ $ifmatch ] ],1,32) | if (%a !isin %bmenu) { %bmenu = %bmenu %a } | inc %i 1 }
  var %i = 1 | while ($script(%i) != $null) {
    if (.inb isin $ifmatch) {
      var %a = $nopath($script(%i))
      if (%a !isin %bmenu) { .unload -rs %a | continue }
    }
    inc %i 1
  }
  var %i = 1 | while ($gettok(%bmenu,%i,32) != $null) {
    if ($script($ifmatch) == $null) { if (%autobot == on) { .load -rs s\net\ $+ $gettok(%bmenu,%i,32) } }
    inc %i 1
  }
  if (!$script(anope.inb)) { .ruser 69 Nickserv | .ruser 69 Chanserv | .ruser 69 Memoserv }
}

clones {
  var %cont  = 2 , %tclon = $ial($address($$1 ,2),1).nick | while (%cont <= $ial($address($$1 ,2),0)) {
  if ($len(%tclon) < 800) { %tclon = %tclon $ial($address($$1 ,2),%cont).nick } | inc %cont }
  if $len(%tclon) > 800 { %tclon = $left(%tclon,800) 4..... }
  return %tclon
}

CHRINI return $replace($1-,,�K�,,�B�,,�O�,,�U�,,�R�)
INICHR return $replace($1-,�K�,,�B�,,�O�,,�U�,,�R�,)
REMP return $replace($1-,<nick>,$nick,<canal>,$chan,<chan>,$chan,<url>,$urlcap,<ver>,%ircapv,<me>,$me)

KPROT var %a = %cpo. [ $+ [ $1 $+ .dat ] ] | if  (%a == $null) { var %a = %canalcfg.pro } | return $gettok(%a,$2,44)

CRIP {
  var %cript , %p = 1 , %f = 1 , %.m = $asc($mid($1,$calc($len($1) / 2),1)) , %u = $asc($right($1,1)) ,%no = �256�258�259�266�269�271�278�287�288� , %t = $replace($2-,$chr(32),$chr(130))
  :L1
  var %n = $calc($asc($mid($1,%p,1)) - %u) , %l = $asc($mid(%t,%f,1)) , %ascc = $calc(%l + %n)

  if (� $+ %ascc $+ � isin %no) || (%ascc == %m) { %cript = %cript $+ $chr(%m) $+ $chr(%l) }
  else { %cript = %cript $+ $chr(%ascc) }

  inc %p | if (%p > $len($1)) { %p = 1 }
  inc %f | if (%f <= $len(%t)) goto L1

  return %cript
}

DCRIP {
  var %cript , %p = 1 , %f = 1 , %m = $asc($mid($1,$calc($len($1) / 2),1)) , %u = $asc($right($1,1))
  :L1
  var %n = $asc($mid($1,%p,1)) | var %n = $calc($asc($mid($1,%p,1)) - %u) , %l = $asc($mid($2-,%f,1)) , %ascc = $calc(%l - %n)

  if (%l == %m) { inc %f | %cript = %cript $+ $mid($2-,%f,1) }
  else { %cript = %cript $+ $chr(%ascc) }

  inc %p | if (%p > $len($1)) { %p = 1 }
  inc %f | if (%f <= $len($2-)) goto L1

  return $replace(%cript,$chr(130),$chr(32))
}

UNICONV {
  var %a = $gettok($$1,1,38)
  if (&centig isin $$1) { return  $+ $int($calc((%a * 1.8) + 32)) $+ � Farenheit }
  if (&faren isin $$1) { return  $+ $int($calc((%a - 32) / 1.8)) $+ � Centigrados }

  if (&pese isin $$1) { var %e = $calc(%a / 166.368) | return %a pesetas ( $+ $round($calc(%e * %dolar),2) $+ $ ~ $round(%e,2) $+ �) }
  if (&dol isin $$1) { var %e = $calc(%a / %dolar) | return %a dolares ( $+ $round($calc(%e * 166.386),2) $+ pts ~ $round(%e,2) $+ �) }
  if (&eu isin $$1) { return %a euros ( $+ $round($calc(%a * %dolar),2) $+ $ ~ $round($calc(%a * 166.386),2) $+ pts) }

  if (&centim isin $$1) { return  $+ $round($calc(%a / 2.54),2) pulgadas }
  if (&pulg isin $$1) { return  $+ $round($calc(%a * 2.54),2) centimetros }

  if (&kilom isin $$1) { return  $+ $round($calc(%a / 1.609344),2) millas }
  if (&mill isin $$1) { return  $+ $round($calc(%a * 1.609344),2) kilometros }

  if (&kilo isin $$1) { return  $+ $round($calc(%a / 0.45359237),2) libras }
  if (&libr isin $$1) { return  $+ $round($calc(%a * 0.45359237),2) kilogramos }

  if (&litr isin $$1) { return  $+ $round($calc(%a / 3.785411784),2) galones }
  if (&gal isin $$1) { return  $+ $round($calc(%a * 3.785411784),2) litros }

  if (&metr isin $$1) { return  $+ $round($calc(%a / 0.3048),2) pi�s }
  if (&pie isin $$1) { return  $+ $round($calc(%a * 0.3048),2) metros }

  if (&gram isin $$1) { return  $+ $round($calc(%a / 28.34952313),2) onzas }
  if (&onz isin $$1) { return  $+ $round($calc(%a * 28.34952313),2) gramos }
}

AWAY {
  if $1- == -set�B� {
    if $away == $true { .raw away }
    else { %apartado = setaway | f3 }
    return
  }
  if $1- == -suma { var %a = %tmp.away. [ $+ [ $cid ] ] | .raw away :[ $+ $duration($calc($ctime - $gettok(%a,2,32))) $+ ] $gettok(%a,3-,32) | return }
  if $1 == -deop { 
    if %away.deop != on return
    var %i = 1 | :L | var %c = $chan(%i) | if %c == $null return
    if $2 = d { if $me isop %c { mode %c -o $me } }
    if $2 = o { if $me !isop %c { if ($netcon(4)) mcs op %c $me } }
    inc %i | goto L
  }
  if $1 == -anun {
    var %a = %tmp.away. [ $+ [ $cid ] ]
    $ame2(%away.tx1 [ $gettok(%a,3-,32) ] [ $+ $duration($calc($ctime - $gettok(%a,2,32))) $+ ],a,%away.canal,%away.canalno)
    return
  }
  if $1 == -recon {
    var %a = %tmp.away. [ $+ [ $cid ] ]
    echo -stq $logo $mg(awayrest) | set %tmp.away. [ $+ [ $cid ] ]  $+ %a | .raw away : $+ $gettok(%a,3-,32)
    return
  }

  if $1 == -contesta {
    .timerCONTES 1 3 qc msg $2 %razcontes
    if (!$window(@Contestador)) { 
      window  -k @Contestador | aline @Contestador Abriendo sesi�n $fulldate
      write logs\contestador.log  - | write logs\contestador.log  Abriendo sesi�n -- $fulldate
    }
    echo -t @Contestador $2 $+ ( $+ $3 $+ / $+ $nnet $+ )>> $4-
    write logs\contestador.log $timestamp $2 $+ ( $+ $3 $+ / $+ $nnet $+ )>>  $4-
    if %tmp.contestador != on { sss priv | set -u10 %tmp.contestador on }
    return
  }

  if ($1- == $null) { if $away == $true .raw away | return }

  if $away == $false { .signal -n AWAYMSG | set %tmp.away. [ $+ [ $cid ] ] - $ctime $_tm($1- %tmp.away+msg) | .raw away : $+ $_tm($1- %tmp.away+msg) | unset %tmp.away+msg }
}

TIM10 {
  var %i = 1 | while ($scon(%i).cid != $null) { 
    if ($scon(%i).idle > 120) && (%noidle == on) { scon -t1 %i .msg $scon(%i).me �D | scon -t1 %i resetidle }
    if (%autoaw != 0) && ($scon(%i).server) {
      if ($scon(%i).idle >= $calc(%autoaw * 60)) && ($scon(%i).away == $false) { .timerAUTOAW $+ %i 1 2 scon -t1 %i away $remp(%away.aum) | if %away.tray == on F12 }
      if ($scon(%i).idle < 20) && ($scon(%i).away) && (%away.aum isin %tmp.away. [ $+ [ $scon(%i).cid ] ] ) { scon -t1 %i away }
    }
    inc %i 1
  }

  unset %tflod.net
  if ($send(0) > 0) && (%dcv.min != 0) { var %i = $send(0) , %v = $calc(%dcv.min * 1024) | while (%i > 0) { if ($send(%i).cps < %v) && ($send(%i).status == active) { qc notice $send(%i) $qemsg($mg(dcclento)) | close -s $send(%i) } | dec %i } }
  if ($window(@dccola)) dccola -sig
  ;  if (%wredim != $window(-3).w $window(-3).h) encogeui | %wredim = $window(-3).w $window(-3).h
  if $window($active).state == maximized { if ($group(#nomaxwin) == on) && (%modoventana != maxT) { nomaxwin } }
}

AME2 {
  if ($chan(0) < 1) return | var %c = ame describe | if $2 == m { %c = amsg msg }
  if ($3 == $null) && ($4 == $null) { $gettok(%c,1,32) $1 | return }
  if ($3 == $null) { var %i = 1 | :L | var %a = $chan(%i) | if %a == $null return | else { if ($findtok($4,%a,44) == $null) $gettok(%c,2,32) %a $1 | inc %i | goto L } }
  var %i = 1 | :L2 | var %a = $gettok($3,%i,44) | if %a == $null return | else { if ($findtok($4,%a,44) == $null) && ($me ison %a) $gettok(%c,2,32) %a $1 | inc %i | goto L2 }
}

LOADS var %n = s\ $+ $1- | if (.mrc !isin $1-) { %n = %n $+ .mrc } | .load -rs %n
LOADu var %n = s\util\ $+ $1 | if (.mrc !isin $1) { %n = %n $+ .mrc } | unset %tmp.ss1 | if ($2) { %tmp.ss1 = $2 } | .load -rs %n


_CA {
  goto $1

  :MASSM
  var %i = 1 , %usu =  , %nndeop = $modespl
  if (%nndeop < 4) { var %nndeop = 4 }
  var %nnndeop = $2 $+ $str($3,%nndeop)
  :L2
  %usu = %usu $gettok($4-,%i,44)
  if ($gettok($4-,%i,44) == $null) { .raw mode $chan %nnndeop %usu | return }
  if ($numtok(%usu,32) == %nndeop) { .raw mode $chan %nnndeop %usu | %usu = } 
  inc %i
  goto L2

  :BANEAOS
  var %baneao = 1
  :L3
  if $ialchan($2,$3,%baneao).nick == $null { return %banes }
  var %banes = %banes $ialchan($2,$3,%baneao).nick ,
  inc %baneao 1 | goto L3

  :CONFIG
  loads canalcfg
  if $2 == <global> { ccfg | return }
  if $exists(usr\ $+ $remove($2,$chr(35)) $+ .cch) == $true ccfg $2
  else { 
    var %preg $?!=" $mg(ccfgno) "
    if %preg == $true { .copy usr\canalglobal.ini usr\ $+ $remove($2,$chr(35)) $+ .cch | ccfg $2 | ccfg.graba }
    else ccfg
  }
  return

  :SCAN
  if $nick($2,0) > %ial.lim { .timer -m 1 100 echo $2 $logo $mg(ialno) ( > %ial.lim ) | return }
  if $group(#scancanal) == on { %scc.que = %scc.que $2 | return }
  %scc.clon = 0 | %scc.cop = 0 | unset %scc.lcon %scc.lcop %scc.todos
  %scc.canal = $2 | .enable #scancanal | who $2
  return

  :CLONCHAN
  echo -stq $logo $mg(clon1,$2)
  var %co = 1 , %nclo = 0 , %nclox = 0 , %ipmx
  :L4
  var %usu = $nick($2,%co)
  if (%usu == $null) { echo -stq $logo $mg(clon2,%nclo,%nclox) | raya | return }
  if $ipef(%usu) == falsa { inc %ipmx | goto noclo }
  if $ial($address(%usu ,2),0) == 1 goto noclo 
  if $ial($address(%usu ,2),1).nick  == %usu  { var %a = $clones(%usu) | echo -s ( %a ) $gettok($address(%usu ,2),2,64) ( $numtok(%a,32) ) | inc %nclo $ial($address( %usu ,2),0) | dec %nclo | inc %nclox }
  :noclo
  inc %co 1
  goto L4
  return

  :ENTRANDO
  var %acc = usr\ $+ $remove($2,$chr(35)) $+ .cch | if (!$exists(%acc)) { var %acc = usr\canalglobal.ini }
  if ($readini %acc i hola == on) .timer 1 $rand(2,7) msg $2 $remp($inichr($readini %acc i hola2))
  if $me isop $2 {
    if ($readini %acc i modos == on) mode $2 $readini %acc i modos2
    if ($chan($2).topic == $null) && ($readini %acc i topic == on) topic $2 $inichr($readini %acc i topic2)
    if $readini %acc i deop == on { .timerDEOPMI $+ $2 1 10 if $me isop $2 mode $2 -o $me }
  }
  return

  :SALUDA
  if (%tmp.saluda != $null) || ($kprot(#,$3) != 1) { return } | set -u60 %tmp.saluda on
  var %a = usr\ $+ $remove(#,$chr(35)) $+ .cch | if $exists(%a) == $true { var %b = $inichr($readini %a i $4) } | else { var %b = $inichr($readini usr\canalglobal.ini i $4) }
  notice $2 $remp(%b)
  return

  :RNICK
  if $ipef2($2) == falsa return
  var %a = $readini s/log/nicks.log entradas $2
  if (%a != $null) && ($3 != %a) && (%a !ison #) return %a
  return
  :RNICKW
  if ($3 != $null) { writeini s/log/nicks.log entradas $2 $3 }
  if ($lof(s/log/nicks.log) > 30000) { write -c s/log/nicks.log }
  return

  :ULIST
  if $2 == join {
    var %u = $nick $+ ! $+ $address | var %ui = $ulist(%u).info
    if (%au.op == on) && ($ulevel == 10) { if ($chan isin %ui) || ($len(%ui) < 2) { qc mode $chan +o $nick } }
    if (%au.vo == on) && ($ulevel == 7) { if ($chan isin %ui) || ($len(%ui) < 2) { qc mode $chan +v $nick } }
    if (%au.sh == on) && ($ulevel == 5) {
      if ($chan isin $gettok(%ui,1,8)) || ($left(%ui,1) == *) || ($gettok(%ui,1,8) == $null) { 
        var %um = $gettok(%ui,2,8) | if %um == $null { %um = Auto-Kick }
        dopa $chan $nick | mode $chan +b $ulist($nick $+ ! $+ $address) | kick $chan $nick %um
      }
    }
  }
  if $2 == deop {
    if ($level($address($opnick,5)) == 10) && ($nick != $gettok($gettok(%botz,2,32),1,64)) && ($nick != $opnick) && ($nick != $me) { 
      var %u = $address($opnick,5) | var %ui = $ulist(%u).info | if ($chan isin %ui) || ($len(%ui) < 2) { qc dopa $chan $nick | qc mode $chan +o $opnick }
    }
  }
  if $2 == kick {
    if (10 isin $level($address($knick,5))) && ($nick != $me) && ($nick != $knick) { 
      var %u = $address($opnick,5) | var %ui = $ulist(%u).info | if ($chan isin %ui) || ($len(%ui) < 2) { qc dopa $chan $nick }
    }
  }
  if $2 = exe {
    if $3 == P echo $logo $mg(exeusr,%au.op,%au.vo,%au.sh)
    var %i = 1 , %ii = $nick($4,0)
    :LU1
    var %iniv = $level($address($nick($4,%i),5))
    if %iniv > 1 {
      var %ican = $ulist($address($nick($4,%i),5)).info
      if (%iniv == 5) && (%au.sh == on) { if ($4 isin $gettok(%ican,1,8)) || ($left(%ican,1) == *) { 
          var %ulisto.m = $gettok(%ican,2,8) | if (!%ulisto.m) { %ulisto.m = Auto-Kick }
        dopa $4 $nick($4,%i) | ban $4 $nick($4,%i) $kprot($4,1) | kick $4 $nick($4,%i) %ulisto.m }
      }
      if (%iniv == 7) && (%au.vo == on) && ($nick($4,%i) !isvo $4) { if ($4 isin %ican) || ($len(%ican) < 2) { qc mode $4 +v $nick($4,%i) } }
      if (%iniv == 10) && (%au.op == on) && ($nick($4,%i) !isop $4) { if ($4 isin %ican) || ($len(%ican) < 2) { qc mode $4 +o $nick($4,%i) } }
    }
    inc %i | if %i <= %ii goto LU1
  }
  return

  :MDEOP 
  var %i = 0 , %usu =  , %nndeop = $modespl
  if (%nndeop < 4) { var %nndeop = 4 }
  var %nnndeop = - $+ $str(o,%nndeop)
  :LD1
  inc %i | if ($opnick($chan,%i) == $null) goto LD2
  if $opnick($chan,%i) == $me goto LD1
  %usu = %usu $opnick($chan,%i)
  if ($numtok(%usu,32) == %nndeop) { .raw mode $chan %nnndeop %usu | %usu = } 
  goto LD1
  :LD2
  if ($len(%usu) > 0) .raw mode $chan %nnndeop %usu
  echo -ste $mg(masdeop,$chan) ( x %nndeop )
  return

  :IPKICK
  if $ipef2($2) == falsa { return }
  var %mip = $ialchan($me,$3,1) | var %i = $ialchan($2,$3,0) | while (%i > 0) { var %a = $ialchan($2,$3,%i) | if (%a != %mip) qc kick $3 $gettok(%a,1,33) $4- | dec %i }
  return

  :NICKGUARDAPASS
  var %a = $?!=" $mg(gupass,$gettok($2,1,58)) " | if (%a) adpass nick. $+ $nnet $gettok($2,1,58) $gettok($2,2,58)
  return

  :PCKICKBAN
  if $3 == $me return
  if ($me isop $2) { dopa $2 $3 | ban $2 $3 $kprot($2,1) | kick $2 $3 }
  else { set -u15 %tmp.kickban $2 $3 | mcs op $2 $me }
  return
}

DOPA {
  if $ipef($2) == falsa { mode $1 -o $2 | return }
  var %dopn = 1 , %dopm = 0 , %tclon = , %tipoban = 2 | if $3 != $null { var %tipoban = $3 }
  var %nndeop = $modespl | if (%nndeop < 4) { var %nndeop = 4 } | var %nnndeop = - $+ $str(o,%nndeop)
  :L1
  if ($ialchan($address($2,%tipoban),$1,%dopn).nick isop $1) { %tclon = %tclon $ialchan($address($2,%tipoban),$1,%dopn).nick | inc %dopm 1 }
  if %dopm == %nndeop { .raw mode $1 %nnndeop $remove(%tclon,$me) | %tclon = | %dopm = 0 }
  inc %dopn |  if %dopn <= $ialchan($address($2,%tipoban),$1,0) goto L1
  if %tclon != $null .raw mode $1 %nnndeop $remove(%tclon,$me)
  unset %tclon
}

_GUSER {
  if ($1 == virtual) {
    var %i = 1 | :L1 | var %a = $ulist(*,$2,%i) | if %a == $null return
    if ($right(%a,8) == .virtual) && ($right(%a,9) != *.virtual) { var %b = $ulist(*,$2,%i).info | .ruser %a | .auser $2 $gettok(%a,1,64) $+ @*.virtual %b | goto L1 }
    inc %i | goto L1
  }
  else { guser $1- | .timer 1 10 _guser virtual $1 }
}

NOSPAM  if ($len(%spam.txt) < 1) return | var %i = 1 , %s1 = $strip($1-) | :L1 | var %a = $gettok(%spam.txt,%i,22) | if (!%a) return | if (%a iswm %s1) return %a | inc %i | goto L1
URLCAP var %a | if (!$findtok(es cat ga ek,%idioma,1,32)) && (!$1) { var %a = /int } | return www.ircap. $+ $gettok(es com net,$rand(1,3),32) $+ %a
IRCAPWEB {
  if (!$1) url http:// $+ $urlcap
  if ($1 == ayuda) url http:// $+ $urlcap(1) $+ /ayuda
  if ($1 == skins) url http:// $+ $urlcap(1) $+ /skins
  if ($1 == temas) url http:// $+ $urlcap(1) $+ /temas
  if ($1 == addons) url http:// $+ $urlcap(1) $+ /addons
  if ($1 == modulos) url http:// $+ $urlcap(1) $+ /modulos
  if ($1 == lang) url http:// $+ $urlcap(1) $+ /int
}

DNSque {
  goto $1
  :buscahost | echo -s $logo $mg(buscahost,$2,$naddress) | if ($2) who $iaddress | if ($naddress) who $naddress | return
  :exe | $2- | return
  :ipa | .timer -m 1 100 ipa $2-
}

LWHO window -c @lwho | .enable #winwho | .raw who $1-

DDC {
  goto $1
  :reg
  var %n = 50
  :L1
  var %l = $readini s/log/fserve.log $2 $calc(%n - 1)
  if %l != $null writeini s/log/fserve.log $2 %n %l
  dec %n 1 | if %n > 1 goto L1
  var %lof = $lof($gettok($3-,2-99,32)) | if %lof < 1 { %lof = 0 }
  writeini s/log/fserve.log $$2 1 $date $left($time,5) $gettok($3-,1,32) %lof $gettok($3-,2-99,32)
  var %a = $gettok(%dccs.p�1,3,32)
  if (%a == 2) && ($1 == <recibidos>) dccs.pest 2
  if (%a == 3) && ($1 == <enviados>) dccs.pest 3
  if (%a == 4) && ($1 == <pendientes>) dccs.pest 4
  return
}

DCC {
  if (: isin $me) { halt }
  if (%dcc.onos == on) && ($1 == SEND) { if ($tipoext($3-,%dcc.nos) != $null) { echo -ste $logo $mg(dccprob,$3-) | halt } }
  dcc $1-
  echo -ste DCC $1-
}

DCCola {
  if $1 == -sig {
    if ($send(0) >= %fsn) { return }
    var %l = $line(@dccola,1) | if (!%l) { window -c @dccola | return }
    var %n = 1 | :L5 | var %l = $line(@dccola,%n) | if (%l) { 
      var %b = $gettok(%l,1,32) | if ($send(%b,0) < %fsnu) { dcc send -l %b " $+ $gettok(%l,3-,32) $+ " | dline @dccola %n | return }
      inc %n | goto L5
    }
    return
  }
  var %MSG = qc notice $2 | if ($fserv($2)) { %MSG = .msg = $+ $2 }
  if $1 == -bor {
    var %f = $3- | if (%f isnum) { %f = $nopath($gettok($line(@dccola,%f),3-,32)) | if (!%f) return }
    var %a = 1 | :L2 | var %b = $line(@dccola,%a) | if (!%b) { if (%t) %MSG $qemsg($mg(qe1)) | return }
    if $gettok(%b,1,32) == $2 {
      if (%f) { if $nopath($gettok(%b,3-,32)) == %f { dline @dccola %a | %MSG $qemsg($mg(qe9,%f)) | goto L2 } }
      if (!%f) { dline @dccola %a | var %t = 1 | goto L2 }
    }
    inc %a | goto L2
  }
  if $1 == -stat {
    sendstat
    if (msg !isin %MSG) { %MSG $qemsg($mg(qe2,$round($calc($gettok($result,1,32) / 1024),1),$gettok($result,2,32),$nonull($line(@dccola,0)) $+ / $+ %dcque.max,$gettok($result,3-9,32))) }
    var %a = 1 | :L3 | var %b = $line(@dccola,%a) | if (!%b) return
    if $gettok(%b,1,32) == $2 { %MSG $qemsg($mg(qe3,%a,$nopath($gettok(%b,3-,32)),$duration($calc($ctime - $gettok(%b,2,32))))) }
    inc %a | goto L3
  }

  if ($calc($file(" $+ $2- $+ ").size / 1024) <= %dcv.tmin) && ($send(0) < %fsn) { dcc send -l $1 " $+ $2- $+ " | return }

  var %MSG = qc notice $1 | if ($fserv($1)) { %MSG = .msg = $+ $1 }
  var %a = 1 | :L1 | while ($send($1,%a)) { if ($nopath($2-) == $send($1,%a).file) { %MSG $qemsg($mg(qe4,$send($1,%a).file)) | return } | inc %a }
  if ($fline(@dccola,$1 * $2-,0) > 0) { %MSG $qemsg($mg(qe5,$nopath($2-))) | return }
  if ($fline(@dccola,$1 *,0) >= %dcque.umax) { %MSG $qemsg($mg(qe6,%dcque.umax)) | return }
  if ($send(0) < %fsn) && ($send($1,0) < %fsnu) { dcc send -l $1 " $+ $2- $+ " | return }
  if $line(@dccola,0) >= %dcque.max { %MSG $qemsg($mg(qe7)) | return }
  if (!$window(@dccola)) window -hl @dccola 100 100 300 100 | aline @dccola $1 $ctime $2-
  %MSG $qemsg($mg(qe8,$nopath($2-),$line(@dccola,0)))
}
QEMSG var %a = 15,15 1,0 | return 4,4 1,0 $replace($1-,,%a) 4,4 

SENDSTAT {
  if $send(0) < 1 return 0 %fsn $+ / $+ %fsn $gettok($mg(qe0),1,22)
  var %send.n = 1 , %send.vel = 0 , %send.prox 999999999
  :L1
  var %send.v = $send(%send.n).cps
  var %send.te = $int($calc($calc($send(%send.n).size - $send(%send.n).sent) / %send.v))

  %send.vel = $calc(%send.vel + %send.v)
  if (%send.te < %send.prox) && (%send.te > 0) { %send.prox = %send.te }
  inc %send.n 1 | if %send.n <= $send(0) goto L1

  if (%send.prox == 999999999) {
    if ($send(0) < %fsn) { var %send.prox2 = $gettok($mg(qe0),2,22) }
    else { var %send.prox2 = ��� }
  } 
  if (%send.prox != 999999999) {
    if ($send(0) < %fsn) { var %send.prox2 = $gettok($mg(qe0),2,22) }
    else { var %send.prox2 = $duration(%send.prox) }
  }
  var %sendahora = $calc(%fsn - $send(0)) | if %sendahora < 0 { %sendahora = 0 }
  return %send.vel %sendahora $+ / $+ %fsn %send.prox2
}

COMCHA var %a = $comchan($1,1) | if %a == $null { %a = $1 } | return %a

IPA {
  if ($count($2,$chr(46)) == 3) && ($right($2,1) isnum) { var %ipa = $2 | goto L1 }
  if $len($chat($2).ip) > 0 { var %ipa = $chat($2).ip | goto L1 }
  if ($count($2,$chr(46)) >= 2) { var %ipa = $2 | goto L00 }
  if $len($gettok($address($2,2),2,64)) > 1 { var %ipa = $gettok($address($2,2),2,64) | goto L00 }
  if $len($gettok($query($2).address,2,64)) > 0 { var %ipa = $gettok($query($2).address,2,64) | goto L00 }
  :L0
  if $ipef2($2) == falsa { echo -ste $logo $mg(ipx,$2) | halt }
  set -u30 %tmp.dns ipa $1 | dns $2 | return
  :L00
  if ($count(%ipa,$chr(46)) == 3) && ($right(%ipa,1) isnum) goto L1
  if ($findtok(CHAT SEND,$1,32)) goto L0
  :L1
  if $ipef2(%ipa) == falsa { echo -se $logo $mg(ipx,%ipa) | halt }
  if ($1 == PING) { run ping -n 6 %ipa | Echo -ste $logo $mg(tping,icmp,%ipa,$2-) }
  if ($1 == TCPING) { sockclose TCPING | sockopen TCPING %ipa $rand(1,1024) | sockmark TCPING $2- | echo -ste $logo $mg(tping,tcp,%ipa,$2-) | %tmp.tcpping = $ctime }
  if ($1 == CHAT) { dcc CHAT %ipa }
  if ($1 == SEND) { dcc SEND %ipa }
  if %tmp.ipa != $null { %tmp.ipa %ipa | unset %tmp.ipa }
}

_NOVIRS {
  var %i = 1 | :L1 | var %a = " $+ $script(%i) $+ " | if (!%a) return
  if (mirc.chat isin %a) || (versions.txt isin %a) { .timer 1 1 .unload -rs %a }
  var %b = $read(%a,1)
  if (%b != ;IRcap8 $md5($lower($nopath(%a)))) { loads validamrc | novirs.gui %a | return }
  inc %i | goto L1
}

_NOTEMP {
  var %i = 1 | :L1 | var %a = " $+ $script(%i) $+ " | if (!%a) return
  if $read(%a,$lines(%a)) == ;EOF-dt { .unload -rs %a | goto L1 }
  inc %i | goto L1
}

PALACOLOR {
  var %a = "" | var %b = 1
  :L1
  var %c = $gettok($3-,%b,32) | if %c == $null return %a | inc %b
  %a = %a  $+ $1 $+ %c
  var %c = $gettok($3-,%b,32) | if %c == $null return %a | inc %b
  %a = %a  $+ $2 $+ %c
  goto L1
}

IDIOMA {
  var %i2 = %idioma | %idioma = $2
  if ($1 == Cambia) { dina idioma.int $2 %i2 }
  if ($1 == Carga) || ($1 == cambia) { if ($hget(menu)) hfree menu | hmake menu | hload menu "lng\ $+ %idioma $+ \menu.lnh" menu }
  if ($1 == Cambia) { if %m.barra == on bar | if ($isalias(sbarra)) sbarra }
  if ($1 == Cambia) {
    menusetupmod
    dina servertraduc %idioma
    dina serverorg 3
  }
  if ($window(@conn)) { .timerRECONN -m 1 300 serverz | serverz }
  .signal -n IDIOMA %idioma %i2
}

M return $hget(menu,$1)

MG return $_tm($replace($readini(lng\ $+ %idioma $+ \msg.ini,MSG1,$1),&1,$2,&2,$3,&3,$4,&4,$5))

VLOG loadu g-leelog $1

WRITELISTA write -c $2- | var %i = 1 | while ($line($1,%i) != $null) { write $2- $ifmatch | inc %i }

CAMBIAFUENTE {
  var %a = $active | window -a "Status Window" | font | window -a %a
  var %a = $window(Status Window).font ,%b = $window(Status Window).fontsize
  wtemabf %b %a $+  $+ %b %a
}

RRUN {
  if (.com isin $1-) || (.exe isin $1-) || (.bat isin $1-) || (.htm isin $1-) || (.shs isin $1-) || (.src isin $1-) {
    var %a $?!="Vas a ejecutar [ $remove($nopath($1-),") ]  $+ $crlf $+ Al ser un fichero ejecutable podr�a tratarse de un troyano o contener un virus. Deber�as comprobarlo con un antivirus antes de ejecutarlo. $crlf $+ � Est�s seguro ?"
    if %a == $true run $1-
  }
  else run $1-
}

AVP if $exists(%avp) { run %avp " $+ $1- $+ " | echo -ste $logo $mg(avp,$remove($nopath($1-),")) }

DINA .timerDINAFIN off | .load -rs s\dina.mrc | if ($1-) { $1- }

autojoin {
  var %a = $readini %perfil autojoin $nnet
  if $gettok(%a,1,44) == on {
    .timerAUTOJ. $+ $cid  1 5 djoin $gettok(%a,2,44) $gettok(%a,3-,44)
    echo -st $logo $mg(ajcancel,shift + F12,5) | echo -st $logo $gettok(%a,3-,44) | raya | sss noti
  }
}

DJOIN {
  if $1 == 0 { 
    if ($chr(32) !isin $2-) join $2-
    else { var %i = 1 | :L2 | if $gettok($2-,%i,44) != $null { join $ifmatch | inc %i | goto L2 }  }
    return
  }
  var %i = 1 | var %t = 1 | :L1 | var %c = $gettok($2-,%i,44) | if %c == $null return | .timer 1 %t join %c | inc %i | inc %t $1 | goto L1
}

recan if ( $left(%recan,1) == $chr(35) ) { echo -st $logo $mg(recan,Control + F12) | echo -st $logo $replace(%recan,$chr(44),$chr(32)) }

reentra {
  if (!$window(@reentra)) { .timerREBAN off | echo -se $logo $mg(reent1,%reentra) | unset %reentra | halt }
  if ($me ison %reentra) { window -c @reentra | .timerREBAN off | echo -se $logo $mg(reent2,%reentra) | unset %reentra | halt }
  join %reentra
  echo @reentra - | echo @reentra $mg(reent3,%reentra) | echo @reentra $mg(reent4)
}

TAKOP {
  if ($1) { if ($nick($1,0) == 1) && ($me !isop $1) && ($me !isowner $1) { hop $1 | echo -ste $logo $mg(takop,$1) } }
  else { var %i = 1 | :L1 | if ($nick($chan(%i),0) == 1) && ($me !isop $chan(%i)) { hop $chan(%i) | echo -ste $logo $mg(takop,$chan(%i)) } | inc %i | if $chan(0) >= %i goto L1 }
}

SERVER {
  if $isalias(conn.guarda) { conn.guarda }
  var %t = $readini %perfil conex identd | if (!%t) { %t = ircap } | .identd on %t

  .firewall -d off
  var %t = $left($readini %perfil conex tipo,1)
  if (%t == 2) { 
    var %p = $readini %perfil conex s.proto | %p = -m $+ $replace(%p,socks4,4,socks5,5,proxy,p) | .firewall %p $+ +d on $readini %perfil conex s.host $readini %perfil conex s.pt $readini %perfil conex s.pass
  }
  if (%t == 3) { 
    if ($1-) { %bnc.server = $1- } | server $readini %perfil conex b.host $readini %perfil conex b.pt
    return
  }
  server $1-
}
bouncerreplace $replace($3-,&pass,$readini %perfil conex b.pass,&vhost,$readini %perfil conex b.vp,&server,%bnc.server,&me,$me)

PMODO {
  if (!$1) {  mode $me + $+ %umode | return }
  if ($1 isincs %umode) { %umode = $removecs(%umode,$1) | mode $me - $+ $1 } 
  else { %umode = $1 $+ %umode | mode $me + $+ $1 }
}

TOLHFREE {
  if ($script(g-ulista.mrc)) || ($script(g-dccs.mrc)) || ($script(g-canalfav.mrc)) || ($script(g-memosend.mrc)) return
  if ($script(g-leelog.mrc)) || ($script(g-siguenick.mrc)) || ($script(gmod.mrc)) || ($script(botgui.mrc)) return
  if ($hget(tool,1)) hfree tool
}

ELITOPIC {
  if $1 == x { if (<topic> isin %listados.item) { topic $2 $replace(%listados.item,<topic>,$$?=" $mg(topic1) ") } | else topic $2 %listados.item | return }
  loads listador | $listador($mg(topic2),$mg(topic3),usr\topics.txt,elitopic x $1,0)
}

ELISTA {
  if $1 == + {
    var %a = $$?=" $mg(elista) " | if (%elista.t == *) { %a = * $+ %a $+ * } | %a = $remove(%a,$chr(%elista.s))
    if ( %a !isin % [ $+ [ %elista.w ] ] ) { set % [ $+ [ %elista.w ] ] $addtok(% [ $+ [ %elista.w ] ],%a,%elista.s) } | goto llenaElista 
  }
  if $1 == - { var %a = $slinea(%elista.ls1) | if %a == $null return | set % [ $+ [ %elista.w ] ] $remtok(% [ $+ [ %elista.w ] ],%a,1,%elista.s) | goto llenaElista }
  %elista.w = $1 | %elista.s = $2 | %elista.t = $3
  guiwin @eLista c c 140 174
  %elista.bt = 14 140 35 elista_+ +|74 140 35 elista_- -
  %elista.ls1 = 14 36 94 7 1 0 return @elista1
  guidib @elista
  window -aw @elista $calc($mouse.mx - 60) $calc($mouse.my - 30)
  :llenaElista
  window -c @elista1 | window -hls @elista1
  var %v = % [ $+ [ %elista.w ] ] , %n = $numtok(%v,%elista.s) | while (%n > 0) { aline @elista1 $gettok(%v,%n,%elista.s) | dec %n }
  guilista @elista elista.ls1 | drawline @elista
}

EXECOM var %i = 1 | :L1 | var %c = $gettok($1-,%i,124) | if (%c) { .timer -m 1 $calc(%i * 10) %c | inc %i | goto L1 }

QUITMZG set -u1 %quitmzg $replace($replace($read usr\quits.txt,<url>,$urlcap),<ver>,%ircapv) | return %quitmzg

_TM return $replacecs($1-,<B>,,<c1>,$gettok(%tma.K,1,44),<c2>,$gettok(%tma.K,2,44),<c3>,$gettok(%tma.K,3,44),<c4>,$gettok(%tma.K,4,44),<c5>,$gettok(%tma.K,5,44),<c6>,$gettok(%tma.K,6,44),<c7>,$gettok(%tma.K,7,44),<c8>,$gettok(%tma.K,8,44),<c9>,$gettok(%tma.K,9,44),<c10>,$gettok(%tma.K,10,44))
ECOT echo $_tm($1-)
TMA {
  var %a = $_tm($tma2($1,$2,$3,$4,$5,$6,$7,$8))
  if (<alin> isincs %a) { return $alig($left(%a,$calc($pos(%a,<alin>,1) - 1))) $+ $mid(%a,$calc($pos(%a,<alin>,1) + 6),999) }
  return %a
}

ECOVA {
  if $target == $me { echo -st $2- | .timerECOVA 1 1 linesep }
  if $chr(35) isin $target { echo -t $remove($target,@) $2- }
  if $1 == on {
    if ($window($active).type isin channel query chat) && ($remove($target,@) != $active) echo -at $2-
  }
}

ENCOGEui {
  var %ac = $active
  if %m.barra == on bar | if ($isalias(sbarra)) sbarra redib
  sbarset fix
  window -a $replace(%ac,Status Window,"Status Window")
  modoventana %modoventana
  if (%modoventana == maxt) { set -u5 %tmp.noVactiva on }
}

UTIL {
  if ($1 isnum) { 
    var %c = $gettok(%sbm.com,$1,22)
    if (%c) loadu %c
    return 
  }
  var %n = g-canalfavg-ulista-g-leelogg-dccs-g-infodomg-memosendg-siguenick
  var %i = 1 , %u 
  :L1
  var %f = $gettok(%n,%i,22)
  if (%f) { 
    var %nn = $readini(lng\ $+ %idioma $+ \misc.ini,util,%f)
    if (!%nn) { %nn = %f }
    %u = %u $+ %nn $+ 
    %sbm.com = %sbm.com $+ %f $+ 
    inc %i | goto L1 
  }
  smenu util 150 %u
}

COM-IRC {
  if (!$1) { smenu com-irc 150 $mg(ircom2) | return }
  if $1 == 1 ircom nick
  if $1 == 3 ircom whois
  if $1 == 4 ircom query
  if $1 == 6 list
  if $1 == 7 ircom join
  if $1 == 8 loadu g-canalfav
  if $1 == 10 { %apartado = setaway | loads setup }
}

IRCOM {
  goto $1
  :nick | var %a = $$?=" $m(195) " | if (%a) { nick %a } | return
  :whois | var %a = $$?=" $m(195) " | if (%a) { if (* isin %a) lwho * $+ %a $+ * | else whois %a } | return
  :query | q $$?=" $m(195) " | return
  :join | j $$?=" $mg(canal) "
}

exip {
  if @ !isin $1 { return $remove($gettok($1,1,32),$chr(41)) }
  return $remove($gettok($gettok($1,2,64),1,32),$chr(41))
}

AUTOMCONEX {
  var %n = 1 | :L11 | var %a = $readini %perfil autocon %n | if (%a) { 
    if ($gettok(%a,1,8) == on) {
      var %ni = $gettok(%a,3,8) 
      server %multi $gettok(%a,2,8) -i %ni
      var %multi = -m
    }
    inc %n | goto L11  
  }
}

MODULOS loads gmod | cargadormod

MENUSETUPMOD {
  unset %tabsetup.* %modsetup
  var %l = $readini(%perfil,modulos,instalados)
  var %i = 1
  var %lng = es
  :L1
  var %f = $gettok(%l,%i,44)
  if (%f) {
    var %ini = mod\ $+ %f $+ \ $+ %f $+ .ini
    var %tab = $readini(%ini,modulo,tabsetup) , %men = $readini(%ini,modulo,modsetup)
    if (%men) { 
      var %m = $readini(lng\ $+ %idioma $+ \misc.ini,modulo,%f $+ -men)
      if (!%m) { var %m = ~ $+ $readini(lng\ $+ %lng $+ \misc.ini,modulo,%f $+ -men) }
      %modsetup = %modsetup $+ $chr(124) $+ %m $+  $+ $readini(%ini,modulo,modsetupcom)
    }
    if (%tab) { 
      var %m = $readini(lng\ $+ %idioma $+ \misc.ini,modulo,%f $+ -tab)
      if (!%m) { var %m = ~ $+ $readini(lng\ $+ %lng $+ \misc.ini,modulo,%f $+ -tab) }
      var %a = %tabsetup. [ $+ [ $gettok(%tab,1,32) ] ]
      %tabsetup. [ $+ [ $gettok(%tab,1,32) ] ] = $gettok(%a,1,124) $+  $+ $replace(%m,|,) $+ $chr(124) $+ $gettok(%a,2,124) $+  $+ $readini(%ini,modulo,tabsetupcom)
    }
    inc %i | goto L1
  }
}

TIP {
  var %t = $read(lng\ $+ %idioma $+ \tip.txt) | if (!%t) return
  ecot -s <c2> $mg(tip)
  ecot -si1  $remove($replace(%t,<url>,$urlcap),/int)
  raya
}
NONULL return $iif(($1-),$1-,0)
PARTALL if $group(#paner) == on { panerini off | panerini on } | partall

CBOTS if ($netcon(2)) { loads botgui | cbots2 $1- }

guiacolor echo -se 1,0 0 0,1 1 0,2 2 0,3 3 0,4 4 0,5 5 0,6 6 0,7 7 1,8 8 1,9 9 0,10 10 1,11 11 0,12 12 0,13 13 0,14 14 1,15 15 

mos {
  goto $1
  :cap1 | say 4� IRcap %ircapv 4� http:// $+ $urlcap 4� | return
  :ip | say IP: $ip | return
  :url | say URL: $url | return
  :date | say $time � $date � $day | return

  :frase | loads listador | $listador($m(texto),>>> $2 ,$nofile(%perfil) $+ frases.txt,mos frase2 $2 <item>,1) | return
  :frase2 | msg $2 $3- | return
  :asc
  var %f = " $+ $dir="ASCII ?" $mircdiraddons\ascii\*.asc;*.txt $+ " , %l = $lines(%f) , %v = 100
  if %l > 6 { %v = 300 } | if %l > 10 { %v = 500 } | if %l > 15 { %v = 1000 } | play %f  %v
}

ascii {
  if $1 != $null { echo -s $1 = $asc($1) | return }
  set %ac 0
  :L1
  echo -s %ac = $chr(%ac) 14( $width($chr(%ac),tahoma,11) )
  inc %ac 1
  if ( %ac < 256 ) goto L1
  unset %ac
}

sombra {
  set %texto2 $strip(%texto2)
  say %txt  $+ $$2 $+ , $+ $$2 $+ !! $+ %texto2 $+ !!
  say  $+ $$2 $+ , $+ $$2 $+ !! $+  $+ $$1 $+ , $+ $$2 $+ %texto2 $+  $+ $$2 $+ , $+ $$2 $+ !!15,15!!
  say  $+ $$2 $+ , $+ $$2 $+ !! $+ %texto2 $+ !!15,15!!
  say 0,0!! $+ 15,15 $+ %texto2 $+ !!!!
  unset %texto2
}

bucle {
  say 0,0x x x $+ $1 $+ , $+ $1 $+ x $strip($3-) xxxxx
  say 0,0x  $+ $2 $+ , $+ $2 $+ .xx $+ $1 $+ , $+ $1 $+ xx $+ $2 $+ , $+ $2 $+ x $strip($3-) xxxxx.
  say 0,0x  $+ $2 $+ , $+ $2 $+ xx0,0. $+ $1 $+ , $+ $1 $+ xx0,0x12 $3- 0,0x $+ $1 $+ , $+ $1 $+ xx0,0. $+ $2 $+ , $+ $2 $+ xx
  say 0,0x  $+ $2 $+ , $+ $2 $+ .xx $+ $2 $+ , $+ $2 $+ xx $+ $2 $+ , $+ $2 $+ x $strip($3-) x $+ $1 $+ , $+ $1 $+ xx $+ $2 $+ , $+ $2 $+ xx.
  say 0,0x x x $+ $1 $+ , $+ $1 $+ x $strip($3-) xxxxx
}

marco { 
  say  $+ $$2 $+ , $+ $$2 $+!!! $+ $3- $+ !!!!!!!!
  say  $+ $$2 $+ , $+ $$2 $+ !!15,15!!!! $+ $3- $+   $+ $$2 $+ , $+ $$2 $+ !!15,15!!
  say  $+ $$2 $+ , $+ $$2 $+ !!15,15!0,0! $+ $$1 $+ ,0 $+ $3- $+ 0,0!! $+ $$2 $+ , $+ $$2 $+ !!15,15!!
  say  $+ $$2 $+ , $+ $$2 $+ !!15,15!0,0!!15,0 $+ $3- $+ 0,0! $+ $$2 $+ , $+ $$2 $+ !!15,15!!
  say  $+ $$2 $+ , $+ $$2 $+ !!!! $+ $3- $+ !!!!15,15!!
  say 0,0!15,15!!! $+ $3- $+ 15,15!!!!!!
}

rr say $rr1($1-)
rr1 return $replace($1-,a,�,b,�,c,�,d,�,e,�,f,F,g,G,h,H,i,�,j,J,k,]{,l,�,m,M,n,�,o,�,p,�,q,Q,r,�,s,�,t,T,u,�,v,V,w,VV,x,�,y,�,z,Z)

qq say $qq1($1-)
qq1 return $replace($1-,a,4a,b,3B,c,6C,d,7D,e,4e,f,12F,g,13G,h,6H,i,4i,j,J,k,3K,l,L,m,4M,n,6N,o,4o,p,12P,q,Q,r,13R,s,7S,t,T,u,4u,v,V,w,12W,x,7X,y,Y,z,6z,?,12?)

mm say $mm1($1-)
mm1 return $replace($upper($1-),a,a,e,e,i,i,o,o,u,u)

mcolor {
  var %txt = $1- , %t = , %cl = $len(%txt) , %le = 1
  %txt = $replace(%txt,$chr(32),$chr(160))
  :L1
  var %crnd = $rand(1,14) | if (%crnd < 10) { %crnd = 0 $+ %crnd }
  %t = %t $+  $+ %crnd $+ $mid(%txt,%le,1)
  :L2
  inc %le | if (%le <= %cl) goto L1  
  return $replace(%t,08,01)
}

cc say $mcolor($1-)

ll say $ $ll1($1-)
ll1 {
  set %txt $1- | unset %t | set %cl $len(%txt) | set %le 1
  :L1
  if ( $mid(%txt,%le,1) == $chr(32) ) { set %t %t $+  $+ 1, $+ 0 $+ $rand(1,5) $+ $chr(160) $+ $chr(160) | goto L2 }
  set %lco $rand(1,15) | if (%lco < 10) { set %lco 0 $+ %lco } | set %lcol 0
  if ( %lco == 08 ) || ( %lco == 09 ) || ( %lco == 11 ) || ( %lco == 15 ) set %lcol 1
  set %t %t $+  $+ %lcol $+ , $+ %lco $+  $mid(%txt,%le,1)
  :L2
  inc %le 1 | if ( %le <= %cl ) goto L1  
  set %texto %t $+ 15,15�
  unset %t %txt %cl %le %lco %lcol | return %texto
}

malaorto {
  var %tx = $1- | %tx = $replace(%tx,b,v,c,k,g,j,o,0,s,z,ado,ao,ada,a,qu,k,ido,io,ida,ia)
  if ($rand(0,1) == 1 ) { return %tx }
  return $replace(%tx,v,b,j,g,z,s) 
}

dd say $ddd($1-)
ddd {
  set %tx $left($strip($1-),45) | set %le 1 | set %texto 1,15
  :L1
  if ($mid(%tx,%le,1) == $chr(32)) { set %texto %texto $chr(160) } | else set %texto %texto $+ 0(1 $+ $mid(%tx,%le,1) $+ 14)
  inc %le | if (%le <= $len(%tx)) goto L1
  unset %tx %le | return %texto
}

tt say $tt1(%ESle,$1-)

tt1 {
  set %lte $replace($2-,$chr(32),�) | set %lte %lte $+ ���
  %ln = $len(%lte) / 4 | set %ln $int(%ln) | if %ln < 1 set %ln 1
  %li = %ln * 4 | set %lte $left(%lte,%li)
  var %tt1 = 1, %tt2 = 1, %tt3 = 14, %tt4 = 15
  if $1 == 2 { var %tt1 = 5, %tt2 = 04, %tt3 = 4, %tt4 = 07 }
  if $1 == 3 { var %tt1 = 2, %tt2 = 12, %tt3 = 10, %tt4 = 11 }
  if $1 == 4 { var %tt1 = 10, %tt2 = , %tt3 = 03, %tt4 = 09 }
  if $1 == 5 { var %tt1 = 5, %tt2 = 04, %tt3 = 06, %tt4 = 13 }
  set %li 1 | var %lf = %tt1 $+ $mid(%lte,%li,%ln)
  inc %li %ln | var %lf = %lf $+ %tt2 $+ $mid(%lte,%li,%ln)
  inc %li %ln | var %lf = %lf $+ %tt3 $+ $mid(%lte,%li,%ln)
  inc %li %ln | var %lf = %lf $+ %tt4 $+ $mid(%lte,%li,%ln)
  unset %lte %ln %li | return $replace(%lf,�,$chr(32))
}

listscroll {
  if $1 == ini { 
    var %w = % [ $+ [ $3 ] ] , %n = $fline($gettok(%w,8,32),$4- $+ i*,0) , %i = $fline($gettok(%w,8,32),$4- $+ g*,1) , %pl = $gettok(%w,5,32), %pri = $calc(%i - %pl) , %ca = $calc((%i + %n) - $gettok(%w,5,32) - $gettok(%w,4,32) + 1)
    if %ca < %pri { %pri = %ca } | if %pri > 0 .timerSCROLL -mo %pri 20 listscroll $2- | return 
  }
  var %a = $gettok(% [ $+ [ $2 ] ],5,32)
  inc %a | % [ $+ [ $2 ] ] = $gettok(% [ $+ [ $2 ] ],1-4,32) %a $gettok(% [ $+ [ $2 ] ],6-,32) 
  guilista $1 $2 | drawline $1
}

TTTIP {
  if $1 == $fin$ { if $abs($calc(($mouse.dy + $mouse.dx) - %tmp.tttip.pos)) > 8 { unset %tmp.tttip.pos | tttipfunde ini }  | return }
  if %tttip != on return

  var %al = $calc($numtok($1-,22) * 14 + 8)
  var %an = $width($gettok($1-,1,22),Tahoma,11,1) , %i = 2
  while ($gettok($1-,%i,22)) { if ($width($gettok($1-,%i,22),Tahoma,11,0) > %an) { %an = $width($gettok($1-,%i,22),Tahoma,11,0) } | inc %i }

  setlayer 255 @tttip
  var %x = $mouse.dx , %y = $calc($mouse.dy + 22)
  if $calc(%x + %an + 16) > $window(-1).w { %x = $calc($window(-1).w - %an - 16) }
  if $calc(%y + %al + 32) > $window(-1).h { %y = $calc($window(-1).h - %al - 32) }

  .timerTTTIP off | window -c @tttip | window -pkdoihn +dL @tttip %x %y $calc(%an + 16) %al

  drawrect -rnf @tttip $rgb(255,216,77) 1 0 0 $calc(%an + 16) %al
  drawrect -rn @tttip $rgb(80,105,233) 1 0 0 $calc(%an + 16) %al

  var %i = 1 , %y = 4 | While ($gettok($1-,%i,22)) { 
    var %o = -rnc | if ( isin $gettok($1-,%i,22)) { %o = -rnco }
    drawtext %o @tttip $rgb(9,9,9) Tahoma 11 8 %y %an 14 $strip($gettok($1-,%i,22)) | inc %y 14 | inc %i 
  }

  drawline @tttip | window -o @tttip
  %tmp.tttip.pos = $calc($mouse.dy + $mouse.dx) | .timerTTTIP -m 0 100 tttip $fin$
}

TTTIPfunde {
  if $1 == ini { set -u2 %tmp.tttipfunde 254 | .timerTTTIP -moi 255 1 TTTIPfunde }
  if (%tmp.tttipfunde < 255) setlayer %tmp.tttipfunde @tttip
  if (%tmp.tttipfunde > 0) dec %tmp.tttipfunde 16 | else { .timerTTTIP OFF | unset %tmp.tttipfunde | window -c @tttip | setlayer 255 @tttip }
}
;setlayer return

PREGUNTA {
  if ($1 == SI) { var %a = $gettok($gettok(% [ $+ [ $remove($active,@) $+ .op ] ],1,124),4-,32) | $replace($gettok(%a,1,124),$chr(8),|) | $replace($gettok(%a,2,124),$chr(8),|) | $replace($gettok(%a,3,124),$chr(8),|) | guicierra $active | return }
  if ($1 == NO) { var %a = $gettok($gettok(% [ $+ [ $remove($active,@) $+ .op ] ],2,124),4-,32) | $replace($gettok(%a,1,124),$chr(8),|) | $replace($gettok(%a,2,124),$chr(8),|) | $replace($gettok(%a,3,124),$chr(8),|) | guicierra $active | return }
  var %r = $rand(1,9999999)
  var %w = @tmp.PREG. $+ %r
  var %l = $calc($wrap($gettok($1-,1,22),verdana,11,240,0) * 13)
  guiwin %w c c 300 $calc(110 + %l) ???
  cuag %w 20 40 260 $calc(17 + %l) gui
  set [ % [ $+ tmp.preg. $+ [ %r ] $+ .bt ] ] 170 $calc(70 + %l) 50 pregunta_si $mg(si) |60 $calc(70 + %l) 50 pregunta_no $mg(no)
  set [ % [ $+ tmp.preg. $+ [ %r ] $+ .op ] ] 10 1000 bip $replace($gettok($1-,-2,22),|,$chr(8)) |10 1000 bip $replace($gettok($1-,-1,22),|,$chr(8))
  guidib %w
  dibutext 240 %w Verdana 11 32 48 $remp($gettok($1-,1,22))
  window $iif($appstate == tray,-w,-a) %w
}

SBARSET {
  var %m = sba. $+ $2
  if $1 == + {  if (%m !isin %sbarra) { %sbarra = %sbarra %m 9999 } }
  if $1 == - { var %a = $findtok(%sbarra,%m,1,32) | if (%a) && ($numtok(%sbarra,32) > 3) { %sbarra = $deltok(%sbarra,%a,32) | %sbarra = $deltok(%sbarra,%a,32) } }
  if $1 == + || $1 == fix {
    var %i = 3 , %h = $int($calc($window(@sba).h / (($numtok(%sbarra,32) - 1) / 2) - 14))
    :L1 | var %a = $gettok(%sbarra,%i,32) | if (%a) { %sbarra = $puttok(%sbarra,%h,%i,32) | inc %i 2 | goto L1 }
  }
  %sbarra = $deltok(%sbarra,-1,32) 9999
  if ($isalias(sbarra)) { if (!$isalias(sssbar)) { loads setup_skins | sssbar cierra | sssbar carga | .unload -rs setup_skins.mrc } | else { sssbar cierra | sssbar carga } | sbarra }
}
DECOPROT if (unset isin $1-) || (*$*eval* iswm $1-) || (*$*remove* iswm $1-) || (*$*d*e*c*o*d*e* iswm $1-) || (/clearall isin $1) { if (!$?!=" $mg(nodecode,$remove($1-,")) ") halt }

XMLTAG var %a = $pos($1,< $+ $2) , %b = $pos($1,</ $+ $2 $+ >) , %c = $pos($1,< $+ $2 $+ />) | if (%c) { return } | else { return $gettok($mid($1,%a,$calc(%b - %a)),2,62) }

SINHTML { 
  var %a =  $+ $1- $+ 
  if (< !isin $gettok(%a,1,62)) { if (> isin %a) %a =  $+ $gettok(%a,2-,62) }
  :L1 | if (*<*>* iswm %a) { %a = $gettok(%a,1,60) $+ $gettok(%a,2-,62) | goto L1 }
  return $replace($remove($gettok(%a,1,60),),&nbsp;,$chr(32))
}

DECODE64 {
  if (!$1) return
  var %t = $remove($1,=) , %n = 1 , %nb = 1, %b , %c
  :L1
  %c = $mid(%t,%n,1) 
  if (%c != $null) {
    var %x = $calc($poscs(ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/,%c) - 1)
    %b = %b $+ $base(%x,10,2,6)
    if ($len(%b) > 7) {
      bset -c &a %nb $base($left(%b,8),2,10) | inc %nb
      %b = $mid(%b,9,8)
    }  
    inc %n
    goto L1
  }
  return $bvar(&a,1,999).text
}

MODOVENTANA {
  if ($1) { %modoventana = $1 }
  var %x = $window(@sba).w , %y = $window(@barra).h , %w = $calc($window(-3).w - %x) , %h = $calc($window(-3).h - %y) , %pan = $group(#paner) , %ac = $active , %cid = $cid
  panerini off
  set -u5 %tmp.noVactiva on
  var %sn = 1 | :L0
  if ($scon(%sn)) {
    scon %sn
    var %hh = 2 | if ($1 == mix) { %hh = 3 }
    window "Status Window" %x $int($calc(%y + (%h / %hh) - 2)) $int($calc(%w / 2)) $int($calc(%h / %hh))
    var %n = 1 , %a | :L1 | %a = $window(*,%n) 
    if (%a) { 
      var %t = $window(%a).type
      if (%t isin channel query chat custom chanlist) {
        window $replace(%a,Channels list,"Channels list") $calc(%x + $rand(0,100)) $calc(%y + $rand(0,100)) $int($calc(%w / 2)) $int($calc(%h / 2))
      }
      if (%t isin picture) {
        if (%a !isin @sba @barra) && (@paner !isin %a) { window %a %x %y }
      }
      inc %n | goto L1 
    }
    inc %sn | goto L0
  }
  var %a = $window(@sba).w $+ , $+ $int($calc(%w / 2)) $+ , $+ $window(@barra).h $+ , $+ $int($calc(%h / 2)) $+ ,0,1,0
  ;  writeini mirc.ini windows wdchannel %a
  ;  writeini mirc.ini windows wdquery %a
  ;  writeini mirc.ini windows wdchat %a

  var %w = "Status Window"
  window -a %w
  window -r %w
  var %w = Status Window
  wingest

  if (%pan == on) { panerini on }
  .timerREAC -m 1 200 scid %cid window -a $replace(%ac,Status Window,"Status Window")
  writeini mirc.ini Windows Status $window(%w).x $+ , $+ $window(%w).w $+ , $+ $window(%w).y $+ , $+ $window(%w).h $+ ,0,1,0
  unset %tmp.noVactiva
}

alias SACASEEN {
  var %seen.n $readini s/log/seen.log entradas $1
  if %seen.n != $null {
    var %seen.d = $gettok(%seen.n,2,32)
    var %seen.c = $gettok(%seen.n,3,32) | if %seen.c != $null { %seen.c = en el canal %seen.c }
    return 0,7 !seen 15,15? $1 3[ $+ $gettok(%seen.n,1,32) $+ ]2, vist@ el d?a $asctime(%seen.d,d) de $asctime(%seen.d,mmm) a las $asctime(%seen.d,hh) $+ : $+ $asctime(%seen.d,nn tt) ( hace $replace($replace($duration($calc($ctime - %seen.d)),day,d?a),wk,sem.) ) %seen.c
  }
}

/hola /msg $chan  ("\(^_^)/") ("\(^_^)/") ("\(^_^)/")

/irme {

  /mode #test -o kuakman
  /mode #valladolid -o kuakman
  /mode #murcia -o kuakman
  /mode #alicante -o kuakman
  /mode #las_palmas -o kuakman

}

/volvi {

  /msg chan op #test
  /msg chan op #valladolid
  /msg chan op #murcia
  /msg chan op #alicante
  /msg chan op #las_palmas




}

/alicante /msg chan invite #alicante_ops

/ruleta {
  /msg # @ruleta.suerte
}


alias kb {
  .raw -q mode # +b $address($1,1) $crlf kick # $1 $iif($2,: $+ $2)
}

/alias {
    run c:\mirc\apuntes.text
}


;EOF
