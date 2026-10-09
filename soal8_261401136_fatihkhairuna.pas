program GajiKaryawan;

var
  Golongan  : char;
  JamKerja, jamlembur : integer;
  GajiPokok, lembur, bonus, totalgaji : longint;
  Valid     : boolean;

begin
  write('Golongan (A/B/C) : ');
  readln(Golongan);



  repeat
    write('Total jam kerja  : ');
    readln(JamKerja);
    if JamKerja < 0 then
      writeln('Jam kerja tidak boleh negatif!');
  until JamKerja >= 0;

  Valid := true;
  GajiPokok := 0;

  case Golongan of
    'A': GajiPokok := 1500000;
    'B': GajiPokok := 2000000;
    'C': GajiPokok := 2500000;
  else
    begin
      Valid := false;
      writeln('Golongan tidak valid!');
    end;
  end;

  if Valid then
  begin
    if JamKerja > 40 then
      JamLembur := JamKerja - 40
    else
      JamLembur := 0;

    Lembur := JamLembur * 20000;

   
    Bonus := 0;
    if (Golongan = 'C') and (JamKerja > 50) then
      Bonus := 100000;


    TotalGaji := GajiPokok + Lembur + Bonus;

    writeln;

    writeln('Golongan    : ', Golongan);
    writeln('Jam kerja   : ', JamKerja, ' jam (lembur ', JamLembur, ' jam)');

    writeln('Gaji Pokok  : Rp', GajiPokok);
    writeln('Lembur      : Rp', Lembur);
    writeln('Bonus       : Rp', Bonus);

    writeln('Total Gaji  : Rp', TotalGaji);
  end;

  readln;
end.