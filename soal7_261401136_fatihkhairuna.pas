program soal7;

var
  Kode  : char;
  Lama  : integer;
  Tarif : longint;
  Valid : boolean;

begin
  
  write('Kode kendaraan (M/K/B) : ');
  readln(Kode);
  Kode := upcase(Kode);   
  
  repeat
    write('Lama parkir (jam)      : ');
    readln(Lama);
    if Lama < 1 then
      writeln('Lama parkir minimal 1 jam!');
  until Lama >= 1;

  Valid := true;

  
  case Kode of
    'M': if Lama > 10 then
           Tarif := 30000
         else
           Tarif := 5000 + (Lama - 1) * 3000;

    'K': if Lama > 10 then
           Tarif := 10000
         else
           Tarif := 2000 + (Lama - 1) * 1000;

    'B': if Lama > 10 then
           Tarif := 50000
         else
           Tarif := 10000 + (Lama - 1) * 5000;
  else
    begin
      Valid := false;
      writeln('Kode kendaraan tidak valid!');
    end;
  end;

  
  if Valid then
  begin
    writeln;
  
    writeln('Kode kendaraan : ', Kode);
    writeln('Lama parkir    : ', Lama, ' jam');
    writeln('Total tarif    : Rp', Tarif);
  end;

  readln;
end.