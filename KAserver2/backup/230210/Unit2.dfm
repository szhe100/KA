object KA2: TKA2
  OldCreateOrder = False
  OnCreate = RemoteDataModuleCreate
  OnDestroy = RemoteDataModuleDestroy
  Left = 225
  Top = 107
  Height = 288
  Width = 313
  object ADOCon_KA: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initi' +
      'al Catalog=KingAGE;Data Source=192.168.1.207;Use Procedure for P' +
      'repare=1;Auto Translate=True;Packet Size=4096;Workstation ID=HEY' +
      'ANG;Use Encryption for Data=False;Tag with column collation when' +
      ' possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    BeforeConnect = ADOCon_KABeforeConnect
    Left = 20
    Top = 4
  end
  object department: TADOQuery
    CacheSize = 1000
    Connection = ADOCon_KA
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select obj_id,obj_type_id,zdesc'
      ' from tb_object where obj_type_id=1')
    Left = 20
    Top = 49
  end
  object PubQry: TADOQuery
    CacheSize = 1000
    Connection = ADOCon_KA
    CursorType = ctStatic
    CommandTimeout = 120
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select a.*,c.zname as creater,d.zname as checker,'
      
        ' busimate=  b.mate_name, bod_broker=b.broker, bod_settle=b.settl' +
        'e_type'
      ' from tb_bill a,tb_busimate b,tb_staff c,tb_staff d'
      ' where a.dst_id*=b.mate_id and a.creat_by*=c.sta_id'
      ' and a.check_by*=d.sta_id and bod_type_id=2')
    Left = 190
    Top = 47
  end
  object pvdpubqry: TDataSetProvider
    DataSet = PubQry
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 235
    Top = 48
  end
  object pvdpubquery: TDataSetProvider
    DataSet = PubQuery
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 235
    Top = 92
  end
  object PubQuery: TADODataSet
    CacheSize = 1000
    Connection = ADOCon_KA
    CommandTimeout = 600
    Parameters = <>
    Prepared = True
    Left = 190
    Top = 92
  end
  object district: TADOQuery
    CacheSize = 1000
    Connection = ADOCon_KA
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select *'
      ' from tb_treedata where type_id=1')
    Left = 20
    Top = 144
    object districtrec_id: TAutoIncField
      FieldName = 'rec_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object districttype_id: TIntegerField
      FieldName = 'type_id'
    end
    object districtparent: TIntegerField
      FieldName = 'parent'
    end
    object districtzdesc: TStringField
      FieldName = 'zdesc'
      Size = 30
    end
    object districtzinfo: TMemoField
      FieldName = 'zinfo'
      BlobType = ftMemo
    end
  end
  object sysframe: TADOQuery
    CacheSize = 1000
    Connection = ADOCon_KA
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from tb_sysframe')
    Left = 20
    Top = 96
  end
  object pvdsysframe: TDataSetProvider
    DataSet = sysframe
    Left = 63
    Top = 96
  end
  object updateqry: TADOQuery
    CacheSize = 1000
    Connection = ADOCon_KA
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    Left = 105
    Top = 6
  end
  object edistrict: TADOQuery
    CacheSize = 1000
    Connection = ADOCon_KA
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from vi_district'
      ' order by dist_name')
    Left = 190
    Top = 201
    object edistrictdist_id: TIntegerField
      FieldName = 'dist_id'
    end
    object edistrictdist_name: TStringField
      FieldName = 'dist_name'
      Size = 100
    end
  end
  object pvdedistrict: TDataSetProvider
    DataSet = edistrict
    Options = [poAllowCommandText]
    Left = 235
    Top = 201
  end
  object qryimage: TADOQuery
    CacheSize = 1000
    Connection = ADOCon_KA
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    Left = 20
    Top = 192
    object qryimagerec_id: TAutoIncField
      FieldName = 'rec_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryimagetype_id: TIntegerField
      FieldName = 'type_id'
    end
    object qryimageid: TIntegerField
      FieldName = 'id'
    end
    object qryimagezimage1: TBlobField
      FieldName = 'zimage1'
    end
    object qryimagegraphclass1: TStringField
      FieldName = 'graphclass1'
    end
    object qryimagezimage2: TBlobField
      FieldName = 'zimage2'
    end
    object qryimagegraphclass2: TStringField
      FieldName = 'graphclass2'
    end
    object qryimagezimage3: TBlobField
      FieldName = 'zimage3'
    end
    object qryimagegraphclass3: TStringField
      FieldName = 'graphclass3'
    end
    object qryimagezimage4: TBlobField
      FieldName = 'zimage4'
    end
    object qryimagegraphclass4: TStringField
      FieldName = 'graphclass4'
    end
    object qryimagezimage5: TBlobField
      FieldName = 'zimage5'
    end
    object qryimagegraphclass5: TStringField
      FieldName = 'graphclass5'
    end
  end
  object pvdqryimage: TDataSetProvider
    DataSet = qryimage
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 63
    Top = 192
  end
  object pvdepartment: TDataSetProvider
    DataSet = department
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 63
    Top = 49
  end
  object pvdistrict: TDataSetProvider
    DataSet = district
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 63
    Top = 146
  end
end
