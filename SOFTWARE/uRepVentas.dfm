object RepVentas: TRepVentas
  Left = 527
  Top = 567
  Width = 353
  Height = 258
  Caption = 'Ventas Diarias'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FECHA: TsDateEdit
    Left = 120
    Top = 32
    Width = 113
    Height = 21
    AutoSize = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    TabOrder = 0
    BoundLabel.Active = True
    BoundLabel.Caption = 'FECHA'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    DefaultToday = True
  end
  object sButton1: TsButton
    Left = 56
    Top = 80
    Width = 238
    Height = 25
    Caption = 'Previsualizar Reporte'
    TabOrder = 1
    OnClick = sButton1Click
  end
  object sButton2: TsButton
    Left = 56
    Top = 152
    Width = 238
    Height = 25
    Caption = 'Salir Men'#250' Principal'
    TabOrder = 2
    OnClick = sButton2Click
  end
  object sButton3: TsButton
    Left = 56
    Top = 114
    Width = 238
    Height = 25
    Caption = 'Ventas por Item con Ganancias'
    TabOrder = 3
    OnClick = sButton3Click
  end
  object sStatusBar1: TsStatusBar
    Left = 0
    Top = 200
    Width = 337
    Height = 19
    Panels = <>
  end
  object q1: TMSQuery
    Connection = DM1.ConexionFni
    SQL.Strings = (
      'SELECT *'
      'FROM VENTAS '
      'WHERE VENTAS.fechaVenta=:FECHA'
      'order by fechaventa,idVentas')
    Active = True
    Left = 24
    Top = 16
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'FECHA'
      end>
    object q1idVentas: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idVentas'
      ReadOnly = True
    end
    object q1nombreRazonSocial: TStringField
      FieldName = 'nombreRazonSocial'
      Size = 100
    end
    object q1ciNit: TStringField
      FieldName = 'ciNit'
    end
    object q1fechaVenta: TDateField
      FieldName = 'fechaVenta'
    end
    object q1montoTotal: TCurrencyField
      FieldName = 'montoTotal'
    end
  end
  object dq1: TMSDataSource
    DataSet = q1
    Left = 64
    Top = 16
  end
  object frxventasdiarias: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39857.517864583300000000
    ReportOptions.LastChange = 39857.522909062500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 264
    Top = 24
    Datasets = <
      item
        DataSet = frxq1
        DataSetName = 'frxq1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 20.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 120.944960000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 22.118120000000000000
          Top = 4.220470000000000000
          Width = 672.756340000000000000
          Height = 117.165430000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 111.000000000000000000
          Top = 41.574830000000000000
          Width = 517.795610000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8 = (
            'REPORTE DE VENTAS DIARIAS')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 102.047310000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Fecha  Impresion :[<Date>] Hora: [<Time>]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 68.031540000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Fecha de Ventas: [frxq1."fechaVenta"]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 23.456710000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 72.590600000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Cliente')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 601.165740000000000000
          Width = 94.488201180000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Monto Total')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 491.559370000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CI/NIT')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        DataSet = frxq1
        DataSetName = 'frxq1'
        RowCount = 0
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 23.433070870000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Style = fsDot
          Frame.TopLine.Style = fsDot
          Frame.RightLine.Style = fsDot
          Frame.BottomLine.Style = fsDot
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
        end
        object frxinvlabPrecio_Venta: TfrxMemoView
          AllowVectorExport = True
          Left = 72.811070000000000000
          Width = 423.307154960000000000
          Height = 18.897650000000000000
          DataField = 'nombreRazonSocial'
          DataSet = frxq1
          DataSetName = 'frxq1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Style = fsDot
          Frame.TopLine.Style = fsDot
          Frame.RightLine.Style = fsDot
          Frame.BottomLine.Style = fsDot
          Memo.UTF8 = (
            '[frxq1."nombreRazonSocial"]')
          ParentFont = False
        end
        object frxq1ciNit: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'ciNit'
          DataSet = frxq1
          DataSetName = 'frxq1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Style = fsDot
          Frame.TopLine.Style = fsDot
          Frame.RightLine.Style = fsDot
          Frame.BottomLine.Style = fsDot
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxq1."ciNit"]')
          ParentFont = False
        end
        object frxq1montoTotal: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'montoTotal'
          DataSet = frxq1
          DataSetName = 'frxq1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Style = fsDot
          Frame.TopLine.Style = fsDot
          Frame.RightLine.Style = fsDot
          Frame.BottomLine.Style = fsDot
          HAlign = haRight
          Memo.UTF8 = (
            '[frxq1."montoTotal"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 470.882190000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL ==>')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxq1."montoTotal">,MasterData1)]')
          ParentFont = False
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 321.260050000000000000
        Width = 718.110700000000000000
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 470.441250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8 = (
            'PARCIAL ==>')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxq1."montoTotal">,MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Width = 672.756340000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxq1: TfrxDBDataset
    UserName = 'frxq1'
    CloseDataSource = False
    DataSet = q1
    BCDToCurrency = False
    Left = 104
    Top = 16
  end
  object frxq2: TfrxDBDataset
    UserName = 'frxq2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idDetVentas=idDetVentas'
      'IdVentas=IdVentas'
      'Fecha=Fecha'
      'IdProducto=IdProducto'
      'Descripcion=Descripcion'
      'PrecioCompra=PrecioCompra'
      'PrecioVenta=PrecioVenta'
      'Cantidad=Cantidad'
      'PrecioTotal=PrecioTotal'
      'Ganancia=Ganancia')
    DataSet = q2
    BCDToCurrency = False
    Left = 104
    Top = 88
  end
  object q2: TMSQuery
    Connection = DM1.ConexionFni
    SQL.Strings = (
      'SELECT *'
      'FROM DetVentas '
      'WHERE DetVentas.Fecha =:fecha')
    Left = 32
    Top = 88
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'fecha'
      end>
  end
  object dq2: TMSDataSource
    DataSet = q2
    Left = 72
    Top = 88
  end
  object frxReport1: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44370.631673356480000000
    ReportOptions.LastChange = 44370.631673356480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 272
    Top = 80
    Datasets = <
      item
        DataSet = frxq2
        DataSetName = 'frxq2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 216.000000000000000000
      PaperHeight = 279.000000000000000000
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
        Height = 120.944960000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 69.425170000000000000
          Top = 41.574830000000000000
          Width = 570.709030000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8 = (
            'REPORTE DE VENTAS POR ITEM CON GANANCIAS')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 102.047310000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Fecha  Impresion :[<Date>] Hora: [<Time>]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 68.031540000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Fecha de Ventas:[frxq2."Fecha"]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 162.519790000000000000
        Width = 740.787880000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#194#186)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Descripcion')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'P/Compra')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'P/Venta')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Cantidad')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ganancia')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#194#186' Venta')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 241.889920000000000000
        Width = 740.787880000000000000
        DataSet = frxq2
        DataSetName = 'frxq2'
        RowCount = 0
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
        end
        object frxq2Descripcion: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 45.354360000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'Descripcion'
          DataSet = frxq2
          DataSetName = 'frxq2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxq2."Descripcion"]')
          ParentFont = False
        end
        object frxq2PrecioCompra: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 370.393940000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'PrecioCompra'
          DataSet = frxq2
          DataSetName = 'frxq2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxq2."PrecioCompra"]')
          ParentFont = False
        end
        object frxq2PrecioVenta: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 442.205010000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PrecioVenta'
          DataSet = frxq2
          DataSetName = 'frxq2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxq2."PrecioVenta"]')
          ParentFont = False
        end
        object frxq2Cantidad: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 521.575140000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'Cantidad'
          DataSet = frxq2
          DataSetName = 'frxq2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxq2."Cantidad"]')
          ParentFont = False
        end
        object frxq2IdVentas: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 313.700990000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'IdVentas'
          DataSet = frxq2
          DataSetName = 'frxq2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxq2."IdVentas"]')
          ParentFont = False
        end
        object frxq2Ganancia: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 616.063390000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'Ganancia'
          DataSet = frxq2
          DataSetName = 'frxq2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxq2."Ganancia"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 321.260050000000000000
        Width = 740.787880000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Frame.TopLine.Style = fsSolid
          Frame.BottomLine.Style = fsDouble
          HAlign = haRight
          Memo.UTF8 = (
            '[sUM(<frxq2."ganancia">,MasterData1)]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Frame.TopLine.Style = fsSolid
          Frame.BottomLine.Style = fsDouble
          HAlign = haCenter
          Memo.UTF8 = (
            'Total -->')
          ParentFont = False
        end
      end
    end
  end
end
