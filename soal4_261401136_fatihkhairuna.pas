program soal4;

var
  pilihan: integer;
  angka1, angka2: real;
  hasil: real;
  ulang: char;
  hasilDiv, hasilMod: integer;

begin
  repeat

    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');

    
    write('Pilih operasi (1-5): ');
    readln(pilihan);

    write('Masukkan angka pertama: ');
    readln(angka1);

    write('Masukkan angka kedua: ');
    readln(angka2);

    case pilihan of
      1:
        begin
          hasil := angka1 + angka2;
          writeln('Hasil penjumlahan = ', hasil:0:2);
        end;

      2:
        begin
          hasil := angka1 - angka2;
          writeln('Hasil pengurangan = ', hasil:0:2);
        end;

      3:
        begin
          hasil := angka1 * angka2;
          writeln('Hasil perkalian = ', hasil:0:2);
        end;

      4:
        begin
          if angka2 <> 0 then
          begin
            hasil := angka1 / angka2;
            writeln('Hasil pembagian = ', hasil:0:2);
          end
          else
            writeln('Error: Tidak dapat membagi dengan nol.');
        end;

      5:
        begin
          hasilDiv := trunc(angka1) div trunc(angka2);
          hasilMod := trunc(angka1) mod trunc(angka2);

          writeln('Hasil DIV = ', hasilDiv);
          writeln('Hasil MOD = ', hasilMod);
        end;

    else
      writeln('Pilihan operasi tidak valid.');
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);
    writeln;

  until (ulang = 'T') or (ulang = 't');

  writeln('Program selesai. Terima kasih!');
  readln;
end.