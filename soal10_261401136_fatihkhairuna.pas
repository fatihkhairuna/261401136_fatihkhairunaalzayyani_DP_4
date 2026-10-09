program soal10;

var
  Angka : integer;
  Hari  : string;

begin

  repeat
    write('Masukkan angka (1-7) : ');
    readln(Angka);
    if (Angka < 1) or (Angka > 7) then
      writeln('Angka harus antara 1 sampai 7!');
  until (Angka >= 1) and (Angka <= 7);


  case Angka of
    1: Hari := 'Senin';
    2: Hari := 'Selasa';
    3: Hari := 'Rabu';
    4: Hari := 'Kamis';
    5: Hari := 'Jumat';
    6: Hari := 'Sabtu';
    7: Hari := 'Minggu';
  end;


  writeln('Hari ', Hari);

  readln;
end.