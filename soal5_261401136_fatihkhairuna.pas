program soal5;

var
  M, N: integer;
  i, j: integer;
  nilai, total, rata: real;
  lulus, tidakLulus: integer;

begin
  write('Masukkan jumlah mahasiswa (M): ');
  readln(M);

  write('Masukkan jumlah tugas (N): ');
  readln(N);

  lulus := 0;
  tidakLulus := 0;

  writeln;


  for i := 1 to M do
  begin
    total := 0;

    writeln;
    writeln('Mahasiswa ke-', i);

    for j := 1 to N do
    begin
      write('Nilai tugas ke-', j, ': ');
      readln(nilai);

      total := total + nilai;
    end;

    rata := total / N;

    writeln('Rata-rata = ', rata:0:2);

    if rata >= 65 then
    begin
      writeln('Status = LULUS');
      lulus := lulus + 1;
    end
    else
    begin
      writeln('Status = TIDAK LULUS');
      tidakLulus := tidakLulus + 1;
    end;
  end;

  writeln;
  
  writeln('Total mahasiswa LULUS       : ', lulus);
  writeln('Total mahasiswa TIDAK LULUS : ', tidakLulus);


  readln;
end.