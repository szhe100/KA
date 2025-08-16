object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 194
  Top = 108
  Height = 509
  Width = 624
  object cdsunit: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = cdsunitBeforePost
    AfterPost = fee_typeAfterPost
    AfterDelete = staffAfterPost
    Left = 16
    Top = 277
    object cdsunitobj_id: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object cdsunitzdesc: TStringField
      DisplayLabel = #21333#20301
      FieldName = 'zdesc'
      Size = 30
    end
    object cdsunitobj_type_id: TIntegerField
      FieldName = 'obj_type_id'
    end
  end
  object DSunit: TDataSource
    DataSet = cdsunit
    Left = 65
    Top = 277
  end
  object customer: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = customerBeforePost
    AfterPost = customerAfterPost
    BeforeDelete = customerBeforeDelete
    AfterDelete = customerAfterPost
    Left = 16
    Top = 99
    object customermate_id: TIntegerField
      DisplayLabel = #23458#25143#21495
      FieldName = 'mate_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object customercomp_id: TAutoIncField
      FieldName = 'comp_id'
    end
    object customermate_code: TStringField
      DisplayLabel = #32534#30721
      FieldName = 'mate_code'
      FixedChar = True
    end
    object customermate_name: TStringField
      DisplayLabel = #21517#31216
      FieldName = 'mate_name'
      Size = 100
    end
    object customerlegalman: TStringField
      DisplayLabel = #27861#20154#20195#34920
      FieldName = 'legalman'
    end
    object customerdeputy: TStringField
      DisplayLabel = #32852#31995#20154
      FieldName = 'deputy'
    end
    object customerdeputy_title: TStringField
      DisplayLabel = #31216#35859
      FieldName = 'deputy_title'
    end
    object customerphone: TStringField
      DisplayLabel = #30005#35805
      FieldName = 'phone'
      Size = 50
    end
    object customerfax: TStringField
      DisplayLabel = #20256#30495
      FieldName = 'fax'
    end
    object customeraddress: TStringField
      DisplayLabel = #22320#22336
      FieldName = 'address'
      Size = 100
    end
    object customerdistrict: TIntegerField
      DisplayLabel = #25152#22312#21306#22495
      FieldName = 'district'
    end
    object customercdistrict: TStringField
      DisplayLabel = #25152#22312#22320#21306
      FieldName = 'cdistrict'
      ReadOnly = True
      Size = 100
    end
    object customerpostalcode: TStringField
      DisplayLabel = #37038#32534
      FieldName = 'postalcode'
      Size = 10
    end
    object customeracnt_bank: TStringField
      DisplayLabel = #24320#25143#38134#34892
      FieldName = 'acnt_bank'
      Size = 50
    end
    object customerbank_account: TStringField
      DisplayLabel = #38134#34892#24080#21495
      DisplayWidth = 30
      FieldName = 'bank_account'
      Size = 30
    end
    object customertax_code: TStringField
      DisplayLabel = #31246#21153#32534#21495
      FieldName = 'tax_code'
    end
    object customermate_type_id: TIntegerField
      FieldName = 'mate_type_id'
    end
    object customerprice_type: TIntegerField
      DisplayLabel = #23450#20215#31867#21035
      FieldName = 'price_type'
    end
    object customerprice_cent: TBCDField
      DisplayLabel = #25187#29575
      FieldName = 'price_cent'
      EditFormat = '###,##0.####;; '
      Precision = 15
    end
    object customerqry_code: TStringField
      DisplayLabel = #31616#30721
      FieldName = 'qry_code'
      Size = 100
    end
    object customersettle_type: TIntegerField
      DisplayLabel = #32467#31639#31867#21035
      FieldName = 'settle_type'
    end
    object customerpick_ord: TIntegerField
      DisplayLabel = #36873#21495
      FieldName = 'pick_ord'
    end
    object customercredit_amot: TIntegerField
      DisplayLabel = #20449#29992#39069#24230
      FieldName = 'credit_amot'
    end
    object customerremark: TMemoField
      DisplayLabel = #22791#27880
      FieldName = 'remark'
      BlobType = ftMemo
    end
    object customerstop_by: TIntegerField
      DisplayLabel = #20572#29992#20154
      FieldName = 'stop_by'
    end
    object customerstop_for: TStringField
      DisplayLabel = #20572#29992#21407#22240
      FieldName = 'stop_for'
    end
    object customerstop_dt: TDateTimeField
      DisplayLabel = #20572#29992#26085#26399
      FieldName = 'stop_dt'
    end
    object customerstop_yn: TBooleanField
      DisplayLabel = #20572#29992
      FieldName = 'stop_yn'
    end
    object customertax_rate: TBCDField
      FieldName = 'tax_rate'
      DisplayFormat = '##0.####'
      Precision = 15
    end
    object customerbroker_id: TIntegerField
      FieldName = 'broker_id'
    end
    object customerdue_limit: TIntegerField
      DisplayLabel = #27424#27454#26399#38480
      FieldName = 'due_limit'
      DisplayFormat = '#,##0;; '
    end
    object customerdescription: TStringField
      DisplayLabel = #35828#26126
      FieldName = 'description'
      Size = 30
    end
    object customercreat_dt: TDateTimeField
      FieldName = 'creat_dt'
    end
    object customercreat_by: TIntegerField
      FieldName = 'creat_by'
    end
    object customermodify_dt: TDateTimeField
      FieldName = 'modify_dt'
    end
    object customermodify_by: TIntegerField
      FieldName = 'modify_by'
    end
    object customercreater: TStringField
      FieldName = 'creater'
      ReadOnly = True
      Size = 100
    end
    object customermodifier: TStringField
      FieldName = 'modifier'
      ReadOnly = True
      Size = 100
    end
    object customerEmail: TStringField
      FieldName = 'Email'
      Size = 30
    end
    object customerwebsite: TStringField
      FieldName = 'website'
      Size = 30
    end
    object customerbusi_type_id: TWordField
      FieldName = 'busi_type_id'
    end
    object customerbusi_type: TStringField
      DisplayLabel = #31561#32423
      FieldName = 'busi_type'
      ReadOnly = True
      Size = 10
    end
  end
  object DScustomer: TDataSource
    DataSet = customer
    Left = 65
    Top = 99
  end
  object pubqry: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    Left = 308
    Top = 277
  end
  object DSpubqry: TDataSource
    DataSet = pubqry
    Left = 352
    Top = 277
  end
  object department: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = departmentBeforePost
    AfterPost = departmentAfterPost
    BeforeDelete = departmentBeforeDelete
    AfterDelete = departmentAfterPost
    Left = 16
    Top = 145
    object departmentobj_id: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object departmentcomp_id: TAutoIncField
      FieldName = 'comp_id'
    end
    object departmentzdesc: TStringField
      DisplayLabel = #37096#38376
      FieldName = 'zdesc'
      Size = 30
    end
    object departmentobj_type_id: TIntegerField
      FieldName = 'obj_type_id'
    end
  end
  object DSdepartment: TDataSource
    DataSet = department
    Left = 65
    Top = 145
  end
  object staff: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    AfterInsert = staffAfterInsert
    BeforePost = staffBeforePost
    AfterPost = staffAfterPost
    BeforeDelete = staffBeforeDelete
    AfterDelete = staffAfterPost
    Left = 16
    Top = 186
    object staffsta_id: TAutoIncField
      DisplayLabel = #32534#21495
      FieldName = 'sta_id'
      ReadOnly = True
    end
    object staffcomp_id: TAutoIncField
      FieldName = 'comp_id'
    end
    object staffdepartment: TStringField
      DisplayLabel = #37096#38376
      FieldName = 'department'
      Size = 30
    end
    object staffdept_id: TIntegerField
      FieldName = 'dept_id'
    end
    object staffsta_type_id: TIntegerField
      FieldName = 'sta_type_id'
    end
    object staffzname: TStringField
      DisplayLabel = #22995#21517
      FieldName = 'zname'
    end
    object staffqry_code: TStringField
      DisplayLabel = #31616#30721
      FieldName = 'qry_code'
    end
    object staffzcode: TStringField
      DisplayLabel = #32534#30721
      FieldName = 'zcode'
      Size = 10
    end
    object staffsex: TBooleanField
      DisplayLabel = #24615#21035
      FieldName = 'sex'
      DisplayValues = #30007';'#22899
    end
    object staffpersonalID: TStringField
      DisplayLabel = #35777#20214#21495#30721
      FieldName = 'personalID'
    end
    object staffbirthdate: TDateTimeField
      DisplayLabel = #20986#29983#26085#26399
      FieldName = 'birthdate'
    end
    object stafforigin: TStringField
      DisplayLabel = #31821#36143
      FieldName = 'origin'
    end
    object staffdegree: TStringField
      DisplayLabel = #23398#21382
      FieldName = 'degree'
    end
    object stafftitle: TStringField
      DisplayLabel = #32844#31216
      FieldName = 'title'
    end
    object staffhiredate: TDateTimeField
      DisplayLabel = #20837#32844#26085#26399
      FieldName = 'hiredate'
    end
    object stafffiredate: TDateTimeField
      FieldName = 'firedate'
    end
    object staffzpost: TStringField
      DisplayLabel = #20219#32844
      FieldName = 'zpost'
    end
    object staffphone: TStringField
      DisplayLabel = #32852#31995#30005#35805
      FieldName = 'phone'
      Size = 50
    end
    object stafffax: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'fax'
    end
    object staffnotes: TMemoField
      DisplayLabel = #31616#21382
      FieldName = 'notes'
      BlobType = ftMemo
    end
    object staffpassword: TStringField
      DisplayLabel = #23494#30721
      FieldName = 'password'
      Size = 50
    end
    object staffzright: TMemoField
      DisplayLabel = #26435#38480
      FieldName = 'zright'
      BlobType = ftMemo
    end
    object staffoperative: TBooleanField
      FieldName = 'operative'
    end
    object staffstop_yn: TBooleanField
      DisplayLabel = #20572#29992
      FieldName = 'stop_yn'
    end
    object staffstop_by: TIntegerField
      DisplayLabel = #20572#29992#20154
      FieldName = 'stop_by'
    end
    object staffLstop_by: TStringField
      FieldKind = fkLookup
      FieldName = 'Lstop_by'
      LookupDataSet = user
      LookupKeyFields = 'sta_id'
      LookupResultField = 'zname'
      KeyFields = 'stop_by'
      Lookup = True
    end
    object staffstop_for: TStringField
      DisplayLabel = #20572#29992#21407#22240
      FieldName = 'stop_for'
    end
    object staffstop_dt: TDateTimeField
      DisplayLabel = #20572#29992#26085#26399
      FieldName = 'stop_dt'
    end
    object staffresidence: TStringField
      DisplayLabel = #20303#22336
      FieldName = 'residence'
      Size = 50
    end
    object staffreceipt: TBooleanField
      DisplayLabel = #39564#25910#20154#21592
      FieldName = 'receipt'
    end
    object staffbroker: TBooleanField
      DisplayLabel = #21830#21153#20154#21592
      FieldName = 'broker'
    end
    object staffstorage: TBooleanField
      DisplayLabel = #20179#31649#20154#21592
      FieldName = 'storage'
    end
    object staffmanager: TBooleanField
      DisplayLabel = #21306#22495#32463#29702
      FieldName = 'manager'
    end
    object staffcustservice: TBooleanField
      DisplayLabel = #23458#26381#20154#21592
      FieldName = 'custservice'
    end
    object staffuse_priority: TIntegerField
      FieldName = 'use_priority'
    end
    object staffcreat_dt: TDateTimeField
      FieldName = 'creat_dt'
    end
    object staffcreat_by: TIntegerField
      FieldName = 'creat_by'
    end
    object staffmodify_dt: TDateTimeField
      FieldName = 'modify_dt'
    end
    object staffmodify_by: TIntegerField
      FieldName = 'modify_by'
    end
    object staffaccount: TBooleanField
      DisplayLabel = #36130#21153#20154#21592
      FieldName = 'account'
    end
    object staffpurchase: TBooleanField
      DisplayLabel = #37319#36141#20154#21592
      FieldName = 'purchase'
    end
    object staffsupervisor: TBooleanField
      DisplayLabel = #31649#29702#20154#21592
      FieldName = 'supervisor'
    end
    object staffexportable: TBooleanField
      DisplayLabel = #21487#23548#20986
      FieldName = 'exportable'
    end
    object staffbiller: TBooleanField
      DisplayLabel = #21046#21333#20154#21592
      FieldName = 'biller'
    end
  end
  object DSstaff: TDataSource
    DataSet = staff
    Left = 65
    Top = 186
  end
  object med_type: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = med_typeBeforePost
    AfterPost = fee_typeAfterPost
    AfterDelete = staffAfterPost
    Left = 114
    Top = 186
    object med_typeobj_id: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object med_typezdesc: TStringField
      DisplayLabel = #33647#21697#31867#21035
      FieldName = 'zdesc'
      Size = 30
    end
    object med_typeobj_type_id: TIntegerField
      FieldName = 'obj_type_id'
    end
  end
  object DSmed_type: TDataSource
    DataSet = med_type
    Left = 162
    Top = 186
  end
  object medstock: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'pvdmedstock'
    RemoteServer = RemoteServer
    AfterPost = medstockAfterPost
    AfterDelete = medstockAfterPost
    Left = 114
    Top = 231
    object medstockrec_id: TAutoIncField
      FieldName = 'rec_id'
      ReadOnly = True
    end
    object medstockmed_id: TIntegerField
      FieldName = 'med_id'
    end
    object medstockqty1: TBCDField
      DisplayLabel = #25955#20179#24211#23384
      FieldName = 'qty1'
      DisplayFormat = '###,###,###.##;; '
      Precision = 15
    end
    object medstockqty2: TBCDField
      DisplayLabel = #22788#29702#20179#24211#23384
      FieldName = 'qty2'
      DisplayFormat = '###,###,###.##;; '
      Precision = 15
    end
    object medstockprice: TBCDField
      DisplayLabel = #24179#22343#20215
      FieldName = 'price'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
      Size = 5
    end
    object medstockmed_code: TStringField
      DisplayLabel = #33647#21697#32534#30721
      FieldName = 'med_code'
    end
    object medstockmed_name: TStringField
      DisplayLabel = #21697#21517
      FieldName = 'med_name'
      Size = 50
    end
    object medstockspecifi: TStringField
      DisplayLabel = #35268#26684
      FieldName = 'specifi'
      Size = 50
    end
    object medstockpdt_place: TStringField
      DisplayLabel = #20135#22320#21378#23478
      FieldName = 'pdt_place'
      Size = 30
    end
    object medstockmed_unit: TStringField
      DisplayLabel = #21333#20301
      FieldName = 'med_unit'
      Size = 30
    end
    object medstockqtyperpack: TBCDField
      DisplayLabel = #20869#35013#25968
      FieldName = 'qtyperpack'
      DisplayFormat = '###,###;; '
      Precision = 18
      Size = 0
    end
    object medstockimp_pause: TBooleanField
      DisplayLabel = #26242#20572#20837#24211
      FieldName = 'imp_pause'
    end
    object medstockexp_pause: TBooleanField
      DisplayLabel = #26242#20572#20986#24211
      FieldName = 'exp_pause'
    end
    object medstockdeficient: TBooleanField
      DisplayLabel = #21487#36879#25903
      FieldName = 'deficient'
    end
    object medstockstop_yn: TBooleanField
      DisplayLabel = #20572#29992
      FieldName = 'stop_yn'
    end
    object medstockstop_by: TIntegerField
      FieldName = 'stop_by'
    end
    object medstockstop_for: TStringField
      DisplayLabel = #20572#29992#21407#22240
      FieldName = 'stop_for'
    end
    object medstockstop_dt: TDateTimeField
      DisplayLabel = #20572#29992#26085#26399
      FieldName = 'stop_dt'
    end
    object medstockCstop_by: TStringField
      DisplayLabel = #20572#29992#20154
      FieldKind = fkLookup
      FieldName = 'Cstop_by'
      LookupDataSet = staff
      LookupKeyFields = 'sta_id'
      LookupResultField = 'zname'
      KeyFields = 'stop_by'
      Lookup = True
    end
  end
  object DSmedstock: TDataSource
    DataSet = medstock
    Left = 162
    Top = 231
  end
  object imp_type: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = imp_typeBeforePost
    AfterPost = fee_typeAfterPost
    AfterDelete = medstockAfterPost
    Left = 114
    Top = 99
    object imp_typeobj_id: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object imp_typezdesc: TStringField
      DisplayLabel = #20837#24211#31867#21035
      FieldName = 'zdesc'
      Size = 30
    end
    object imp_typeobj_type_id: TIntegerField
      FieldName = 'obj_type_id'
    end
  end
  object DSimp_type: TDataSource
    DataSet = imp_type
    Left = 162
    Top = 99
  end
  object exp_type: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = exp_typeBeforePost
    AfterPost = fee_typeAfterPost
    AfterDelete = medstockAfterPost
    Left = 114
    Top = 55
    object exp_typeobj_id: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object exp_typezdesc: TStringField
      DisplayLabel = #20986#24211#31867#21035
      FieldName = 'zdesc'
      Size = 30
    end
    object exp_typeobj_type_id: TIntegerField
      FieldName = 'obj_type_id'
    end
  end
  object DSexp_type: TDataSource
    DataSet = exp_type
    Left = 162
    Top = 55
  end
  object settle_type: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = settle_typeBeforePost
    AfterPost = settle_typeAfterPost
    AfterDelete = medstockAfterPost
    Left = 114
    Top = 145
    object settle_typeobj_id: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object settle_typezdesc: TStringField
      DisplayLabel = #32467#31639#31867#21035
      FieldName = 'zdesc'
      Size = 30
    end
    object settle_typeobj_type_id: TIntegerField
      FieldName = 'obj_type_id'
    end
  end
  object DSsettle_type: TDataSource
    DataSet = settle_type
    Left = 162
    Top = 145
  end
  object picmedinfoc: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tb_medicine a,vi_medstock b,tb_medinfo c:=mcode'
    Params = <
      item
        DataType = ftString
        ParamType = ptInput
        Value = 'T00014'
      end>
    ProviderName = 'pvdpubquery'
    RemoteServer = RemoteServer
    Left = 308
    Top = 99
    object AutoIncField2: TAutoIncField
      FieldName = 'med_id'
      ReadOnly = True
    end
    object StringField3: TStringField
      FieldName = 'med_code'
    end
    object StringField4: TStringField
      FieldName = 'med_name'
      Size = 50
    end
    object StringField5: TStringField
      FieldName = 'med_alia'
      Size = 50
    end
    object StringField6: TStringField
      FieldName = 'foreigname'
      Size = 50
    end
    object StringField7: TStringField
      FieldName = 'specifi'
      Size = 50
    end
    object picmedinfocdiscount: TBCDField
      DisplayLabel = #25187#29575
      FieldName = 'discount'
      DisplayFormat = '##,##0.##%;; '
      Precision = 15
    end
    object IntegerField4: TIntegerField
      FieldName = 'unit_id'
    end
    object IntegerField5: TIntegerField
      FieldName = 'med_type_id'
    end
    object StringField8: TStringField
      FieldName = 'pdt_place'
      Size = 30
    end
    object BCDField16: TBCDField
      FieldName = 'qtyperbox'
      DisplayFormat = '###,###;; '
      Precision = 18
      Size = 0
    end
    object BCDField17: TBCDField
      FieldName = 'qtyperpack'
      DisplayFormat = '###,###;; '
      Precision = 18
      Size = 0
    end
    object MemoField1: TMemoField
      FieldName = 'notes'
      BlobType = ftMemo
    end
    object BooleanField1: TBooleanField
      FieldName = 'otc_rx'
    end
    object StringField10: TStringField
      FieldName = 'appv_docu'
    end
    object BooleanField2: TBooleanField
      FieldName = 'special_treat'
    end
    object StringField11: TStringField
      FieldName = 'qry_code'
    end
    object StringField13: TStringField
      FieldName = 'site_code'
    end
    object IntegerField7: TIntegerField
      FieldName = 'pick_ord'
    end
    object AutoIncField3: TAutoIncField
      FieldName = 'rec_id'
      ReadOnly = True
    end
    object IntegerField8: TIntegerField
      FieldName = 'stock_id'
    end
    object BCDField20: TBCDField
      FieldName = 'retailprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object BCDField22: TBCDField
      FieldName = 'wholeprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object BCDField24: TBCDField
      FieldName = 'contractprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object BCDField25: TBCDField
      DisplayLabel = #25253#20215
      FieldName = 'quotaprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object BCDField26: TBCDField
      FieldName = 'agentprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object BCDField27: TBCDField
      FieldName = 'memberprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object picmedinfocbidprice: TBCDField
      DisplayLabel = #25307#26631#20215
      FieldName = 'bidprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object BCDField29: TBCDField
      FieldName = 'max_suprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object BCDField30: TBCDField
      FieldName = 'lat_suprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object BCDField31: TBCDField
      FieldName = 'min_salprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object BCDField32: TBCDField
      FieldName = 'lat_salprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object BCDField33: TBCDField
      FieldName = 'supplyprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object picmedinfocbarcode: TStringField
      FieldName = 'barcode'
    end
    object picmedinfocprice: TBCDField
      FieldName = 'price'
      Required = True
      Precision = 15
      Size = 6
    end
    object picmedinfocavg_type: TIntegerField
      DisplayLabel = #22343#20215#31867#21035
      FieldName = 'avg_type'
    end
  end
  object DSpicmedinfoc: TDataSource
    DataSet = picmedinfoc
    Left = 352
    Top = 99
  end
  object sysoption: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdsysoption'
    RemoteServer = RemoteServer
    AfterPost = sysoptionAfterPost
    Left = 114
    Top = 9
  end
  object DSsysoption: TDataSource
    DataSet = sysoption
    Left = 162
    Top = 9
  end
  object cdsmedinfo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdmedinfo'
    RemoteServer = RemoteServer
    BeforePost = cdsmedinfoBeforePost
    AfterPost = cdsmedinfoAfterPost
    OnCalcFields = cdsmedinfoCalcFields
    Left = 16
    Top = 324
    object cdsmedinforec_id: TAutoIncField
      FieldName = 'rec_id'
      ReadOnly = True
    end
    object cdsmedinfomed_code: TStringField
      DisplayLabel = #32534#30721
      FieldName = 'med_code'
    end
    object cdsmedinfomed_name: TStringField
      DisplayLabel = #21697#21517
      FieldName = 'med_name'
      Size = 50
    end
    object cdsmedinfomed_alia: TStringField
      DisplayLabel = #21035#21517
      FieldName = 'med_alia'
      Size = 50
    end
    object cdsmedinfospecifi: TStringField
      DisplayLabel = #35268#26684
      FieldName = 'specifi'
      Size = 50
    end
    object cdsmedinfounit_id: TIntegerField
      FieldName = 'unit_id'
    end
    object cdsmedinfomed_type_id: TIntegerField
      FieldName = 'med_type_id'
    end
    object cdsmedinfopdt_place: TStringField
      DisplayLabel = #20135#22320#21378#23478
      FieldName = 'pdt_place'
      Size = 30
    end
    object cdsmedinfoqtyperpack: TBCDField
      FieldName = 'qtyperpack'
      Precision = 18
      Size = 0
    end
    object cdsmedinfosite_code: TStringField
      FieldName = 'site_code'
    end
    object cdsmedinfostock_id: TIntegerField
      FieldName = 'stock_id'
    end
    object cdsmedinfomed_id: TIntegerField
      FieldName = 'med_id'
    end
    object cdsmedinfoprice: TBCDField
      DisplayLabel = #24179#22343#20215
      FieldName = 'price'
      DisplayFormat = '###,##0.00;; '
      Precision = 15
      Size = 5
    end
    object cdsmedinfolow_limit_price: TBCDField
      DisplayLabel = #26368#20302#38480#20215
      FieldName = 'low_limit_price'
      DisplayFormat = '###,##0.00##;; '
      Precision = 15
    end
    object cdsmedinforetailprice: TBCDField
      DisplayLabel = #38646#21806#20215
      FieldName = 'retailprice'
      DisplayFormat = '###,###,##0.00##;; '
      EditFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object cdsmedinfowholeprice: TBCDField
      DisplayLabel = #25209#21457#20215
      FieldName = 'wholeprice'
      DisplayFormat = '###,###,##0.00##;; '
      EditFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object cdsmedinfocontractprice: TBCDField
      DisplayLabel = #21512#21516#20215
      FieldName = 'contractprice'
      DisplayFormat = '###,###,##0.00##;; '
      EditFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object cdsmedinfoagentprice: TBCDField
      DisplayLabel = #20195#29702#20215
      FieldName = 'agentprice'
      DisplayFormat = '###,###,##0.00##;; '
      EditFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object cdsmedinfomemberprice: TBCDField
      DisplayLabel = #20250#21592#20215
      FieldName = 'memberprice'
      DisplayFormat = '###,###,##0.00##;; '
      EditFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object cdsmedinfobidprice: TBCDField
      DisplayLabel = #25307#26631#20215
      FieldName = 'bidprice'
      DisplayFormat = '###,###,##0.00##;; '
      EditFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object cdsmedinfosupplyprice: TBCDField
      DisplayLabel = #20379#24212#20215
      FieldName = 'supplyprice'
      DisplayFormat = '###,###,##0.00##;; '
      EditFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object cdsmedinfoquotaprice: TBCDField
      DisplayLabel = #25253#20215
      FieldName = 'quotaprice'
      DisplayFormat = '###,###,##0.00##;; '
      EditFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object cdsmedinfomarketprice: TBCDField
      DisplayLabel = #24066#22330#20215
      FieldName = 'marketprice'
      DisplayFormat = '###,###,##0.00##;; '
      EditFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object cdsmedinfosellprice: TBCDField
      DisplayLabel = #20248#24800#20215
      FieldName = 'sellprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object cdsmedinfomax_suprice: TBCDField
      FieldName = 'max_suprice'
      DisplayFormat = '###,###,##0.00##;; '
      EditFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object cdsmedinfoauctionprice: TBCDField
      DisplayLabel = #25293#21334#20215
      FieldName = 'auctionprice'
      DisplayFormat = '###,###,##0.00;; '
      Precision = 15
    end
    object cdsmedinfolat_suprice: TBCDField
      DisplayLabel = #26368#36817#36827#36135#20215
      FieldName = 'lat_suprice'
      DisplayFormat = '###,###,##0.00##;; '
      EditFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object cdsmedinfomin_salprice: TBCDField
      FieldName = 'min_salprice'
      DisplayFormat = '###,###,##0.00##;; '
      EditFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object cdsmedinfolat_salprice: TBCDField
      DisplayLabel = #26368#36817#38144#21806#20215
      FieldName = 'lat_salprice'
      DisplayFormat = '###,###,##0.00##;; '
      EditFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object cdsmedinfoLmed_unit: TStringField
      DisplayLabel = #21333#20301
      FieldKind = fkLookup
      FieldName = 'Lmed_unit'
      LookupDataSet = cdsunit
      LookupKeyFields = 'obj_id'
      LookupResultField = 'zdesc'
      KeyFields = 'unit_id'
      Lookup = True
    end
    object cdsmedinfoLmed_type: TStringField
      DisplayLabel = #31867#21035
      FieldKind = fkLookup
      FieldName = 'Lmed_type'
      LookupDataSet = med_type
      LookupKeyFields = 'obj_id'
      LookupResultField = 'zdesc'
      KeyFields = 'med_type_id'
      Lookup = True
    end
    object cdsmedinfoavg_type: TIntegerField
      FieldName = 'avg_type'
    end
    object cdsmedinfoCavg_type: TStringField
      DisplayLabel = #22343#20215#31867#21035
      FieldKind = fkCalculated
      FieldName = 'Cavg_type'
      Calculated = True
    end
    object cdsmedinfootc_rx: TBooleanField
      FieldName = 'otc_rx'
      ReadOnly = True
    end
    object cdsmedinfogmp: TBooleanField
      FieldName = 'gmp'
      ReadOnly = True
    end
    object cdsmedinfocreat_dt: TDateTimeField
      FieldName = 'creat_dt'
    end
    object cdsmedinfocreat_by: TIntegerField
      FieldName = 'creat_by'
    end
    object cdsmedinfocreat_for: TStringField
      FieldName = 'creat_for'
      Size = 30
    end
    object cdsmedinfoLcreat_by: TStringField
      FieldKind = fkLookup
      FieldName = 'Lcreat_by'
      LookupDataSet = staff
      LookupKeyFields = 'sta_id'
      LookupResultField = 'zname'
      KeyFields = 'creat_by'
      Lookup = True
    end
    object cdsmedinfobid_type: TIntegerField
      FieldName = 'bid_type'
    end
    object cdsmedinfobid_mate: TIntegerField
      FieldName = 'bid_mate'
    end
  end
  object DSmedinfo: TDataSource
    DataSet = cdsmedinfo
    Left = 65
    Top = 324
  end
  object rnp_type: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = rnp_typeBeforePost
    AfterPost = fee_typeAfterPost
    AfterDelete = medstockAfterPost
    Left = 212
    Top = 55
    object rnp_typeobj_id: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object rnp_typeobj_type_id: TIntegerField
      FieldName = 'obj_type_id'
    end
    object rnp_typezdesc: TStringField
      DisplayLabel = #25910#20184#27454#31867#21035
      FieldName = 'zdesc'
      Size = 30
    end
  end
  object DSrnp_type: TDataSource
    DataSet = rnp_type
    Left = 258
    Top = 55
  end
  object sysframe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    Left = 212
    Top = 231
    object sysframesf_id: TAutoIncField
      FieldName = 'sf_id'
      ReadOnly = True
    end
    object sysframesf_parent: TIntegerField
      FieldName = 'sf_parent'
    end
    object sysframesf_title: TStringField
      DisplayLabel = #27169#22359
      FieldName = 'sf_title'
      Size = 30
    end
    object sysframesf_invoke: TIntegerField
      DisplayLabel = #35843#29992#21495
      FieldName = 'sf_invoke'
    end
    object sysframesf_sort: TWordField
      FieldName = 'sf_sort'
    end
  end
  object DSsysframe: TDataSource
    DataSet = sysframe
    Left = 258
    Top = 231
  end
  object user: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select sta_id,zname,zdesc=dbo.fn_obj_desc(dept_id) from tb_staff' +
      ' where use_priority=1 or sta_id in (select sta_id from tb_userig' +
      'ht)'
    Params = <>
    ProviderName = 'pvdpubquery'
    RemoteServer = RemoteServer
    Left = 308
    Top = 145
    object usersta_id: TIntegerField
      FieldName = 'sta_id'
    end
    object userzname: TStringField
      FieldName = 'zname'
    end
    object userzdesc: TStringField
      FieldName = 'zdesc'
      Size = 30
    end
  end
  object DSuser: TDataSource
    DataSet = user
    Left = 352
    Top = 145
  end
  object useright: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvduseright'
    RemoteServer = RemoteServer
    Left = 308
    Top = 186
    object userightrec_id: TAutoIncField
      FieldName = 'rec_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object userightsta_id: TIntegerField
      FieldName = 'sta_id'
    end
    object userightsf_id: TIntegerField
      FieldName = 'sf_id'
    end
    object userightsf_title: TStringField
      DisplayLabel = #26435#38480
      FieldName = 'sf_title'
      Size = 30
    end
    object userightprintable: TBooleanField
      DisplayLabel = #21487#25171#21360
      FieldName = 'printable'
    end
    object userightexportable: TBooleanField
      DisplayLabel = #36716#20986
      FieldName = 'exportable'
    end
  end
  object DSuseright: TDataSource
    DataSet = useright
    Left = 352
    Top = 186
  end
  object RemoteServer: TSocketConnection
    ServerGUID = '{665244F6-FFFA-4002-ADF8-32004DFA57DA}'
    ServerName = 'KAserver.KA'
    ObjectBroker = SimpleObjectBroker1
    Left = 65
    Top = 9
  end
  object DSexgqry: TDataSource
    DataSet = exgqry
    Left = 65
    Top = 367
  end
  object exgqry: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    Left = 16
    Top = 367
    object exgqryrec_id: TAutoIncField
      FieldName = 'rec_id'
      ReadOnly = True
    end
    object exgqrysrc_mate: TStringField
      DisplayLabel = #20379#36135#21333#20301
      FieldName = 'src_mate'
      ReadOnly = True
      Size = 100
    end
    object exgqrydst_mate: TStringField
      DisplayLabel = #20195#29702#21830'/'#23458#25143
      FieldName = 'dst_mate'
      ReadOnly = True
      Size = 100
    end
    object exgqrybroker: TStringField
      DisplayLabel = #19994#21153#21592
      FieldName = 'broker'
    end
    object exgqrycarry_dt: TDateTimeField
      DisplayLabel = #21457#29983#26085#26399
      FieldName = 'carry_dt'
      DisplayFormat = 'yyyy-mm-dd'
    end
    object exgqrybod_cd: TStringField
      DisplayLabel = #21333#25454#21495
      FieldName = 'bod_cd'
    end
    object exgqrycreater: TStringField
      DisplayLabel = #21046#21333
      FieldName = 'creater'
    end
    object exgqrybod_type_id: TIntegerField
      FieldName = 'bod_type_id'
    end
    object exgqrybod_type: TStringField
      DisplayLabel = #21333#25454#31867#21035
      FieldName = 'bod_type'
      ReadOnly = True
      Size = 8
    end
    object exgqrybusi_type: TStringField
      DisplayLabel = #19994#21153#31867#21035
      FieldName = 'busi_type'
      Size = 30
    end
    object exgqrymed_code: TStringField
      DisplayLabel = #32534#30721
      FieldName = 'med_code'
    end
    object exgqrymed_name: TStringField
      DisplayLabel = #36890#29992#21517
      FieldName = 'med_name'
      Size = 50
    end
    object exgqrychm_name: TStringField
      DisplayLabel = #21830#21697#21517
      FieldName = 'chm_name'
      Size = 50
    end
    object exgqryspecifi: TStringField
      DisplayLabel = #35268#26684
      FieldName = 'specifi'
      Size = 50
    end
    object exgqrypdt_place: TStringField
      DisplayLabel = #29983#20135#20225#19994
      FieldName = 'pdt_place'
      Size = 30
    end
    object exgqrymed_unit: TStringField
      DisplayLabel = #21333#20301
      FieldName = 'med_unit'
      ReadOnly = True
      Size = 10
    end
    object exgqryqtyperpack: TBCDField
      DisplayLabel = #20214#35013#25968
      FieldName = 'qtyperpack'
      DisplayFormat = '###,###,###0.##;; '
      Precision = 18
      Size = 0
    end
    object exgqrybat_cd: TStringField
      DisplayLabel = #25209#21495
      FieldName = 'bat_cd'
    end
    object exgqryprice: TBCDField
      DisplayLabel = #21333#20215
      FieldName = 'price'
      DisplayFormat = '###,###,###,##0.00##;; '
      Precision = 15
      Size = 6
    end
    object exgqryimp_qty: TBCDField
      DisplayLabel = #20837#24211#25968
      FieldName = 'imp_qty'
      ReadOnly = True
      DisplayFormat = '###,###,###0.##;; '
      Precision = 15
    end
    object exgqryimp_amt: TBCDField
      DisplayLabel = #20837#24211#37329#39069
      FieldName = 'imp_amt'
      ReadOnly = True
      DisplayFormat = '###,###,###,##0.00;; '
      Precision = 15
    end
    object exgqryexp_qty: TBCDField
      DisplayLabel = #20986#24211#25968
      FieldName = 'exp_qty'
      ReadOnly = True
      DisplayFormat = '###,###,###0.##;; '
      Precision = 15
    end
    object exgqryexp_amt: TBCDField
      DisplayLabel = #20986#24211#37329#39069
      FieldName = 'exp_amt'
      ReadOnly = True
      DisplayFormat = '###,###,###,##0.00;; '
      Precision = 15
    end
    object exgqrydrawrate: TBCDField
      DisplayLabel = #25237#36164#27454
      FieldName = 'drawrate'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00;; '
      Precision = 15
    end
    object exgqrybod_desc: TStringField
      DisplayLabel = #25688#35201
      FieldName = 'bod_desc'
      Size = 30
    end
    object exgqryCmate_name: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cmate_name'
      Calculated = True
    end
    object exgqrybal: TBCDField
      DisplayLabel = #24211#23384#20313#25968
      FieldName = 'bal'
      ReadOnly = True
      DisplayFormat = '###,###,###0.##;'
      Precision = 32
    end
  end
  object SimpleObjectBroker1: TSimpleObjectBroker
    LoadBalanced = True
    Left = 16
    Top = 9
  end
  object mateqry: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'pvdpubquery'
    RemoteServer = RemoteServer
    Left = 114
    Top = 324
    object exgqrybod_id: TAutoIncField
      FieldName = 'bod_id'
      ReadOnly = True
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = #26085#26399
      FieldName = 'check_dt'
    end
    object StringField9: TStringField
      DisplayLabel = #21333#25454#21495
      FieldName = 'bod_cd'
    end
    object StringField14: TStringField
      DisplayLabel = #23458#25143#25110#20379#24212#21830
      FieldName = 'busimate'
      Size = 100
    end
    object StringField15: TStringField
      DisplayLabel = #25688#35201
      FieldName = 'bod_desc'
      Size = 30
    end
    object StringField16: TStringField
      DisplayLabel = #21046#21333
      FieldName = 'creater'
    end
    object StringField17: TStringField
      DisplayLabel = #21333#25454#31867#21035
      FieldName = 'bod_type'
      ReadOnly = True
      Size = 8
    end
    object StringField18: TStringField
      DisplayLabel = #19994#21153#31867#21035
      FieldName = 'busi_type'
      Size = 30
    end
    object exgqryimp_amot: TBCDField
      DisplayLabel = #20837#24211#37329#39069
      FieldName = 'imp_amot'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00;; '
      Precision = 15
    end
    object exgqryexp_amot: TBCDField
      DisplayLabel = #20986#24211#37329#39069
      FieldName = 'exp_amot'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00;; '
      Precision = 15
    end
    object exgqryrecption: TBCDField
      DisplayLabel = #25910#36135#27454
      FieldName = 'recption'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00;; '
      Precision = 15
    end
    object exgqrypay: TBCDField
      DisplayLabel = #20184#36135#27454
      FieldName = 'pay'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00;; '
      Precision = 15
    end
    object exgqrydue: TBCDField
      DisplayLabel = #20313#39069
      FieldName = 'due'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
  end
  object DSmateqry: TDataSource
    DataSet = mateqry
    Left = 162
    Top = 324
  end
  object receipt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdreceipt'
    RemoteServer = RemoteServer
    Left = 213
    Top = 416
    object receiptsta_id: TAutoIncField
      FieldName = 'sta_id'
      ReadOnly = True
    end
    object receiptzname: TStringField
      FieldName = 'zname'
    end
  end
  object DSreceipt: TDataSource
    DataSet = receipt
    Left = 257
    Top = 416
  end
  object homebank: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = homebankBeforePost
    AfterPost = homebankAfterPost
    AfterDelete = staffAfterPost
    Left = 114
    Top = 367
    object homebankbank_id: TAutoIncField
      FieldName = 'bank_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object homebankcomp_id: TAutoIncField
      FieldName = 'comp_id'
    end
    object homebankbank_name: TStringField
      DisplayLabel = #31185#30446#21517#31216
      FieldName = 'bank_name'
      Size = 50
    end
    object homebankbank_acnt: TStringField
      DisplayLabel = #38134#34892#24080#25143
      FieldName = 'bank_acnt'
    end
    object homebankbalance: TBCDField
      DisplayLabel = #23384#27454#20313#39069
      FieldName = 'balance'
      DisplayFormat = '###,###,##0.00;; '
      Precision = 15
    end
  end
  object DShomebank: TDataSource
    DataSet = homebank
    Left = 162
    Top = 367
  end
  object picmedinfo: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from tb_medicine a,tb_medstock b,tb_medinfo c where a.m' +
      'ed_id=b.med_id and a.med_id*=c.med_id and a.med_id=:mid'
    Params = <
      item
        DataType = ftInteger
        Name = 'mid'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'pvdpubquery'
    RemoteServer = RemoteServer
    Left = 308
    Top = 55
    object picmedinfomed_id: TAutoIncField
      FieldName = 'med_id'
      ReadOnly = True
    end
    object picmedinfomed_code: TStringField
      FieldName = 'med_code'
    end
    object picmedinfomed_name: TStringField
      FieldName = 'med_name'
      Size = 50
    end
    object picmedinfomed_alia: TStringField
      FieldName = 'med_alia'
      Size = 50
    end
    object picmedinfoforeigname: TStringField
      FieldName = 'foreigname'
      Size = 50
    end
    object picmedinfospecifi: TStringField
      FieldName = 'specifi'
      Size = 50
    end
    object picmedinfounit_id: TIntegerField
      FieldName = 'unit_id'
    end
    object picmedinfomed_type_id: TIntegerField
      FieldName = 'med_type_id'
    end
    object picmedinfopdt_place: TStringField
      FieldName = 'pdt_place'
      Size = 30
    end
    object picmedinfoqtyperbox: TBCDField
      FieldName = 'qtyperbox'
      DisplayFormat = '###,###;; '
      Precision = 18
      Size = 0
    end
    object picmedinfoqtyperpack: TBCDField
      FieldName = 'qtyperpack'
      DisplayFormat = '###,###;; '
      Precision = 18
      Size = 0
    end
    object picmedinfonotes: TMemoField
      FieldName = 'notes'
      BlobType = ftMemo
    end
    object picmedinfootc_rx: TBooleanField
      FieldName = 'otc_rx'
    end
    object picmedinfoappv_docu: TStringField
      FieldName = 'appv_docu'
    end
    object picmedinfospecial_treat: TBooleanField
      FieldName = 'special_treat'
    end
    object picmedinfoqry_code: TStringField
      FieldName = 'qry_code'
    end
    object picmedinfoimp_pause: TBooleanField
      FieldName = 'imp_pause'
    end
    object picmedinfoexp_pause: TBooleanField
      FieldName = 'exp_pause'
    end
    object picmedinfodeficient: TBooleanField
      FieldName = 'deficient'
    end
    object picmedinfostop_yn: TBooleanField
      FieldName = 'stop_yn'
    end
    object picmedinfostop_by: TIntegerField
      FieldName = 'stop_by'
    end
    object picmedinfostop_for: TStringField
      FieldName = 'stop_for'
    end
    object picmedinfostop_dt: TDateTimeField
      FieldName = 'stop_dt'
    end
    object picmedinfosite_code: TStringField
      FieldName = 'site_code'
    end
    object picmedinfopick_ord: TIntegerField
      FieldName = 'pick_ord'
    end
    object picmedinforec_id: TAutoIncField
      FieldName = 'rec_id'
      ReadOnly = True
    end
    object picmedinfostock_id: TIntegerField
      FieldName = 'stock_id'
    end
    object picmedinfoqty: TBCDField
      FieldName = 'qty'
      DisplayFormat = '###,###,##0.##;; '
      Precision = 15
    end
    object picmedinfoqty1: TBCDField
      FieldName = 'qty1'
      DisplayFormat = '###,###,##0;; '
      Precision = 15
    end
    object picmedinfoqty2: TBCDField
      FieldName = 'qty2'
      DisplayFormat = '###,###,##0;; '
      Precision = 15
    end
    object picmedinfoprice: TBCDField
      FieldName = 'price'
      Precision = 15
      Size = 5
    end
    object picmedinforetailprice: TBCDField
      FieldName = 'retailprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object picmedinfowholeprice: TBCDField
      FieldName = 'wholeprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object picmedinfocontractprice: TBCDField
      FieldName = 'contractprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object picmedinfoquotaprice: TBCDField
      DisplayLabel = #25253#20215
      FieldName = 'quotaprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object picmedinfoagentprice: TBCDField
      FieldName = 'agentprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object picmedinfobidprice: TBCDField
      DisplayLabel = #25307#26631#20215
      FieldName = 'bidprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object picmedinfomemberprice: TBCDField
      FieldName = 'memberprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object picmedinfomax_suprice: TBCDField
      FieldName = 'max_suprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object picmedinfolat_suprice: TBCDField
      FieldName = 'lat_suprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object picmedinfomin_salprice: TBCDField
      FieldName = 'min_salprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object picmedinfolat_salprice: TBCDField
      FieldName = 'lat_salprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object picmedinfosupplyprice: TBCDField
      FieldName = 'supplyprice'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
    end
    object picmedinfobarcode: TStringField
      FieldName = 'barcode'
    end
    object picmedinfoavg_type: TIntegerField
      DisplayLabel = #22343#20215#31867#21035
      FieldName = 'avg_type'
    end
  end
  object DSpicmedinfo: TDataSource
    DataSet = picmedinfo
    Left = 352
    Top = 55
  end
  object storage: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdstorage'
    RemoteServer = RemoteServer
    Left = 403
    Top = 324
    object AutoIncField6: TAutoIncField
      FieldName = 'sta_id'
      ReadOnly = True
    end
    object StringField31: TStringField
      FieldName = 'zname'
    end
  end
  object DSstorage: TDataSource
    DataSet = storage
    Left = 448
    Top = 324
  end
  object bank: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdbank'
    RemoteServer = RemoteServer
    BeforePost = bankBeforePost
    AfterPost = settle_typeAfterPost
    AfterDelete = staffAfterPost
    Left = 16
    Top = 414
    object bankobj_id: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object bankobj_type_id: TIntegerField
      FieldName = 'obj_type_id'
    end
    object bankzdesc: TStringField
      DisplayLabel = #38134#34892
      FieldName = 'zdesc'
      Size = 30
    end
  end
  object DSbank: TDataSource
    DataSet = bank
    Left = 65
    Top = 414
  end
  object allot_type: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdallot_type'
    RemoteServer = RemoteServer
    BeforePost = allot_typeBeforePost
    AfterPost = settle_typeAfterPost
    AfterDelete = medstockAfterPost
    Left = 403
    Top = 145
    object AutoIncField8: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object StringField39: TStringField
      DisplayLabel = #35843#25320#31867#21035
      FieldName = 'zdesc'
      Size = 30
    end
    object IntegerField12: TIntegerField
      FieldName = 'obj_type_id'
    end
  end
  object DSallot_type: TDataSource
    DataSet = allot_type
    Left = 448
    Top = 145
  end
  object stockqry: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubquery'
    RemoteServer = RemoteServer
    Left = 212
    Top = 324
    object stockqryrec_id: TAutoIncField
      FieldName = 'rec_id'
      ReadOnly = True
    end
    object stockqrydistrict: TStringField
      DisplayLabel = #23458#25143#22320#21306
      FieldName = 'district'
      ReadOnly = True
      Size = 100
    end
    object stockqrymate_id: TIntegerField
      FieldName = 'mate_id'
    end
    object stockqryagent: TStringField
      DisplayLabel = #20195#29702#21830
      FieldName = 'agent'
      ReadOnly = True
      Size = 100
    end
    object stockqrymed_code: TStringField
      DisplayLabel = #32534#30721
      FieldName = 'med_code'
    end
    object stockqrymed_name: TStringField
      DisplayLabel = #36890#29992#21517
      FieldName = 'med_name'
      Size = 50
    end
    object stockqrychm_name: TStringField
      DisplayLabel = #21830#21697#21517
      FieldName = 'chm_name'
      Size = 50
    end
    object stockqryspecifi: TStringField
      DisplayLabel = #35268#26684
      FieldName = 'specifi'
      Size = 50
    end
    object stockqrypdt_place: TStringField
      DisplayLabel = #29983#20135#20225#19994
      FieldName = 'pdt_place'
      Size = 30
    end
    object stockqrymed_unit: TStringField
      DisplayLabel = #21333#20301
      FieldName = 'med_unit'
      Size = 30
    end
    object stockqrymed_type: TStringField
      DisplayLabel = #21058#22411
      FieldName = 'med_type'
      Size = 30
    end
    object stockqryqtyperpack: TBCDField
      DisplayLabel = #20214#35013#25968
      FieldName = 'qtyperpack'
      DisplayFormat = '###,###;; '
      Precision = 18
      Size = 0
    end
    object stockqryqty: TBCDField
      DisplayLabel = #25968#37327
      FieldName = 'qty'
      DisplayFormat = '###,###,##0;; '
      Precision = 15
    end
    object stockqryprice: TBCDField
      DisplayLabel = #21333#20215
      FieldName = 'price'
      DisplayFormat = '###,###,##0.00##;; '
      Precision = 15
      Size = 5
    end
    object stockqryGMP: TBooleanField
      FieldName = 'GMP'
    end
    object stockqryotc_rx: TBooleanField
      DisplayLabel = 'OTC_Rx'
      FieldName = 'otc_rx'
    end
    object stockqrybat_cd: TStringField
      DisplayLabel = #25209#21495
      FieldName = 'bat_cd'
    end
    object stockqrymed_id: TAutoIncField
      FieldName = 'med_id'
      ReadOnly = True
    end
    object stockqrystock_amot: TBCDField
      DisplayLabel = #24211#23384#37329#39069
      FieldName = 'stock_amot'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00;; '
      Precision = 32
      Size = 9
    end
    object stockqryvalid_dt: TStringField
      DisplayLabel = #26377#25928#26399
      FieldName = 'valid_dt'
      ReadOnly = True
      Size = 10
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'xls'
    Filter = 'MS Excel '#34920'(*.xls)|*.xls'
    Left = 442
    Top = 8
  end
  object allotqry: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubquery'
    RemoteServer = RemoteServer
    Left = 258
    Top = 324
    object allotqrycheck_dt: TDateTimeField
      DisplayLabel = #26085#26399
      FieldName = 'check_dt'
    end
    object allotqrybod_cd: TStringField
      DisplayLabel = #21333#25454#21495
      FieldName = 'bod_cd'
    end
    object allotqrybod_desc: TStringField
      DisplayLabel = #21333#25454#25688#35201
      FieldName = 'bod_desc'
      Size = 30
    end
    object allotqrydtl_id: TAutoIncField
      FieldName = 'dtl_id'
      ReadOnly = True
    end
    object allotqrymed_id: TIntegerField
      FieldName = 'med_id'
    end
    object allotqrymed_code: TStringField
      DisplayLabel = #21830#21697#32534#30721
      FieldName = 'med_code'
    end
    object allotqrymed_name: TStringField
      DisplayLabel = #21697#21517
      FieldName = 'med_name'
      Size = 50
    end
    object allotqryspecifi: TStringField
      DisplayLabel = #35268#26684
      FieldName = 'specifi'
      Size = 50
    end
    object allotqrypdt_place: TStringField
      DisplayLabel = #20135#22320#21378#23478
      FieldName = 'pdt_place'
      Size = 30
    end
    object allotqryqtyperpack: TBCDField
      DisplayLabel = #20869#35013#25968
      FieldName = 'qtyperpack'
      DisplayFormat = '###,###;; '
      Precision = 18
      Size = 0
    end
    object allotqryqty_pack: TBCDField
      DisplayLabel = #25972#20214#25968
      FieldName = 'qty_pack'
      ReadOnly = True
      DisplayFormat = '###,##0;; '
      Size = 23
    end
    object allotqrymed_unit: TStringField
      DisplayLabel = #21333#20301
      FieldName = 'med_unit'
      Size = 30
    end
    object allotqrybat_cd: TStringField
      DisplayLabel = #25209#21495
      FieldName = 'bat_cd'
      Size = 30
    end
    object allotqryqty: TBCDField
      DisplayLabel = #25968#37327
      FieldName = 'qty'
      DisplayFormat = '###,###,##0;; '
      Precision = 15
    end
    object allotqryprice: TBCDField
      DisplayLabel = #21333#20215
      FieldName = 'price'
      DisplayFormat = '###,###,##0.00;; '
      Precision = 15
      Size = 6
    end
    object allotqrycreater: TStringField
      DisplayLabel = #21046#21333
      FieldName = 'creater'
    end
    object allotqrychecker: TStringField
      DisplayLabel = #23457#26680
      FieldName = 'checker'
    end
    object allotqrybod_type: TStringField
      DisplayLabel = #21333#25454#31867#21035
      FieldName = 'bod_type'
      ReadOnly = True
      Size = 10
    end
    object allotqrystock1: TStringField
      DisplayLabel = #35843#20986#20179
      FieldName = 'stock1'
      Size = 30
    end
    object allotqrystock2: TStringField
      DisplayLabel = #35843#20837#20179
      FieldName = 'stock2'
      ReadOnly = True
      Size = 30
    end
  end
  object purchaser: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpurchaser'
    RemoteServer = RemoteServer
    Left = 308
    Top = 231
    object AutoIncField9: TAutoIncField
      FieldName = 'sta_id'
      ReadOnly = True
    end
    object StringField40: TStringField
      FieldName = 'zname'
    end
  end
  object DSpurchaser: TDataSource
    DataSet = purchaser
    Left = 353
    Top = 231
  end
  object back_type: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = back_typeBeforePost
    AfterPost = fee_typeAfterPost
    AfterDelete = medstockAfterPost
    Left = 212
    Top = 367
    object AutoIncField12: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object StringField49: TStringField
      DisplayLabel = #36864#36135#21407#22240
      FieldName = 'zdesc'
      Size = 30
    end
    object IntegerField16: TIntegerField
      FieldName = 'obj_type_id'
    end
  end
  object DSback_type: TDataSource
    DataSet = back_type
    Left = 258
    Top = 367
  end
  object agent: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = agentBeforePost
    AfterPost = agentAfterPost
    BeforeDelete = agentBeforeDelete
    AfterDelete = agentAfterPost
    Left = 114
    Top = 415
    object agentmate_id: TIntegerField
      DisplayLabel = #24207#21495
      FieldName = 'mate_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object agentcomp_id: TAutoIncField
      FieldName = 'comp_id'
    end
    object agentmate_code: TStringField
      DisplayLabel = #32534#30721
      FieldName = 'mate_code'
      FixedChar = True
    end
    object agentmate_name: TStringField
      DisplayLabel = #21517#31216
      FieldName = 'mate_name'
      Size = 100
    end
    object agentlegalman: TStringField
      DisplayLabel = #27861#20154#20195#34920
      FieldName = 'legalman'
    end
    object agentdeputy: TStringField
      DisplayLabel = #32852#31995#20154
      FieldName = 'deputy'
    end
    object agentdeputy_title: TStringField
      DisplayLabel = #31216#35859
      FieldName = 'deputy_title'
    end
    object agentphone: TStringField
      DisplayLabel = #30005#35805
      FieldName = 'phone'
      Size = 50
    end
    object agentfax: TStringField
      DisplayLabel = #20256#30495
      FieldName = 'fax'
    end
    object agentaddress: TStringField
      DisplayLabel = #22320#22336
      FieldName = 'address'
      Size = 100
    end
    object agentdistrict: TIntegerField
      DisplayLabel = #25152#22312#21306#22495
      FieldName = 'district'
    end
    object agentcdistrict: TStringField
      DisplayLabel = #25152#22312#22320#21306
      FieldName = 'cdistrict'
      ReadOnly = True
      Size = 100
    end
    object agentpostalcode: TStringField
      DisplayLabel = #37038#32534
      FieldName = 'postalcode'
      Size = 10
    end
    object agentacnt_bank: TStringField
      DisplayLabel = #24320#25143#38134#34892
      FieldName = 'acnt_bank'
      Size = 50
    end
    object agentbank_account: TStringField
      DisplayLabel = #38134#34892#24080#21495
      DisplayWidth = 30
      FieldName = 'bank_account'
      Size = 30
    end
    object agenttax_code: TStringField
      DisplayLabel = #31246#21153#32534#21495
      FieldName = 'tax_code'
    end
    object agentmate_type_id: TIntegerField
      FieldName = 'mate_type_id'
    end
    object agentprice_type: TIntegerField
      DisplayLabel = #23450#20215#31867#21035
      FieldName = 'price_type'
    end
    object agentprice_cent: TBCDField
      DisplayLabel = #25187#29575
      FieldName = 'price_cent'
      EditFormat = '###,##0.####;; '
      Precision = 15
    end
    object agentqry_code: TStringField
      DisplayLabel = #31616#30721
      FieldName = 'qry_code'
      Size = 100
    end
    object agentsettle_type: TIntegerField
      DisplayLabel = #32467#31639#31867#21035
      FieldName = 'settle_type'
    end
    object agentpick_ord: TIntegerField
      DisplayLabel = #36873#21495
      FieldName = 'pick_ord'
    end
    object agentcredit_amot: TIntegerField
      DisplayLabel = #20449#29992#39069#24230
      FieldName = 'credit_amot'
    end
    object agentremark: TMemoField
      DisplayLabel = #22791#27880
      FieldName = 'remark'
      BlobType = ftMemo
    end
    object agentstop_by: TIntegerField
      DisplayLabel = #20572#29992#20154
      FieldName = 'stop_by'
    end
    object agentstop_for: TStringField
      DisplayLabel = #20572#29992#21407#22240
      FieldName = 'stop_for'
    end
    object agentstop_dt: TDateTimeField
      DisplayLabel = #20572#29992#26085#26399
      FieldName = 'stop_dt'
    end
    object agentstop_yn: TBooleanField
      DisplayLabel = #20572#29992
      FieldName = 'stop_yn'
    end
    object agenttax_rate: TBCDField
      FieldName = 'tax_rate'
      DisplayFormat = '##0.####'
      Precision = 15
    end
    object agentbroker_id: TIntegerField
      FieldName = 'broker_id'
    end
    object agentdue_limit: TIntegerField
      DisplayLabel = #27424#27454#26399#38480
      FieldName = 'due_limit'
      DisplayFormat = '#,##0;; '
    end
    object agentdescription: TStringField
      DisplayLabel = #35828#26126
      FieldName = 'description'
      Size = 30
    end
    object agentcreat_dt: TDateTimeField
      FieldName = 'creat_dt'
    end
    object agentcreat_by: TIntegerField
      FieldName = 'creat_by'
    end
    object agentLcreat_by: TStringField
      FieldKind = fkLookup
      FieldName = 'Lcreat_by'
      LookupDataSet = staff
      LookupKeyFields = 'sta_id'
      LookupResultField = 'zname'
      KeyFields = 'creat_by'
      Lookup = True
    end
    object agentmodify_dt: TDateTimeField
      FieldName = 'modify_dt'
    end
    object agentmodify_by: TIntegerField
      FieldName = 'modify_by'
    end
    object agentLmodify_by: TStringField
      FieldKind = fkLookup
      FieldName = 'Lmodify_by'
      LookupDataSet = staff
      LookupKeyFields = 'sta_id'
      LookupResultField = 'zname'
      KeyFields = 'modify_by'
      Lookup = True
    end
    object agentEmail: TStringField
      FieldName = 'Email'
      Size = 30
    end
    object agentwebsite: TStringField
      FieldName = 'website'
      Size = 30
    end
    object agentLsettle_type: TStringField
      FieldKind = fkLookup
      FieldName = 'Lsettle_type'
      LookupDataSet = settle_type
      LookupKeyFields = 'obj_id'
      LookupResultField = 'zdesc'
      KeyFields = 'settle_type'
      Lookup = True
    end
  end
  object DSagent: TDataSource
    DataSet = agent
    Left = 163
    Top = 415
  end
  object broker: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    AfterInsert = brokerAfterInsert
    BeforePost = brokerBeforePost
    AfterPost = brokerAfterPost
    AfterDelete = brokerAfterPost
    Left = 212
    Top = 10
    object AutoIncField5: TAutoIncField
      DisplayLabel = #24207#21495
      FieldName = 'sta_id'
      ReadOnly = True
    end
    object IntegerField32: TIntegerField
      FieldName = 'dept_id'
    end
    object IntegerField33: TIntegerField
      FieldName = 'sta_type_id'
    end
    object StringField77: TStringField
      DisplayLabel = #22995#21517
      FieldName = 'zname'
    end
    object brokerqry_code: TStringField
      DisplayLabel = #21161#35760#30721
      FieldName = 'qry_code'
      Size = 100
    end
    object StringField78: TStringField
      DisplayLabel = #32534#30721
      FieldName = 'zcode'
      Size = 10
    end
    object BooleanField11: TBooleanField
      DisplayLabel = #24615#21035
      FieldName = 'sex'
      DisplayValues = #22899';'#30007
    end
    object StringField79: TStringField
      DisplayLabel = #35777#20214#21495#30721
      FieldName = 'personalID'
    end
    object DateTimeField9: TDateTimeField
      DisplayLabel = #20986#29983#26085#26399
      FieldName = 'birthdate'
    end
    object StringField80: TStringField
      DisplayLabel = #31821#36143
      FieldName = 'origin'
    end
    object StringField81: TStringField
      DisplayLabel = #23398#21382
      FieldName = 'degree'
    end
    object StringField82: TStringField
      DisplayLabel = #32844#31216
      FieldName = 'title'
    end
    object DateTimeField10: TDateTimeField
      DisplayLabel = #20837#32844#26085#26399
      FieldName = 'hiredate'
    end
    object DateTimeField11: TDateTimeField
      FieldName = 'firedate'
    end
    object StringField83: TStringField
      DisplayLabel = #20219#32844
      FieldName = 'zpost'
    end
    object StringField84: TStringField
      DisplayLabel = #32852#31995#30005#35805
      FieldName = 'phone'
      Size = 50
    end
    object StringField85: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'fax'
    end
    object MemoField3: TMemoField
      DisplayLabel = #31616#21382
      FieldName = 'notes'
      BlobType = ftMemo
    end
    object StringField86: TStringField
      DisplayLabel = #23494#30721
      FieldName = 'password'
      Size = 50
    end
    object MemoField4: TMemoField
      DisplayLabel = #26435#38480
      FieldName = 'zright'
      BlobType = ftMemo
    end
    object BooleanField12: TBooleanField
      FieldName = 'operative'
    end
    object BooleanField13: TBooleanField
      DisplayLabel = #20572#29992
      FieldName = 'stop_yn'
    end
    object IntegerField34: TIntegerField
      DisplayLabel = #20572#29992#20154
      FieldName = 'stop_by'
    end
    object StringField87: TStringField
      DisplayLabel = #20572#29992#21407#22240
      FieldName = 'stop_for'
    end
    object DateTimeField12: TDateTimeField
      DisplayLabel = #20572#29992#26085#26399
      FieldName = 'stop_dt'
    end
    object StringField88: TStringField
      DisplayLabel = #20303#22336
      FieldName = 'residence'
      Size = 50
    end
    object BooleanField14: TBooleanField
      DisplayLabel = #39564#25910#20154#21592
      FieldName = 'receipt'
    end
    object BooleanField15: TBooleanField
      DisplayLabel = #38144#21806#20154#21592
      FieldName = 'broker'
    end
    object BooleanField16: TBooleanField
      DisplayLabel = #20179#31649#20154#21592
      FieldName = 'storage'
    end
    object IntegerField35: TIntegerField
      FieldName = 'use_priority'
    end
    object BooleanField17: TBooleanField
      DisplayLabel = #36130#21153#20154#21592
      FieldName = 'account'
    end
    object BooleanField18: TBooleanField
      DisplayLabel = #37319#36141#20154#21592
      FieldName = 'purchase'
    end
    object BooleanField19: TBooleanField
      DisplayLabel = #31649#29702#20154#21592
      FieldName = 'supervisor'
    end
    object BooleanField20: TBooleanField
      DisplayLabel = #21046#21333#20154#21592
      FieldName = 'biller'
    end
    object brokermate_id: TIntegerField
      FieldName = 'mate_id'
    end
    object brokerdepo_bank: TIntegerField
      FieldName = 'depo_bank'
    end
    object brokerdepo_acco: TStringField
      DisplayLabel = #24080#25143
      FieldName = 'depo_acco'
    end
    object brokerdistrict: TIntegerField
      FieldName = 'district'
    end
    object brokercdistrict: TStringField
      DisplayLabel = #25152#22312#22320#21306
      FieldName = 'cdistrict'
      ReadOnly = True
      Size = 100
    end
    object brokerbank_name: TStringField
      DisplayLabel = #24320#25143#38134#34892
      FieldName = 'bank_name'
      Size = 50
    end
    object brokerreceiver: TStringField
      DisplayLabel = #25910#27454#20154
      FieldName = 'receiver'
    end
    object brokerEmail: TStringField
      DisplayLabel = #30005#23376#20449#31665
      FieldName = 'Email'
    end
    object brokercreat_dt: TDateTimeField
      FieldName = 'creat_dt'
    end
    object brokercreat_by: TIntegerField
      FieldName = 'creat_by'
    end
    object brokermodify_dt: TDateTimeField
      FieldName = 'modify_dt'
    end
    object brokermodify_by: TIntegerField
      FieldName = 'modify_by'
    end
    object brokercreater: TStringField
      FieldName = 'creater'
      Size = 100
    end
    object brokermodifier: TStringField
      FieldName = 'modifier'
      Size = 100
    end
    object brokermobile_no: TStringField
      DisplayLabel = #30701#20449#25163#26426
      FieldName = 'mobile_no'
    end
  end
  object DSbroker: TDataSource
    DataSet = broker
    Left = 258
    Top = 10
  end
  object medicine: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = medicineBeforePost
    AfterPost = medicineAfterPost
    BeforeDelete = medicineBeforeDelete
    AfterDelete = medicineAfterPost
    Left = 16
    Top = 231
    object medicinemed_id: TIntegerField
      FieldName = 'med_id'
    end
    object medicinecomp_id: TAutoIncField
      FieldName = 'comp_id'
    end
    object medicinemed_code: TStringField
      DisplayLabel = #32534#30721
      FieldName = 'med_code'
    end
    object medicinemed_name: TStringField
      DisplayLabel = #21697#21517
      FieldName = 'med_name'
      Size = 50
    end
    object medicinemed_alia: TStringField
      DisplayLabel = #21035#21517
      FieldName = 'med_alia'
      Size = 50
    end
    object medicineforeigname: TStringField
      DisplayLabel = #25289#19969#25991
      FieldName = 'foreigname'
      Size = 50
    end
    object medicinespecifi: TStringField
      DisplayLabel = #35268#26684
      FieldName = 'specifi'
      Size = 50
    end
    object medicinemed_type_id: TIntegerField
      FieldName = 'med_type_id'
    end
    object medicinefunc_type_id: TIntegerField
      FieldName = 'func_type_id'
    end
    object medicinetax_type_id: TSmallintField
      FieldName = 'tax_type_id'
    end
    object medicinepdt_place: TStringField
      DisplayLabel = #20135#22320#21378#23478
      FieldName = 'pdt_place'
      Size = 30
    end
    object medicineunit_id: TIntegerField
      FieldName = 'unit_id'
    end
    object medicinemed_unit: TStringField
      DisplayLabel = #21333#20301
      FieldName = 'med_unit'
      Size = 50
    end
    object medicinemed_type: TStringField
      DisplayLabel = #21058#22411
      FieldName = 'med_type'
      Size = 10
    end
    object medicineqtyperbox: TBCDField
      DisplayLabel = #20013#21253#35013#25968
      FieldName = 'qtyperbox'
      DisplayFormat = '###,###;; '
      Precision = 18
      Size = 0
    end
    object medicineqtyperpack: TBCDField
      DisplayLabel = #20214#35013#25968
      FieldName = 'qtyperpack'
      DisplayFormat = '###,###;; '
      Precision = 18
      Size = 0
    end
    object medicinenotes: TMemoField
      DisplayLabel = #22791#27880
      FieldName = 'notes'
      BlobType = ftMemo
    end
    object medicineotc_rx: TBooleanField
      DisplayLabel = 'OTC_Rx'
      FieldName = 'otc_rx'
    end
    object medicinebarcode: TStringField
      DisplayLabel = #26465#24418#30721
      FieldName = 'barcode'
    end
    object medicineappv_docu: TStringField
      DisplayLabel = #25209#20934#25991#21495
      DisplayWidth = 40
      FieldName = 'appv_docu'
      Size = 40
    end
    object medicinespecial_treat: TBooleanField
      DisplayLabel = #29305#27530#22788#29702
      FieldName = 'special_treat'
    end
    object medicineqry_code: TStringField
      DisplayLabel = #31616#30721
      FieldName = 'qry_code'
    end
    object medicinesite_code: TStringField
      DisplayLabel = #20179#20301#30721
      FieldName = 'site_code'
    end
    object medicinepick_ord: TIntegerField
      DisplayLabel = #36873#21495
      FieldName = 'pick_ord'
    end
    object medicinechm_name: TStringField
      DisplayLabel = #36890#29992#21517
      FieldName = 'chm_name'
      Size = 50
    end
    object medicinevalid_period: TIntegerField
      DisplayLabel = #26377#25928#26399
      FieldName = 'valid_period'
    end
    object medicineGMP: TBooleanField
      DisplayLabel = #22522#33647
      FieldName = 'GMP'
    end
    object medicinecreat_dt: TDateTimeField
      DisplayLabel = #35774#32622#26085#26399
      FieldName = 'creat_dt'
    end
    object medicinecreat_by: TIntegerField
      FieldName = 'creat_by'
    end
    object medicinemodify_dt: TDateTimeField
      FieldName = 'modify_dt'
    end
    object medicinemodify_by: TIntegerField
      FieldName = 'modify_by'
    end
    object medicinef1: TBooleanField
      FieldName = 'f1'
    end
    object medicinecreater: TStringField
      FieldName = 'creater'
      ReadOnly = True
      Size = 100
    end
    object medicinemodifier: TStringField
      FieldName = 'modifier'
      ReadOnly = True
      Size = 100
    end
  end
  object DSmedicine: TDataSource
    DataSet = medicine
    Left = 65
    Top = 231
  end
  object edistrict: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdedistrict'
    RemoteServer = RemoteServer
    Left = 404
    Top = 231
    object edistrictdist_id: TIntegerField
      FieldName = 'dist_id'
    end
    object edistrictdist_name: TStringField
      FieldName = 'dist_name'
      Size = 100
    end
  end
  object DSedistrict: TDataSource
    DataSet = edistrict
    Left = 450
    Top = 231
  end
  object medhost: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdmedhost'
    RemoteServer = RemoteServer
    AfterInsert = medhostAfterInsert
    BeforePost = medhostBeforePost
    AfterPost = staffAfterPost
    AfterDelete = staffAfterPost
    Left = 212
    Top = 99
    object AutoIncField7: TAutoIncField
      DisplayLabel = #32534#21495
      FieldName = 'sta_id'
      ReadOnly = True
    end
    object IntegerField6: TIntegerField
      FieldName = 'dept_id'
    end
    object IntegerField11: TIntegerField
      FieldName = 'sta_type_id'
    end
    object StringField12: TStringField
      DisplayLabel = #22995#21517
      FieldName = 'zname'
    end
    object StringField30: TStringField
      DisplayLabel = #21161#35760#30721
      FieldName = 'qry_code'
      Size = 100
    end
    object StringField32: TStringField
      DisplayLabel = #32534#30721
      FieldName = 'zcode'
      Size = 10
    end
    object BooleanField3: TBooleanField
      DisplayLabel = #24615#21035
      FieldName = 'sex'
      DisplayValues = #30007';'#22899
    end
    object StringField33: TStringField
      DisplayLabel = #35777#20214#21495#30721
      FieldName = 'personalID'
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = #20986#29983#26085#26399
      FieldName = 'birthdate'
    end
    object StringField34: TStringField
      DisplayLabel = #31821#36143
      FieldName = 'origin'
    end
    object StringField35: TStringField
      DisplayLabel = #23398#21382
      FieldName = 'degree'
    end
    object StringField36: TStringField
      DisplayLabel = #32844#31216
      FieldName = 'title'
    end
    object DateTimeField3: TDateTimeField
      DisplayLabel = #20837#32844#26085#26399
      FieldName = 'hiredate'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'firedate'
    end
    object StringField37: TStringField
      DisplayLabel = #20219#32844
      FieldName = 'zpost'
    end
    object StringField38: TStringField
      DisplayLabel = #32852#31995#30005#35805
      FieldName = 'phone'
      Size = 50
    end
    object StringField41: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'fax'
    end
    object MemoField2: TMemoField
      DisplayLabel = #31616#21382
      FieldName = 'notes'
      BlobType = ftMemo
    end
    object StringField42: TStringField
      DisplayLabel = #23494#30721
      FieldName = 'password'
      Size = 50
    end
    object MemoField5: TMemoField
      DisplayLabel = #26435#38480
      FieldName = 'zright'
      BlobType = ftMemo
    end
    object BooleanField4: TBooleanField
      FieldName = 'operative'
    end
    object BooleanField5: TBooleanField
      DisplayLabel = #20572#29992
      FieldName = 'stop_yn'
    end
    object IntegerField13: TIntegerField
      DisplayLabel = #20572#29992#20154
      FieldName = 'stop_by'
    end
    object StringField43: TStringField
      DisplayLabel = #20572#29992#21407#22240
      FieldName = 'stop_for'
    end
    object DateTimeField5: TDateTimeField
      DisplayLabel = #20572#29992#26085#26399
      FieldName = 'stop_dt'
    end
    object StringField44: TStringField
      DisplayLabel = #20303#22336
      FieldName = 'residence'
      Size = 50
    end
    object BooleanField6: TBooleanField
      DisplayLabel = #39564#25910#20154#21592
      FieldName = 'receipt'
    end
    object BooleanField7: TBooleanField
      DisplayLabel = #38144#21806#20154#21592
      FieldName = 'broker'
    end
    object BooleanField8: TBooleanField
      DisplayLabel = #20179#31649#20154#21592
      FieldName = 'storage'
    end
    object IntegerField14: TIntegerField
      FieldName = 'use_priority'
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'creat_dt'
    end
    object IntegerField15: TIntegerField
      FieldName = 'creat_by'
    end
    object BooleanField9: TBooleanField
      DisplayLabel = #36130#21153#20154#21592
      FieldName = 'account'
    end
    object BooleanField10: TBooleanField
      DisplayLabel = #37319#36141#20154#21592
      FieldName = 'purchase'
    end
    object BooleanField21: TBooleanField
      DisplayLabel = #31649#29702#20154#21592
      FieldName = 'supervisor'
    end
    object BooleanField22: TBooleanField
      DisplayLabel = #21046#21333#20154#21592
      FieldName = 'biller'
    end
    object IntegerField17: TIntegerField
      FieldName = 'mate_id'
    end
    object IntegerField18: TIntegerField
      FieldName = 'depo_bank'
    end
    object StringField46: TStringField
      DisplayLabel = #24080#25143
      FieldName = 'depo_acco'
    end
    object StringField47: TStringField
      DisplayLabel = #24320#25143#38134#34892
      FieldKind = fkLookup
      FieldName = 'Ldepo_bank'
      LookupDataSet = bank
      LookupKeyFields = 'obj_id'
      LookupResultField = 'zdesc'
      KeyFields = 'depo_bank'
      Lookup = True
    end
    object IntegerField19: TIntegerField
      FieldName = 'district'
    end
    object StringField48: TStringField
      DisplayLabel = #25152#23646#22320#21306
      FieldName = 'cdistrict'
      ReadOnly = True
      Size = 100
    end
    object StringField50: TStringField
      DisplayLabel = #24320#25143#38134#34892
      FieldName = 'bank_name'
      Size = 50
    end
    object StringField51: TStringField
      DisplayLabel = #25910#27454#20154
      FieldName = 'receiver'
    end
    object StringField52: TStringField
      DisplayLabel = #30005#23376#20449#31665
      FieldName = 'Email'
    end
    object StringField53: TStringField
      DisplayLabel = #30701#20449#25163#26426
      FieldName = 'mobile_no'
    end
  end
  object DSmedhost: TDataSource
    DataSet = medhost
    Left = 258
    Top = 99
  end
  object Refreshcds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubquery'
    RemoteServer = RemoteServer
    Left = 400
    Top = 9
  end
  object team: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = teamBeforePost
    AfterPost = teamAfterPost
    AfterDelete = teamAfterPost
    Left = 212
    Top = 145
    object teamteam_id: TAutoIncField
      FieldName = 'team_id'
      ReadOnly = True
    end
    object teamteam_name: TStringField
      DisplayLabel = #19994#21153#32452
      FieldName = 'team_name'
    end
  end
  object DSteam: TDataSource
    DataSet = team
    Left = 258
    Top = 145
  end
  object DSmedcatlog: TDataSource
    DataSet = medcatlog
    Left = 258
    Top = 187
  end
  object medcatlog: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    Left = 212
    Top = 187
    object medcatlogmc_id: TAutoIncField
      FieldName = 'mc_id'
      ReadOnly = True
    end
    object medcatlogmc_parent: TIntegerField
      FieldName = 'mc_parent'
    end
    object medcatlogmc_cd: TStringField
      FieldName = 'mc_cd'
      Size = 10
    end
    object medcatlogmc_title: TStringField
      DisplayLabel = #31867#21035
      FieldName = 'mc_title'
      Size = 30
    end
  end
  object DSfunc_type: TDataSource
    DataSet = func_type
    Left = 162
    Top = 277
  end
  object func_type: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    AfterPost = settle_typeAfterPost
    BeforeDelete = fee_typeBeforeDelete
    Left = 114
    Top = 277
    object AutoIncField1: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object StringField1: TStringField
      DisplayLabel = #20986#24211#31867#21035
      FieldName = 'zdesc'
      Size = 30
    end
    object IntegerField1: TIntegerField
      FieldName = 'obj_type_id'
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 443
    Top = 51
  end
  object fee_type: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = fee_typeBeforePost
    AfterPost = fee_typeAfterPost
    BeforeDelete = fee_typeBeforeDelete
    AfterDelete = fee_typeAfterPost
    Left = 212
    Top = 277
    object AutoIncField4: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object StringField2: TStringField
      DisplayLabel = #36153#29992#31867#21035
      FieldName = 'zdesc'
      Size = 30
    end
    object IntegerField2: TIntegerField
      FieldName = 'obj_type_id'
    end
  end
  object DSfee_type: TDataSource
    DataSet = fee_type
    Left = 258
    Top = 277
  end
  object DSpubqry1: TDataSource
    DataSet = pubqry1
    Left = 449
    Top = 277
  end
  object pubqry1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubquery'
    RemoteServer = RemoteServer
    Left = 405
    Top = 277
  end
  object pubqry2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    Left = 308
    Top = 324
  end
  object DSpubqry2: TDataSource
    DataSet = pubqry2
    Left = 352
    Top = 324
  end
  object cust_group: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = cust_groupBeforePost
    AfterPost = fee_typeAfterPost
    AfterDelete = medstockAfterPost
    Left = 404
    Top = 367
    object AutoIncField10: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'obj_type_id'
    end
    object cust_groupobj_code: TStringField
      DisplayLabel = #32534#30721
      FieldName = 'obj_code'
    end
    object StringField19: TStringField
      DisplayLabel = #23458#25143#20215#26684#32452
      FieldName = 'zdesc'
      Size = 30
    end
  end
  object DScust_group: TDataSource
    DataSet = cust_group
    Left = 450
    Top = 367
  end
  object channel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = channelBeforePost
    AfterPost = fee_typeAfterPost
    AfterDelete = fee_typeAfterPost
    Left = 308
    Top = 367
    object AutoIncField11: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object IntegerField9: TIntegerField
      FieldName = 'obj_type_id'
    end
    object IntegerField10: TIntegerField
      FieldName = 'comp_id'
    end
    object StringField20: TStringField
      DisplayLabel = #28192#36947
      DisplayWidth = 50
      FieldName = 'zdesc'
      Size = 50
    end
    object StringField21: TStringField
      DisplayLabel = #32534#30721
      FieldName = 'obj_code'
    end
    object AutoIncField13: TAutoIncField
      FieldName = 'sta_id'
    end
    object StringField22: TStringField
      DisplayLabel = #22797#36131#20154
      FieldName = 'zname'
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'creat_dt'
    end
    object IntegerField20: TIntegerField
      FieldName = 'creat_by'
    end
  end
  object channel_dtl: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = channel_dtlBeforePost
    AfterPost = fee_typeAfterPost
    AfterDelete = fee_typeAfterPost
    Left = 308
    Top = 413
    object AutoIncField14: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object IntegerField21: TIntegerField
      FieldName = 'obj_type_id'
    end
    object IntegerField22: TIntegerField
      FieldName = 'comp_id'
    end
    object StringField23: TStringField
      DisplayLabel = #20107#19994#37096
      DisplayWidth = 50
      FieldName = 'zdesc'
      Size = 50
    end
    object StringField24: TStringField
      DisplayLabel = #32534#30721
      FieldName = 'obj_code'
    end
    object AutoIncField15: TAutoIncField
      FieldName = 'sta_id'
    end
    object StringField25: TStringField
      DisplayLabel = #22797#36131#20154
      FieldName = 'zname'
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'creat_dt'
    end
    object IntegerField23: TIntegerField
      FieldName = 'creat_by'
    end
  end
  object DSchannel_dtl: TDataSource
    DataSet = channel_dtl
    Left = 339
    Top = 413
  end
  object DSchannel: TDataSource
    DataSet = channel
    Left = 340
    Top = 367
  end
  object prod_line: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = prod_lineBeforePost
    AfterPost = fee_typeAfterPost
    AfterDelete = medstockAfterPost
    Left = 404
    Top = 415
    object AutoIncField16: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object IntegerField24: TIntegerField
      FieldName = 'obj_type_id'
    end
    object StringField26: TStringField
      DisplayLabel = #32534#30721
      FieldName = 'obj_code'
    end
    object StringField27: TStringField
      DisplayLabel = #20135#21697#38144#21806#32447
      FieldName = 'zdesc'
      Size = 30
    end
  end
  object DSprod_line: TDataSource
    DataSet = prod_line
    Left = 450
    Top = 415
  end
  object busi_center: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = busi_centerBeforePost
    AfterPost = fee_typeAfterPost
    AfterDelete = medstockAfterPost
    Left = 500
    Top = 367
    object AutoIncField17: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object IntegerField25: TIntegerField
      FieldName = 'obj_type_id'
    end
    object StringField28: TStringField
      DisplayLabel = #32534#30721
      FieldName = 'obj_code'
    end
    object StringField29: TStringField
      DisplayLabel = #33829#38144#20013#24515
      FieldName = 'zdesc'
      Size = 30
    end
  end
  object DSbusi_center: TDataSource
    DataSet = busi_center
    Left = 543
    Top = 367
  end
  object sale_team: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = sale_teamBeforePost
    AfterPost = fee_typeAfterPost
    AfterDelete = medstockAfterPost
    Left = 500
    Top = 415
    object AutoIncField18: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object IntegerField26: TIntegerField
      FieldName = 'obj_type_id'
    end
    object StringField45: TStringField
      DisplayLabel = #32534#30721
      FieldName = 'obj_code'
    end
    object StringField54: TStringField
      DisplayLabel = #38144#21806#32452
      FieldName = 'zdesc'
      Size = 30
    end
  end
  object DSsale_team: TDataSource
    DataSet = sale_team
    Left = 543
    Top = 415
  end
  object nation: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = nationBeforePost
    AfterPost = fee_typeAfterPost
    AfterDelete = medstockAfterPost
    Left = 404
    Top = 99
    object AutoIncField19: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object IntegerField27: TIntegerField
      FieldName = 'obj_type_id'
    end
    object StringField55: TStringField
      DisplayLabel = #32534#30721
      FieldName = 'obj_code'
    end
    object StringField56: TStringField
      DisplayLabel = #22269#23478
      FieldName = 'zdesc'
      Size = 30
    end
  end
  object DSnation: TDataSource
    DataSet = nation
    Left = 450
    Top = 99
  end
  object level1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = level1BeforePost
    AfterPost = fee_typeAfterPost
    AfterDelete = medstockAfterPost
    Left = 500
    Top = 324
    object AutoIncField20: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object IntegerField28: TIntegerField
      FieldName = 'obj_type_id'
    end
    object StringField57: TStringField
      DisplayLabel = #32534#30721
      FieldName = 'obj_code'
    end
    object StringField58: TStringField
      DisplayLabel = #33829#38144#20013#24515
      FieldName = 'zdesc'
      Size = 30
    end
  end
  object DSlevel1: TDataSource
    DataSet = level1
    Left = 543
    Top = 324
  end
  object data_type: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    BeforePost = data_typeBeforePost
    AfterPost = fee_typeAfterPost
    AfterDelete = medstockAfterPost
    Left = 500
    Top = 277
    object AutoIncField21: TAutoIncField
      FieldName = 'obj_id'
      ReadOnly = True
    end
    object IntegerField29: TIntegerField
      FieldName = 'obj_type_id'
    end
    object StringField59: TStringField
      DisplayLabel = #32534#30721
      FieldName = 'obj_code'
    end
    object StringField60: TStringField
      DisplayLabel = #25968#25454#23646#24615
      FieldName = 'zdesc'
      Size = 30
    end
  end
  object DSdata_type: TDataSource
    DataSet = data_type
    Left = 543
    Top = 277
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 448
    Top = 186
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdistrict'
    RemoteServer = RemoteServer
    AfterInsert = districtAfterInsert
    BeforePost = districtBeforePost
    AfterPost = medstockAfterPost
    AfterDelete = medstockAfterPost
    Left = 403
    Top = 186
    object AutoIncField23: TAutoIncField
      FieldName = 'rec_id'
      KeyFields = 'rec_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField36: TIntegerField
      FieldName = 'type_id'
    end
    object IntegerField37: TIntegerField
      FieldName = 'parent'
    end
    object StringField62: TStringField
      DisplayLabel = #22320#21306#21517#31216
      FieldName = 'zdesc'
      Size = 30
    end
    object MemoField7: TMemoField
      FieldName = 'zinfo'
      BlobType = ftMemo
    end
  end
  object district: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdpubqry'
    RemoteServer = RemoteServer
    OnCalcFields = districtCalcFields
    Left = 499
    Top = 185
    object districtparent: TStringField
      FieldName = 'parent'
    end
    object districtcode: TStringField
      DisplayLabel = #22320#21306#32534#30721
      FieldName = 'code'
    end
    object districtname: TStringField
      DisplayLabel = #22320#21306#21517#31216
      FieldName = 'name'
      Size = 100
    end
    object districtname0: TStringField
      FieldName = 'name0'
      Size = 100
    end
    object districtprov_name: TStringField
      FieldName = 'prov_name'
      Size = 50
    end
    object districtcity_name: TStringField
      FieldName = 'city_name'
      Size = 50
    end
    object districtcounty_name: TStringField
      FieldName = 'county_name'
      Size = 50
    end
    object districtCdistrict: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cdistrict'
      Size = 100
      Calculated = True
    end
  end
  object DSdistrict: TDataSource
    DataSet = district
    Left = 544
    Top = 185
  end
end
