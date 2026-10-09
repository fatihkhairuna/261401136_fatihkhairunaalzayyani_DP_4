program soal6;

var
  Tugas, UTS, UAS, NilaiAkhir, Kehadiran: real;
  Indeks: char;
  Status: string;

begin
  write('Nilai Tugas  : ');
  readln(Tugas);
  write('Nilai UTS  : ');
  readln(UTS);
  write('Nilai UAS  : ');
  readln(UAS);
  write('Kehadiran (%) : ');
  readln(Kehadiran);

 
  NilaiAkhir := (Tugas * 0.30) + (UTS * 0.30) + (UAS * 0.40);

  if (NilaiAkhir >= 60) and (Kehadiran >= 80) then
    Status := 'LULUS'
  else
    Status := 'TIDAK LULUS';

  
  if NilaiAkhir >= 85 then
    Indeks := 'A'
  else if NilaiAkhir >= 75 then
    Indeks := 'B'
  else if NilaiAkhir >= 60 then
    Indeks := 'C'
  else if NilaiAkhir >= 50 then
    Indeks := 'D'
  else
    Indeks := 'E';


  writeln;

  writeln('Nilai Akhir  : ', NilaiAkhir:0:2);
  writeln('Indeks Huruf : ', Indeks);
  writeln('Status       : ', Status);

  readln;
end.