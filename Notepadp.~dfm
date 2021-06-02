object Form1: TForm1
  Left = 321
  Top = 380
  Width = 551
  Height = 429
  Caption = 'NotePad'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Rc1: TRichEdit
    Left = 0
    Top = 0
    Width = 535
    Height = 360
    Align = alClient
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 64256
    Font.Height = -18
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PlainText = True
    PopupMenu = PopupMenu1
    ScrollBars = ssVertical
    TabOrder = 0
    OnChange = Rc1Change
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 360
    Width = 535
    Height = 10
    Align = alBottom
    Smooth = True
    Step = 1
    TabOrder = 1
    Visible = False
  end
  object lb: TListBox
    Left = 88
    Top = 192
    Width = 49
    Height = 97
    ItemHeight = 13
    TabOrder = 2
    Visible = False
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 160
    object File1: TMenuItem
      Caption = '&File'
      object New1: TMenuItem
        Caption = '&New'
        ShortCut = 16462
        OnClick = New1Click
      end
      object Open1: TMenuItem
        Caption = '&Open '
        ShortCut = 16463
        OnClick = Open1Click
      end
      object Save1: TMenuItem
        Caption = '&Save'
        ShortCut = 16467
        OnClick = Save1Click
      end
      object SaveAs1: TMenuItem
        Caption = 'Save &As...'
        ShortCut = 16452
        OnClick = SaveAs1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = '&Exit'
        ShortCut = 32883
        OnClick = Exit1Click
      end
    end
    object Dzen1: TMenuItem
      Caption = '&Layout'
      object Undo1: TMenuItem
        Action = EditUndo1
        Caption = '&Undo'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Cut1: TMenuItem
        Action = EditCut1
        Caption = '&Cut'
      end
      object Copy1: TMenuItem
        Action = EditCopy1
        Caption = 'C&opy'
      end
      object Paste1: TMenuItem
        Action = EditPaste1
        Caption = '&Paste'
      end
      object Delete1: TMenuItem
        Caption = '&Delete'
        ImageIndex = 5
        ShortCut = 46
        OnClick = Delete1Click
      end
      object SelAll1: TMenuItem
        Action = EditSelectAll1
        Caption = '&Select All'
        ShortCut = 16449
      end
    end
    object Biim1: TMenuItem
      Caption = '&Format'
      object Font1: TMenuItem
        Caption = '&Font'
        ShortCut = 115
        OnClick = Font1Click
      end
      object StText1: TMenuItem
        Caption = '&Standard Text'
        ShortCut = 118
        OnClick = StText1Click
      end
      object TextC1: TMenuItem
        Caption = '&Text Color'
        ShortCut = 116
        OnClick = TextC1Click
      end
      object Back1: TMenuItem
        Caption = '&Background'
        ShortCut = 117
        OnClick = Back1Click
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 8
    Top = 192
    object Undo2: TMenuItem
      Action = EditUndo1
      Caption = '&Undo'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Cut2: TMenuItem
      Action = EditCut1
      Caption = '&Cut'
    end
    object Copy2: TMenuItem
      Action = EditCopy1
      Caption = 'C&opy'
    end
    object Paste2: TMenuItem
      Action = EditPaste1
      Caption = '&Paste'
    end
    object Delete2: TMenuItem
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
      ShortCut = 46
      OnClick = Delete1Click
    end
    object SelAll2: TMenuItem
      Action = EditSelectAll1
      Caption = '&Select All'
      Hint = 'Select All'
      ShortCut = 16449
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object FontStyle2: TMenuItem
      Caption = '&Font Style'
      Hint = 'Font Style'
      ShortCut = 115
      OnClick = Font1Click
    end
    object FontC2: TMenuItem
      Caption = 'Font Colo&r'
      Hint = 'Font Color'
      ShortCut = 116
      OnClick = TextC1Click
    end
    object Back2: TMenuItem
      Caption = '&Background'
      Hint = 'Background Color'
      ShortCut = 117
      OnClick = Back1Click
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'txt'
    Filter = 'Text dosya  (*.txt)|*.txt|T'#252'm'#252'  (*.*)|*.*'
    Options = [ofHideReadOnly]
    Title = 'DOSYA SE'#199
    Left = 8
    Top = 224
  end
  object ColorDialog1: TColorDialog
    Left = 8
    Top = 288
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Text dosya  (*.txt)|*.txt|T'#252'm'#252'  (*.*)|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 8
    Top = 256
  end
  object ActionList1: TActionList
    Left = 40
    Top = 160
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = '&Geri al'
      ImageIndex = 3
      ShortCut = 32776
    end
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = '&Kes'
      Hint = 'Cut'
      ImageIndex = 0
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = 'K&opyala'
      Hint = 'Copy'
      ImageIndex = 1
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&Yap'#305#351't'#305'r'
      Hint = 'Paste'
      ImageIndex = 2
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = '&T'#252'm'#252'n'#252' se'#231
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Left = 40
    Top = 192
  end
end
