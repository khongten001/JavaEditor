object FSequenceForm: TFSequenceForm
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = []
  Caption = 'Sequence diagram'
  ClientHeight = 362
  ClientWidth = 627
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  TextHeight = 15
  object SequenceScrollbox: TScrollBox
    Left = 0
    Top = 23
    Width = 627
    Height = 339
    Align = alClient
    Color = clBtnFace
    ParentColor = False
    TabOrder = 1
    OnResize = SequenceScrollboxResize
  end
  object EMessage: TEdit
    Left = 504
    Top = 40
    Width = 121
    Height = 23
    TabOrder = 0
    Visible = False
  end
  object TBSequence: TToolBar
    Left = 0
    Top = 0
    Width = 627
    Height = 23
    Images = vilToolbarLight
    TabOrder = 2
    object TBClose: TToolButton
      Left = 0
      Top = 0
      Hint = 'Close'
      ImageIndex = 0
      ImageName = 'Close'
      ParentShowHint = False
      ShowHint = True
      OnClick = TBCloseClick
    end
    object TBLifeLine: TToolButton
      Left = 23
      Top = 0
      Hint = 'New lifeline'
      ImageIndex = 1
      ImageName = 'Lifeline'
      ParentShowHint = False
      ShowHint = True
      OnClick = MIPopupNewLifeLineClick
    end
    object TBActor: TToolButton
      Left = 46
      Top = 0
      Hint = 'New actor'
      ImageIndex = 2
      ImageName = 'Actor'
      ParentShowHint = False
      ShowHint = True
      OnClick = MIPopupNewActorClick
    end
    object TBZoomOut: TToolButton
      Left = 69
      Top = 0
      Hint = 'Zoom out'
      ImageIndex = 3
      ImageName = 'ZoomOut'
      ParentShowHint = False
      ShowHint = True
      OnClick = TBZoomOutClick
    end
    object TBZoomIn: TToolButton
      Left = 92
      Top = 0
      Hint = 'Zoom in'
      ImageIndex = 4
      ImageName = 'ZoomIn'
      ParentShowHint = False
      ShowHint = True
      OnClick = TBZoomInClick
    end
    object TBNewLayout: TToolButton
      Left = 115
      Top = 0
      Hint = 'New layout'
      ImageIndex = 5
      ImageName = 'NewLayout'
      ParentShowHint = False
      ShowHint = True
      OnClick = MIPopupNewLayoutClick
    end
    object TBRefresh: TToolButton
      Left = 138
      Top = 0
      Hint = 'Refresh'
      ImageIndex = 6
      ImageName = 'Refresh'
      ParentShowHint = False
      ShowHint = True
      OnClick = MIPopupRefreshClick
    end
  end
  object PopupMenuLifeLineAndSequencePanel: TSpTBXPopupMenu
    Images = vilToolbarLight
    OnPopup = PopupMenuLifeLineAndSequencePanelPopup
    Left = 296
    Top = 33
    object MIPopupNewLifeline: TSpTBXItem
      Caption = 'New lifeline'
      ImageIndex = 1
      ImageName = 'Lifeline'
      OnClick = MIPopupNewLifeLineClick
    end
    object MIPopupNewActor: TSpTBXItem
      Caption = 'New actor'
      ImageIndex = 2
      ImageName = 'Actor'
      OnClick = MIPopupNewActorClick
    end
    object MIPopupCreateLifeline: TSpTBXItem
      Caption = 'Create lifeline'
      ImageIndex = 11
      ImageName = 'CreateLifeline'
      OnClick = MIPopupCreateObjectClick
    end
    object MIPopupConnectWith: TSpTBXSubmenuItem
      Caption = 'Connect with'
    end
    object MIPopupDeleteLifeline: TSpTBXItem
      Caption = 'Delete lifeline'
      ImageIndex = 7
      ImageName = 'Delete'
      OnClick = MIPopupDeleteLifeLineClick
    end
    object MIPopupNewLayout: TSpTBXItem
      Caption = 'New layout'
      ImageIndex = 5
      ImageName = 'NewLayout'
      OnClick = MIPopupNewLayoutClick
    end
    object MIPopupRefresh: TSpTBXItem
      Caption = 'Refresh'
      ImageIndex = 6
      ImageName = 'Refresh'
      OnClick = MIPopupRefreshClick
    end
    object SpTBXSeparatorItem2: TSpTBXSeparatorItem
    end
    object MIPopupAsText: TSpTBXItem
      Caption = 'As text'
      ImageIndex = 8
      ImageName = 'AsText'
      OnClick = MIPopupAsTextClick
    end
    object MIPopupCopyAsPicture: TSpTBXItem
      Caption = 'Copy as picture'
      OnClick = MIPopupCopyAsPictureClick
    end
    object MIPopupFont: TSpTBXItem
      Caption = 'Font'
      ImageIndex = 9
      ImageName = 'Font'
      OnClick = MIPopupFontClick
    end
    object MIPopupConfiguration: TSpTBXItem
      Caption = 'Configuration'
      ImageIndex = 10
      ImageName = 'Configuration'
      OnClick = MIPopupConfigurationClick
    end
  end
  object PopupMenuConnection: TSpTBXPopupMenu
    Images = vilPopupLight
    OnPopup = PopupMenuConnectionPopup
    Left = 64
    Top = 223
    object MISynchron: TSpTBXItem
      Caption = 'Synchron'
      ImageIndex = 0
      ImageName = 'Synchron'
      OnClick = MIConnectionClick
    end
    object MIAsynchron: TSpTBXItem
      Tag = 1
      Caption = 'Asynchron'
      ImageIndex = 1
      ImageName = 'Asynchron'
      OnClick = MIConnectionClick
    end
    object NIReturn: TSpTBXItem
      Tag = 2
      Caption = 'Return'
      ImageIndex = 2
      ImageName = 'Return'
      OnClick = MIConnectionClick
    end
    object MICreate: TSpTBXItem
      Tag = 3
      Caption = 'Create'
      ImageIndex = 3
      ImageName = 'Create'
      OnClick = MIConnectionClick
    end
    object MIClose: TSpTBXItem
      Tag = 4
      Caption = 'Close'
      ImageIndex = 4
      ImageName = 'Close'
      OnClick = MIConnectionClick
    end
    object SpTBXSeparatorItem1: TSpTBXSeparatorItem
    end
    object MIMessage: TSpTBXItem
      Tag = 5
      Caption = 'Message'
      ImageIndex = 5
      ImageName = 'NewLayout'
      OnClick = MIConnectionClick
    end
    object MITurn: TSpTBXItem
      Tag = 6
      Caption = 'Turn'
      ImageIndex = 6
      ImageName = 'Turn'
      OnClick = MIConnectionClick
    end
    object MIDelete: TSpTBXItem
      Tag = 7
      Caption = 'Delete'
      ImageIndex = 7
      ImageName = 'Delete'
      OnClick = MIConnectionClick
    end
  end
  object vilToolbarLight: TVirtualImageList
    Images = <
      item
        CollectionIndex = 0
        CollectionName = 'Close'
        Name = 'Close'
      end
      item
        CollectionIndex = 1
        CollectionName = 'Lifeline'
        Name = 'Lifeline'
      end
      item
        CollectionIndex = 2
        CollectionName = 'Actor'
        Name = 'Actor'
      end
      item
        CollectionIndex = 3
        CollectionName = 'ZoomOut'
        Name = 'ZoomOut'
      end
      item
        CollectionIndex = 4
        CollectionName = 'ZoomIn'
        Name = 'ZoomIn'
      end
      item
        CollectionIndex = 5
        CollectionName = 'NewLayout'
        Name = 'NewLayout'
      end
      item
        CollectionIndex = 6
        CollectionName = 'Refresh'
        Name = 'Refresh'
      end
      item
        CollectionIndex = 7
        CollectionName = 'Delete'
        Name = 'Delete'
      end
      item
        CollectionIndex = 8
        CollectionName = 'AsText'
        Name = 'AsText'
      end
      item
        CollectionIndex = 9
        CollectionName = 'Font'
        Name = 'Font'
      end
      item
        CollectionIndex = 10
        CollectionName = 'Configuration'
        Name = 'Configuration'
      end
      item
        CollectionIndex = 11
        CollectionName = 'CreateLifeline'
        Name = 'CreateLifeline'
      end>
    ImageCollection = DMImages.icSequencediagram
    Left = 32
    Top = 33
  end
  object vilToolbarDark: TVirtualImageList
    Images = <
      item
        CollectionIndex = 12
        CollectionName = 'Close'
        Name = 'Close'
      end
      item
        CollectionIndex = 13
        CollectionName = 'LifeLine'
        Name = 'LifeLine'
      end
      item
        CollectionIndex = 14
        CollectionName = 'Actor'
        Name = 'Actor'
      end
      item
        CollectionIndex = 15
        CollectionName = 'ZoomOut'
        Name = 'ZoomOut'
      end
      item
        CollectionIndex = 16
        CollectionName = 'ZoomIn'
        Name = 'ZoomIn'
      end
      item
        CollectionIndex = 17
        CollectionName = 'NewLayout'
        Name = 'NewLayout'
      end
      item
        CollectionIndex = 18
        CollectionName = 'Refresh'
        Name = 'Refresh'
      end
      item
        CollectionIndex = 19
        CollectionName = 'Delete'
        Name = 'Delete'
      end
      item
        CollectionIndex = 20
        CollectionName = 'AsText'
        Name = 'AsText'
      end
      item
        CollectionIndex = 21
        CollectionName = 'Font'
        Name = 'Font'
      end
      item
        CollectionIndex = 10
        CollectionName = 'Configuration'
        Name = 'Configuration'
      end
      item
        CollectionIndex = 22
        CollectionName = 'CreateLifeline'
        Name = 'CreateLifeline'
      end>
    ImageCollection = DMImages.icSequencediagram
    Left = 136
    Top = 33
  end
  object vilPopupLight: TVirtualImageList
    Images = <
      item
        CollectionIndex = 23
        CollectionName = 'Synchron'
        Name = 'Synchron'
      end
      item
        CollectionIndex = 24
        CollectionName = 'Asynchron'
        Name = 'Asynchron'
      end
      item
        CollectionIndex = 25
        CollectionName = 'Return'
        Name = 'Return'
      end
      item
        CollectionIndex = 26
        CollectionName = 'Create'
        Name = 'Create'
      end
      item
        CollectionIndex = 27
        CollectionName = 'Close'
        Name = 'Close'
      end
      item
        CollectionIndex = 5
        CollectionName = 'NewLayout'
        Name = 'NewLayout'
      end
      item
        CollectionIndex = 28
        CollectionName = 'Turn'
        Name = 'Turn'
      end
      item
        CollectionIndex = 29
        CollectionName = 'Delete'
        Name = 'Delete'
      end>
    ImageCollection = DMImages.icSequencediagram
    Left = 200
    Top = 224
  end
  object vilPopupDark: TVirtualImageList
    Images = <
      item
        CollectionIndex = 30
        CollectionName = 'Synchron'
        Name = 'Synchron'
      end
      item
        CollectionIndex = 31
        CollectionName = 'Asynchron'
        Name = 'Asynchron'
      end
      item
        CollectionIndex = 32
        CollectionName = 'Return'
        Name = 'Return'
      end
      item
        CollectionIndex = 33
        CollectionName = 'Create'
        Name = 'Create'
      end
      item
        CollectionIndex = 34
        CollectionName = 'Close'
        Name = 'Close'
      end
      item
        CollectionIndex = 17
        CollectionName = 'NewLayout'
        Name = 'NewLayout'
      end
      item
        CollectionIndex = 28
        CollectionName = 'Turn'
        Name = 'Turn'
      end
      item
        CollectionIndex = 35
        CollectionName = 'Delete'
        Name = 'Delete'
      end>
    ImageCollection = DMImages.icSequencediagram
    Left = 304
    Top = 224
  end
end
