PROGRAM SarahRevere(INPUT, OUTPUT);
{����� ᮮ�饭�� � ⮬ ��� ���� ��⠭��,
� ����ᨬ��� �� ⮣�, ���� �� �室� ����砥���
'land' ��� 'sea'.}
VAR
  W1, W2, W3, W4, Looking: CHAR;
BEGIN {SarahRevere}
  BEGIN {���樠������ W1,W2,W3,W4,Looking}
    W1 := ' ';
    W2 := ' ';
    W3 := ' ';
    W4 := ' ';
    Looking := 'Y';
  END;
  WHILE Looking = 'Y'
  DO
    BEGIN
      BEGIN { ������� ����, �஢����� ����� ������}
        W1 := W2;
        W2 := W3;
        W3 := W4;
        READ(W4);
        IF W4 = '#'
        THEN {����� ������}
          Looking := 'N'
      END;
      BEGIN {�஢�ઠ ���� ��� 'land'}
        IF W1 = 'l'
        THEN
          IF W2 = 'a'
          THEN
            IF W3 = 'n'
            THEN
              IF W4 = 'd'
              THEN {'land' �������}
                Looking := 'L'
      END;
      BEGIN {�஢�ઠ ���� ��� 'sea'}
        IF W2 = 's'
        THEN
          IF W3 = 'e'
          THEN
            IF W4 = 'a'
            THEN {'sea' �������}
              Looking := 'S'
      END;
      BEGIN {�஢�ઠ ���� ��� 'air'}
        IF W2 = 'a'
        THEN
          IF W3 = 'i'
          THEN
            IF W4 = 'r'
            THEN {'air' �������}
              Looking := 'A'
      END
    END;
  WRITELN;
  BEGIN {ᮧ���� ᮮ�饭�� Sarah}
    IF Looking = 'L'
    THEN
      WRITELN('The British are coming by land.')
    ELSE
      IF Looking = 'S'
      THEN
        WRITELN('The British coming by sea.')
      ELSE
        IF Looking = 'A'
        THEN
          WRITELN('The British are coming by air.')
        ELSE
          WRITELN('Sarah didn''t say')
  END
END. {SarahRevere}