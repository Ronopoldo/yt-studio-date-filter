{$apptype windows}
{$reference 'System.Windows.Forms.dll'}

uses 
  System.Windows.Forms;
//  System.Windows.Forms;
var
  output: string;
  d1, y1, d2, y2, m1, m2: integer;
  cycle, cycle1, cycle2: boolean;

begin
  while cycle = false do
  begin
    cycle1 := false;
    cycle2 := false;
    WriteLn('Welcome to Date Range Filter for YTStudio, this tool');
    Writeln('allows You using a range of dates generate a link');
    WriteLn('that will show all your videos');
    Writeln('from YT Studio in this date range');
    WriteLn();
    WriteLn();
    Writeln('After input this soft will open your browser and link');
    Writeln('will be in your clipboard');
    Writeln();
    WriteLn();
    Writeln('WARNING! END DATE MUST BE BEFORE START DATE. IN OTHER');
    WriteLn('YOU WILL GET 0 VIDEOS');
    WriteLn();
    Writeln();
    WriteLn();
    WriteLn();
    Writeln('Start date:');
    readLn(d1);
    Writeln('Start month:');
    readLn(m1);
    Writeln('Start year:');
    readLn(y1);
    Writeln('End date:');
    readLn(d2);
    Writeln('End month:');
    readLn(m2);
    Writeln('End year:');
    readLn(y2);
    if ((d1 > 0) and (d2 > 0) and (m1 > 0) and (m2 > 0) and (m1 <= 12) and (m2 <= 12)) then
    begin
      if ((m1 = 1) and (d1 <= 31)) then cycle1 := true;
      if ((m1 = 2) and (d1 <= 29)) then cycle1 := true;
      if ((m1 = 3) and (d1 <= 31)) then cycle1 := true;
      if ((m1 = 4) and (d1 <= 30)) then cycle1 := true;
      if ((m1 = 5) and (d1 <= 31)) then cycle1 := true;
      if ((m1 = 6) and (d1 <= 30)) then cycle1 := true;
      if ((m1 = 7) and (d1 <= 31)) then cycle1 := true;
      if ((m1 = 8) and (d1 <= 31)) then cycle1 := true;
      if ((m1 = 9) and (d1 <= 30)) then cycle1 := true;
      if ((m1 = 10) and (d1 <= 31)) then cycle1 := true;
      if ((m1 = 11) and (d1 <= 30)) then cycle1 := true;
      if ((m1 = 12) and (d1 <= 31)) then cycle1 := true;
   
      if ((m2 = 1) and (d2 <= 31)) then cycle2 := true;
      if ((m2 = 2) and (d2 <= 29)) then cycle2 := true;
      if ((m2 = 3) and (d2 <= 31)) then cycle2 := true;
      if ((m2 = 4) and (d2 <= 30)) then cycle2 := true;
      if ((m2 = 5) and (d2 <= 31)) then cycle2 := true;
      if ((m2 = 6) and (d2 <= 30)) then cycle2 := true;
      if ((m2 = 7) and (d2 <= 31)) then cycle2 := true;
      if ((m2 = 8) and (d2 <= 31)) then cycle2 := true;
      if ((m2 = 9) and (d2 <= 30)) then cycle2 := true;
      if ((m2 = 10) and (d2 <= 31)) then cycle2 := true;
      if ((m2 = 11) and (d2 <= 30)) then cycle2 := true;
      if ((m2 = 12) and (d2 <= 31)) then cycle2 := true;
    end;
        Writeln();
    Writeln();
    Writeln();
    Writeln();
    Writeln();
    Writeln();
    Writeln();
    Writeln();
    Writeln();
    Writeln();
    if ((cycle1 = true) and (cycle2 = true)) then cycle := true else
      writeLn('Some data looks incorrect :/ Try again (or write a bug report)');

    Writeln();
    Writeln();
    WriteLn();
  end;
  output := 'https://studio.youtube.com/channel/UCP2oEd3q8m4JAIZ5rfSQZAA/videos/upload?filter=%5B%7B%22name%22%3A%22VIDEO_DATE%22%2C%22value%22%3A%7B%22end%22%3A%7B%22day%22%3A' + IntToStr(d2) + '%2C%22month%22%3A' +  IntToStr(m2 - 1) + '%2C%22year%22%3A' +  IntToStr(y2) + '%7D%2C%22start%22%3A%7B%22day%22%3A' +  IntToStr(d1) + '%2C%22month%22%3A' +  IntToStr(m1 - 1) + '%2C%22year%22%3A' +  IntToStr(y1) + '%7D%7D%7D%5D';
  Clipboard.SetText(output); 
  Writeln('COPIED SUCSESSFULLY! (you do not need to do anything - link already in clipboard)');
  Writeln(output);
  Exec(output);
  Writeln();
  Writeln('Automatic closing in 2 seconds..');
  Writeln();
  Writeln();
  Writeln();
  Writeln();
  Writeln();
  Writeln();
  Writeln();
  Writeln();
  Writeln('Written by Ronopoldo on 11 of November, 2022');
  Sleep(2000);
end.