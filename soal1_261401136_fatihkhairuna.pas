

program soal1;

var
  N, i: integer;
  Harga, Total, Diskon: real;

begin
  write('Jumlah barang: ');
  readln(N);

  Total := 0;

  for i := 1 to N do
  begin
    write('Harga barang ke-', i, ': ');
    readln(Harga);
    Total := Total + Harga;
  end;

  if Total < 100000 then
    Diskon := 0
  else if Total < 500000 then
    Diskon := Total * 10 / 100
  else
    Diskon := Total * 20 / 100;

  writeln('Total belanja: Rp', Total:0:0);
  writeln('Diskon: Rp', Diskon:0:0);
  writeln('Total bayar: Rp', Total - Diskon:0:0);

  readln;
end.
