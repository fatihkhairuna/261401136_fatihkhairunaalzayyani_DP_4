program soal9;

var
  Tahun, Bulan, Hari : integer;
  Kabisat            : boolean;

begin

  repeat
    write('Masukkan tahun: ');
    readln(Tahun);
    if Tahun < 1 then
      writeln('Tahun harus lebih dari 0!');
  until Tahun >= 1;


  repeat
    write('Masukkan bulan (1-12) : ');
    readln(Bulan);
    if (Bulan < 1) or (Bulan > 12) then
      writeln('Bulan harus antara 1 sampai 12!');
  until (Bulan >= 1) and (Bulan <= 12);


  if (Tahun mod 400 = 0) or ((Tahun mod 4 = 0) and (Tahun mod 100 <> 0)) then
    Kabisat := true
  else
    Kabisat := false;


  case Bulan of
    1, 3, 5, 7, 8, 10, 12: Hari := 31;
    4, 6, 9, 11          : Hari := 30;
    2: if Kabisat then
         Hari := 29
       else
         Hari := 28;
  end;


  writeln;

  writeln('Tahun  : ', Tahun);
  if Kabisat then
    writeln('Status : Tahun Kabisat')
  else
    writeln('Status : Bukan Tahun Kabisat');
  writeln('Bulan ', Bulan, ' memiliki ', Hari, ' hari');

  readln;
end.