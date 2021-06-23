object RepStock: TRepStock
  Left = 209
  Top = 153
  Width = 425
  Height = 220
  Caption = 'Reporte de Stock'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object f1: TsDateEdit
    Left = 128
    Top = 24
    Width = 145
    Height = 21
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    TabOrder = 0
    BoundLabel.Active = True
    BoundLabel.Caption = 'Fecha Superior'
    DefaultToday = True
  end
  object sButton1: TsButton
    Left = 32
    Top = 112
    Width = 100
    Height = 25
    Caption = 'Previsualizar'
    TabOrder = 1
    OnClick = sButton1Click
  end
  object sButton2: TsButton
    Left = 160
    Top = 112
    Width = 100
    Height = 25
    Caption = 'Exportar'
    TabOrder = 2
    OnClick = sButton2Click
  end
  object sButton3: TsButton
    Left = 288
    Top = 112
    Width = 100
    Height = 25
    Caption = 'Salir'
    TabOrder = 3
    OnClick = sButton3Click
  end
  object CheckBox1: TCheckBox
    Left = 88
    Top = 72
    Width = 225
    Height = 17
    Caption = 'Descartar Saldos Cero 0'
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
  object sStatusBar1: TsStatusBar
    Left = 0
    Top = 162
    Width = 409
    Height = 19
    Panels = <>
  end
  object dExistencias: TDataSource
    DataSet = EXISTENCIAS
    Left = 72
    Top = 48
  end
  object frxExistencias: TfrxDBDataset
    UserName = 'frxExistencias'
    CloseDataSource = False
    DataSource = dExistencias
    BCDToCurrency = False
    Left = 120
    Top = 48
  end
  object QExport4Dialog1: TQExport4Dialog
    DataSet = EXISTENCIAS
    ExportedFields.Strings = (
      'SALDO'
      'SALIDA'
      'ENTRADA'
      'PrecioCompra'
      'Descripcion'
      'IdProducto')
    Formats.DecimalSeparator = '.'
    Formats.ThousandSeparator = ','
    Formats.DateSeparator = '/'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'd/M/yyyy'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'd/M/yyyy hh:mm:ss'
    Formats.CurrencyFormat = 'Bs#,###,##0.00'
    RTFOptions.CaptionStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.CaptionStyle.Font.Color = clBlack
    RTFOptions.CaptionStyle.Font.Height = -13
    RTFOptions.CaptionStyle.Font.Name = 'Arial'
    RTFOptions.CaptionStyle.Font.Style = [fsBold]
    RTFOptions.CaptionStyle.AllowHighlight = True
    RTFOptions.CaptionStyle.Alignment = talCenter
    RTFOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.DataStyle.Font.Color = clBlack
    RTFOptions.DataStyle.Font.Height = -13
    RTFOptions.DataStyle.Font.Name = 'Arial'
    RTFOptions.DataStyle.Font.Style = []
    RTFOptions.DataStyle.AllowHighlight = True
    RTFOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.FooterStyle.Font.Color = clBlack
    RTFOptions.FooterStyle.Font.Height = -13
    RTFOptions.FooterStyle.Font.Name = 'Arial'
    RTFOptions.FooterStyle.Font.Style = []
    RTFOptions.FooterStyle.AllowHighlight = True
    RTFOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.HeaderStyle.Font.Color = clBlack
    RTFOptions.HeaderStyle.Font.Height = -13
    RTFOptions.HeaderStyle.Font.Name = 'Arial'
    RTFOptions.HeaderStyle.Font.Style = []
    RTFOptions.HeaderStyle.AllowHighlight = True
    RTFOptions.StripStyles = <>
    HTMLPageOptions.TextFont.Charset = DEFAULT_CHARSET
    HTMLPageOptions.TextFont.Color = clWhite
    HTMLPageOptions.TextFont.Height = -11
    HTMLPageOptions.TextFont.Name = 'Arial'
    HTMLPageOptions.TextFont.Style = []
    CSVOptions.Comma = ';'
    PDFOptions.PageOptions.MarginLeft = 1.170000000000000000
    PDFOptions.PageOptions.MarginRight = 0.570000000000000000
    PDFOptions.PageOptions.MarginTop = 0.780000000000000000
    PDFOptions.PageOptions.MarginBottom = 0.780000000000000000
    PDFOptions.HeaderFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.HeaderFont.UserFont.Color = clWindowText
    PDFOptions.HeaderFont.UserFont.Height = -13
    PDFOptions.HeaderFont.UserFont.Name = 'Arial'
    PDFOptions.HeaderFont.UserFont.Style = []
    PDFOptions.CaptionFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.CaptionFont.UserFont.Color = clWindowText
    PDFOptions.CaptionFont.UserFont.Height = -13
    PDFOptions.CaptionFont.UserFont.Name = 'Arial'
    PDFOptions.CaptionFont.UserFont.Style = []
    PDFOptions.DataFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.DataFont.UserFont.Color = clWindowText
    PDFOptions.DataFont.UserFont.Height = -13
    PDFOptions.DataFont.UserFont.Name = 'Arial'
    PDFOptions.DataFont.UserFont.Style = []
    PDFOptions.FooterFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.FooterFont.UserFont.Color = clWindowText
    PDFOptions.FooterFont.UserFont.Height = -13
    PDFOptions.FooterFont.UserFont.Name = 'Arial'
    PDFOptions.FooterFont.UserFont.Style = []
    XLSOptions.PageFooter = 'Page &P of &N'
    XLSOptions.SheetTitle = 'Sheet 1'
    XLSOptions.CaptionFormat.Font.Style = [xfsBold]
    XLSOptions.HyperlinkFormat.Font.Color = clrBlue
    XLSOptions.HyperlinkFormat.Font.Underline = fulSingle
    XLSOptions.NoteFormat.Alignment.Horizontal = halLeft
    XLSOptions.NoteFormat.Alignment.Vertical = valTop
    XLSOptions.NoteFormat.Font.Size = 8
    XLSOptions.NoteFormat.Font.Style = [xfsBold]
    XLSOptions.NoteFormat.Font.Name = 'Tahoma'
    XLSOptions.FieldFormats = <>
    XLSOptions.StripStyles = <>
    XLSOptions.Hyperlinks = <>
    XLSOptions.Notes = <>
    XLSOptions.Charts = <>
    XLSOptions.Pictures = <>
    XLSOptions.Images = <>
    XLSOptions.Cells = <>
    XLSOptions.MergedCells = <>
    XLSOptions.DefRowHeight = 12.750000000000000000
    ODSOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    ODSOptions.HeaderStyle.Font.Color = clBlack
    ODSOptions.HeaderStyle.Font.Height = -13
    ODSOptions.HeaderStyle.Font.Name = 'Arial'
    ODSOptions.HeaderStyle.Font.Style = []
    ODSOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    ODSOptions.FooterStyle.Font.Color = clBlack
    ODSOptions.FooterStyle.Font.Height = -13
    ODSOptions.FooterStyle.Font.Name = 'Arial'
    ODSOptions.FooterStyle.Font.Style = []
    ODSOptions.CaptionRowStyle.Font.Charset = DEFAULT_CHARSET
    ODSOptions.CaptionRowStyle.Font.Color = clBlack
    ODSOptions.CaptionRowStyle.Font.Height = -13
    ODSOptions.CaptionRowStyle.Font.Name = 'Arial'
    ODSOptions.CaptionRowStyle.Font.Style = []
    ODSOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    ODSOptions.DataStyle.Font.Color = clBlack
    ODSOptions.DataStyle.Font.Height = -13
    ODSOptions.DataStyle.Font.Name = 'Arial'
    ODSOptions.DataStyle.Font.Style = []
    ODSOptions.StripStylesList = <>
    ODTOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    ODTOptions.HeaderStyle.Font.Color = clBlack
    ODTOptions.HeaderStyle.Font.Height = -13
    ODTOptions.HeaderStyle.Font.Name = 'Arial'
    ODTOptions.HeaderStyle.Font.Style = []
    ODTOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    ODTOptions.FooterStyle.Font.Color = clBlack
    ODTOptions.FooterStyle.Font.Height = -13
    ODTOptions.FooterStyle.Font.Name = 'Arial'
    ODTOptions.FooterStyle.Font.Style = []
    ODTOptions.CaptionRowStyle.Font.Charset = DEFAULT_CHARSET
    ODTOptions.CaptionRowStyle.Font.Color = clBlack
    ODTOptions.CaptionRowStyle.Font.Height = -13
    ODTOptions.CaptionRowStyle.Font.Name = 'Arial'
    ODTOptions.CaptionRowStyle.Font.Style = []
    ODTOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    ODTOptions.DataStyle.Font.Color = clBlack
    ODTOptions.DataStyle.Font.Height = -13
    ODTOptions.DataStyle.Font.Name = 'Arial'
    ODTOptions.DataStyle.Font.Style = []
    ODTOptions.StripStylesList = <>
    ODTOptions.Border.BorderStyle = bsODFSolid
    XlsxOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.HeaderStyle.Font.Color = clBlack
    XlsxOptions.HeaderStyle.Font.Height = -15
    XlsxOptions.HeaderStyle.Font.Name = 'Calibri'
    XlsxOptions.HeaderStyle.Font.Style = []
    XlsxOptions.CaptionRowStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.CaptionRowStyle.Font.Color = clBlack
    XlsxOptions.CaptionRowStyle.Font.Height = -15
    XlsxOptions.CaptionRowStyle.Font.Name = 'Calibri'
    XlsxOptions.CaptionRowStyle.Font.Style = []
    XlsxOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.DataStyle.Font.Color = clBlack
    XlsxOptions.DataStyle.Font.Height = -15
    XlsxOptions.DataStyle.Font.Name = 'Calibri'
    XlsxOptions.DataStyle.Font.Style = []
    XlsxOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.FooterStyle.Font.Color = clBlack
    XlsxOptions.FooterStyle.Font.Height = -15
    XlsxOptions.FooterStyle.Font.Name = 'Calibri'
    XlsxOptions.FooterStyle.Font.Style = []
    XlsxOptions.StripStylesList = <>
    DocxOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.HeaderStyle.Font.Color = clBlack
    DocxOptions.HeaderStyle.Font.Height = -15
    DocxOptions.HeaderStyle.Font.Name = 'Calibri'
    DocxOptions.HeaderStyle.Font.Style = []
    DocxOptions.CaptionRowStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.CaptionRowStyle.Font.Color = clBlack
    DocxOptions.CaptionRowStyle.Font.Height = -15
    DocxOptions.CaptionRowStyle.Font.Name = 'Calibri'
    DocxOptions.CaptionRowStyle.Font.Style = []
    DocxOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.DataStyle.Font.Color = clBlack
    DocxOptions.DataStyle.Font.Height = -15
    DocxOptions.DataStyle.Font.Name = 'Calibri'
    DocxOptions.DataStyle.Font.Style = []
    DocxOptions.StripStylesList = <>
    DocxOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.FooterStyle.Font.Color = clBlack
    DocxOptions.FooterStyle.Font.Height = -15
    DocxOptions.FooterStyle.Font.Name = 'Calibri'
    DocxOptions.FooterStyle.Font.Style = []
    AccessOptions.TableName = 'EXPORT_TABLE'
    Left = 208
    Top = 72
  end
  object EXISTENCIAS: TMSQuery
    Connection = DM1.ConexionFni
    SQL.Strings = (
      'SELECT'
      'kardex.IdProducto,'
      'kardex.Descripcion,'
      'producto.PrecioCompra,'
      'SUM (KARDEX.Entrada) AS ENTRADA,'
      'SUM (KARDEX.Salida) AS SALIDA,'
      'SUM (Kardex.Entrada) - sum(kardex.Salida) as SALDO'
      'from Producto,Kardex'
      'where producto.idProducto = kardex.IdProducto'
      ''
      'AND FECHA<=:FECHA'
      ''
      
        'GROUP BY kardex.IdProducto,kardex.Descripcion,producto.PrecioCom' +
        'pra'
      'ORDER BY DESCRIPCION')
    Left = 16
    Top = 48
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'FECHA'
      end>
    object EXISTENCIASIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object EXISTENCIASDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 150
    end
    object EXISTENCIASPrecioCompra: TCurrencyField
      FieldName = 'PrecioCompra'
      ReadOnly = True
    end
    object EXISTENCIASENTRADA: TIntegerField
      FieldName = 'ENTRADA'
      ReadOnly = True
    end
    object EXISTENCIASSALIDA: TIntegerField
      FieldName = 'SALIDA'
      ReadOnly = True
    end
    object EXISTENCIASSALDO: TIntegerField
      FieldName = 'SALDO'
      ReadOnly = True
    end
  end
  object frxReport1: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44370.653288182900000000
    ReportOptions.LastChange = 44370.653288182900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 168
    Top = 48
    Datasets = <
      item
        DataSet = frxExistencias
        DataSetName = 'frxExistencias'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'fechas'
        Value = #39'23'#39
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 147.401670000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 183.118228500000000000
          Top = 45.354360000000000000
          Width = 374.173470000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Lucida Sans'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8 = (
            'REPORTE DE EXISTENCIAS')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 11.338590000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 71.811070000000000000
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Al : [fechas]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 234.330860000000000000
        Width = 740.409927000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Producto')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#194#186)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'C/U')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Cantidad')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Sub Total')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 188.976500000000000000
        Width = 740.409927000000000000
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 3.779529999999990000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 313.700990000000000000
        Width = 740.409927000000000000
        DataSet = frxExistencias
        DataSetName = 'frxExistencias'
        RowCount = 0
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = clGray
          Frame.TopLine.Color = clGray
          Frame.TopLine.Style = fsDot
          Frame.RightLine.Color = clGray
          Frame.RightLine.Style = fsDot
          Frame.BottomLine.Color = clGray
          Frame.BottomLine.Style = fsDot
          HAlign = haRight
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
        end
        object HACERCLICK: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 45.354360000000000000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          DataField = 'Descripcion'
          DataSet = frxExistencias
          DataSetName = 'frxExistencias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Style = fsDot
          Frame.TopLine.Color = clGray
          Frame.TopLine.Style = fsDot
          Frame.RightLine.Color = clGray
          Frame.RightLine.Style = fsDot
          Frame.BottomLine.Color = clGray
          Frame.BottomLine.Style = fsDot
          Memo.UTF8 = (
            '[frxExistencias."Descripcion"]')
          ParentFont = False
        end
        object frxExistenciasCU: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 449.764070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'PrecioCompra'
          DataSet = frxExistencias
          DataSetName = 'frxExistencias'
          DisplayFormat.FormatStr = '%2.5f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Style = fsDot
          Frame.TopLine.Color = clGray
          Frame.TopLine.Style = fsDot
          Frame.RightLine.Color = clGray
          Frame.RightLine.Style = fsDot
          Frame.BottomLine.Color = clGray
          Frame.BottomLine.Style = fsDot
          HAlign = haRight
          Memo.UTF8 = (
            '[frxExistencias."PrecioCompra"]')
          ParentFont = False
        end
        object frxExistenciasCantidadSaldo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 544.252320000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'SALDO'
          DataSet = frxExistencias
          DataSetName = 'frxExistencias'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Style = fsDot
          Frame.TopLine.Color = clGray
          Frame.TopLine.Style = fsDot
          Frame.RightLine.Color = clGray
          Frame.RightLine.Style = fsDot
          Frame.BottomLine.Color = clGray
          Frame.BottomLine.Style = fsDot
          HAlign = haRight
          Memo.UTF8 = (
            '[frxExistencias."SALDO"]')
          ParentFont = False
        end
        object frxExistenciasMontoSaldo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = frxExistencias
          DataSetName = 'frxExistencias'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Style = fsDot
          Frame.TopLine.Color = clGray
          Frame.TopLine.Style = fsDot
          Frame.RightLine.Color = clGray
          Frame.BottomLine.Color = clGray
          Frame.BottomLine.Style = fsDot
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxExistencias."PrecioCompra">*<frxExistencias."SALDO">]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 393.071120000000000000
        Width = 740.409927000000000000
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = clSilver
          Frame.TopLine.Width = 1.500000000000000000
          Frame.RightLine.Color = clSilver
          Frame.BottomLine.Style = fsDouble
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<frxExistencias."PrecioCompra">*<frxExistencias."SALDO">,Ma' +
              'sterData1)]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 1.779530000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Frame.LeftLine.Color = clSilver
          Frame.TopLine.Width = 1.500000000000000000
          Frame.RightLine.Color = clSilver
          Frame.BottomLine.Style = fsDouble
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Inventario Total: ')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 34.015770000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'calibri'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8 = (
            'Fecha Hora de Impresi'#195#179'n: [DATE] [TIME]')
          ParentFont = False
        end
      end
    end
  end
end
