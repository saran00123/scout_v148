.class public abstract Lcom/taobao/accs/base/AccsAbstractDataListener;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/taobao/accs/base/AccsDataListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AccsAbstractDataListener"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getExtHeader(Ljava/util/Map;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 186
    :try_start_5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_30

    .line 187
    :try_start_a
    invoke-static {}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->values()[Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    move-result-object v0

    array-length v3, v0

    move v4, v1

    :goto_10
    if-ge v4, v3, :cond_3b

    aget-object v5, v0, v4

    .line 188
    invoke-virtual {v5}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 189
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2b

    .line 190
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2b} :catch_2e

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :catch_2e
    move-exception p0

    goto :goto_32

    :catch_30
    move-exception p0

    move-object v2, v0

    .line 194
    :goto_32
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "AccsAbstractDataListener"

    const-string v3, "getExtHeader"

    invoke-static {v1, v3, p0, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3b
    return-object v2
.end method

.method private static getExtraInfo(Landroid/content/Intent;)Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    .registers 8

    .line 200
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    invoke-direct {v0}, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    const-string v2, "ext_header"

    .line 202
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 203
    invoke-static {v2}, Lcom/taobao/accs/base/AccsAbstractDataListener;->getExtHeader(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "packageName"

    .line 204
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "host"

    .line 205
    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "conn_type"

    .line 206
    invoke-virtual {p0, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->connType:I

    .line 207
    iput-object v3, v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->extHeader:Ljava/util/Map;

    .line 208
    iput-object v2, v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->oriExtHeader:Ljava/util/Map;

    .line 209
    iput-object v4, v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    .line 210
    iput-object v5, v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_2e} :catch_2f

    goto :goto_39

    :catch_2f
    move-exception p0

    .line 212
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AccsAbstractDataListener"

    const-string v3, "getExtraInfo"

    invoke-static {v2, v3, p0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_39
    return-object v0
.end method

.method public static onReceiveData(Landroid/content/Context;Landroid/content/Intent;Lcom/taobao/accs/base/AccsDataListener;)I
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "serviceId="

    const-string v6, "onReceiveData"

    const-string v4, "serviceId"

    const-string v7, "1"

    const-string v8, "send_fail"

    const-string v5, "command"

    const-string v9, "dataId"

    const-string v10, "accs"

    const-string v12, "AccsAbstractDataListener"

    if-eqz v2, :cond_2a4

    if-nez v0, :cond_1e

    goto/16 :goto_2a4

    :cond_1e
    if-eqz v1, :cond_2a2

    const-string v14, ""

    const/4 v15, -0x1

    .line 80
    :try_start_23
    invoke-virtual {v1, v5, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 81
    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/common/Constants;->getErrorCode(Landroid/content/Intent;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v16

    const-string v11, "userInfo"

    .line 82
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 83
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 84
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 85
    sget-object v19, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v19 .. v19}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v19
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3f} :catch_27e
    .catchall {:try_start_23 .. :try_end_3f} :catchall_27c

    move-object/from16 v20, v7

    if-eqz v19, :cond_73

    const/16 v7, 0x8

    .line 86
    :try_start_45
    new-array v7, v7, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v9, v7, v18

    const/16 v22, 0x1

    aput-object v13, v7, v22

    const/16 v17, 0x2

    aput-object v4, v7, v17

    const/4 v4, 0x3

    aput-object v14, v7, v4

    const/4 v4, 0x4

    aput-object v5, v7, v4

    .line 87
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v7, v5

    const-string v4, "className"

    const/4 v5, 0x6

    aput-object v4, v7, v5

    const/4 v4, 0x7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    .line 86
    invoke-static {v12, v6, v7}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_73} :catch_25c
    .catchall {:try_start_45 .. :try_end_73} :catchall_27c

    :cond_73
    const-string v4, "onReceiveData command not handled "

    if-lez v15, :cond_261

    .line 90
    :try_start_77
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v22

    const v23, 0x101d1

    const-string v24, "MsgToBuss5"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "commandId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " dataId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v5, 0xdd

    .line 95
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 90
    invoke-virtual/range {v22 .. v27}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "to_buss"

    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "3commandId="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_ca} :catch_25c
    .catchall {:try_start_77 .. :try_end_ca} :catchall_27c

    move-object v13, v6

    const-wide/16 v6, 0x0

    :try_start_cd
    invoke-static {v10, v5, v3, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    const/4 v3, 0x5

    if-eq v15, v3, :cond_24b

    const/4 v3, 0x6

    if-eq v15, v3, :cond_23c

    const/16 v3, 0x64

    if-eq v15, v3, :cond_203

    const/16 v3, 0x65

    if-eq v15, v3, :cond_166

    const/16 v0, 0x67

    if-eq v15, v0, :cond_121

    const/16 v0, 0x68

    if-eq v15, v0, :cond_fd

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v12, v0, v2}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2a2

    :cond_fd
    const-string v0, "anti_brush_ret"

    const/4 v3, 0x0

    .line 145
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveData anti brush result:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v12, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 147
    invoke-interface {v2, v0, v1}, Lcom/taobao/accs/base/AccsDataListener;->onAntiBrush(ZLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto/16 :goto_2a2

    :cond_121
    const-string v0, "connect_avail"

    const/4 v3, 0x0

    .line 150
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "host"

    .line 151
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "type_inapp"

    .line 152
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "is_center_host"

    .line 153
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 154
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a2

    if-eqz v0, :cond_14c

    .line 156
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    invoke-direct {v0, v4, v5, v1}, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;-><init>(Ljava/lang/String;ZZ)V

    invoke-interface {v2, v0}, Lcom/taobao/accs/base/AccsDataListener;->onConnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V

    goto/16 :goto_2a2

    .line 158
    :cond_14c
    new-instance v0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v25

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/sdk/android/error/ErrorCode;->getMsg()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v21, v0

    move-object/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v1

    invoke-direct/range {v21 .. v26}, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;-><init>(Ljava/lang/String;ZZILjava/lang/String;)V

    invoke-interface {v2, v0}, Lcom/taobao/accs/base/AccsDataListener;->onDisconnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V

    goto/16 :goto_2a2

    :cond_166
    const-string v3, "data"

    .line 106
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    const-string v3, "bizAck"

    const/4 v5, 0x0

    .line 107
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v4, :cond_1f2

    .line 110
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    sget-object v9, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v9}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v9

    if-eqz v9, :cond_1a0

    .line 112
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onReceiveData COMMAND_RECEIVE_DATA onData dataId:"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " serviceId:"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x0

    new-array v6, v15, [Ljava/lang/Object;

    invoke-static {v12, v9, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :cond_1a0
    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/base/AccsAbstractDataListener;->getExtraInfo(Landroid/content/Intent;)Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    move-result-object v6

    if-eqz v3, :cond_1c2

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceiveData try to send biz ack dataId "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v12, v3, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v3, v6, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->oriExtHeader:Ljava/util/Map;

    invoke-static {v0, v1, v5, v3}, Lcom/taobao/accs/base/AccsAbstractDataListener;->sendBusinessAck(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1c2
    const-string v0, "monitor"

    .line 120
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    if-eqz v0, :cond_1cf

    .line 122
    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onToAccsTime()V

    :cond_1cf
    const-string v0, "to_buss_success"

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1commandId=101serviceId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v10, v0, v1, v2, v3}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    move-object/from16 v0, p2

    move-object v1, v14

    move-object v2, v11

    move-object v3, v5

    move-object v5, v6

    .line 125
    invoke-interface/range {v0 .. v5}, Lcom/taobao/accs/base/AccsDataListener;->onData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto/16 :goto_2a2

    :cond_1f2
    const-string v0, "onReceiveData COMMAND_RECEIVE_DATA msg null"

    const/4 v1, 0x0

    .line 128
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v12, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "COMMAND_RECEIVE_DATA msg null"
    :try_end_1fc
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_1fc} :catch_25a
    .catchall {:try_start_cd .. :try_end_1fc} :catchall_27c

    move-object/from16 v6, v20

    .line 129
    :try_start_1fe
    invoke-static {v10, v8, v14, v6, v0}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2a2

    :cond_203
    move-object/from16 v6, v20

    .line 134
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "res"

    const-string v3, "send_type"

    .line 136
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22d

    const-string v0, "data"

    .line 138
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 139
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/base/AccsAbstractDataListener;->getExtraInfo(Landroid/content/Intent;)Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-interface/range {v0 .. v5}, Lcom/taobao/accs/base/AccsDataListener;->onResponse(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto/16 :goto_2a2

    .line 141
    :cond_22d
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/base/AccsAbstractDataListener;->getExtraInfo(Landroid/content/Intent;)Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    move-result-object v1

    move-object/from16 v3, p2

    invoke-interface {v3, v14, v2, v0, v1}, Lcom/taobao/accs/base/AccsDataListener;->onSendData(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto/16 :goto_2a2

    :cond_23c
    move-object v3, v2

    move-object/from16 v6, v20

    .line 102
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/base/AccsAbstractDataListener;->getExtraInfo(Landroid/content/Intent;)Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    move-result-object v1

    invoke-interface {v3, v14, v0, v1}, Lcom/taobao/accs/base/AccsDataListener;->onUnbind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto :goto_2a2

    :cond_24b
    move-object v3, v2

    move-object/from16 v6, v20

    .line 99
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/base/AccsAbstractDataListener;->getExtraInfo(Landroid/content/Intent;)Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    move-result-object v1

    invoke-interface {v3, v14, v0, v1}, Lcom/taobao/accs/base/AccsDataListener;->onBind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto :goto_2a2

    :catch_25a
    move-exception v0

    goto :goto_25e

    :catch_25c
    move-exception v0

    move-object v13, v6

    :goto_25e
    move-object/from16 v6, v20

    goto :goto_281

    :cond_261
    move-object v13, v6

    move-object/from16 v6, v20

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v12, v0, v2}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_279
    .catch Ljava/lang/Exception; {:try_start_1fe .. :try_end_279} :catch_27a
    .catchall {:try_start_1fe .. :try_end_279} :catchall_27c

    goto :goto_2a2

    :catch_27a
    move-exception v0

    goto :goto_281

    :catchall_27c
    move-exception v0

    goto :goto_2a1

    :catch_27e
    move-exception v0

    move-object v13, v6

    move-object v6, v7

    .line 170
    :goto_281
    :try_start_281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v8, v14, v6, v1}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 171
    new-array v1, v1, [Ljava/lang/Object;

    move-object v2, v13

    invoke-static {v12, v2, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2a0
    .catchall {:try_start_281 .. :try_end_2a0} :catchall_27c

    goto :goto_2a2

    .line 174
    :goto_2a1
    throw v0

    :cond_2a2
    :goto_2a2
    const/4 v1, 0x2

    return v1

    :cond_2a4
    :goto_2a4
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 69
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "onReceiveData listener or context null"

    invoke-static {v12, v2, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private static sendBusinessAck(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "bizAckFail"

    const-string v2, "sendBusinessAck"

    const-string v3, "AccsAbstractDataListener"

    const-string v4, "accs"

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 219
    :try_start_e
    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "dataId"

    aput-object v9, v8, v7

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-static {v3, v2, v8}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_6a

    const-string v8, "host"

    .line 221
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v8, "source"

    .line 222
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v8, "target"

    .line 223
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v8, "appKey"

    .line 224
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "configTag"

    .line 225
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "flags"

    .line 226
    invoke-virtual {v0, v10, v7}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v14

    move-object/from16 v0, p0

    .line 227
    invoke-static {v0, v8, v9}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v10

    if-eqz v10, :cond_57

    move-object/from16 v13, p2

    move-object/from16 v16, p3

    .line 229
    invoke-interface/range {v10 .. v16}, Lcom/taobao/accs/IACCSManager;->sendBusinessAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;Ljava/util/Map;)V

    const-string v0, "bizAckSucc"

    const-string v8, ""

    .line 230
    invoke-static {v4, v0, v8, v5, v6}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_6a

    :cond_57
    const-string v0, "no acsmgr"

    .line 232
    invoke-static {v4, v1, v0, v5, v6}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_5c} :catch_5d

    goto :goto_6a

    :catch_5d
    move-exception v0

    .line 236
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v2, v0, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 237
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0, v5, v6}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :cond_6a
    :goto_6a
    return-void
.end method


# virtual methods
.method public onAntiBrush(ZLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .registers 3

    return-void
.end method

.method public onConnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V
    .registers 2

    return-void
.end method

.method public onDisconnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V
    .registers 2

    return-void
.end method
