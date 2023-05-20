.class public Lcom/taobao/accs/data/g;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static volatile a:Lcom/taobao/accs/data/g;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/taobao/accs/data/g;
    .registers 2

    .line 48
    sget-object v0, Lcom/taobao/accs/data/g;->a:Lcom/taobao/accs/data/g;

    if-nez v0, :cond_17

    .line 49
    const-class v0, Lcom/taobao/accs/data/g;

    monitor-enter v0

    .line 50
    :try_start_7
    sget-object v1, Lcom/taobao/accs/data/g;->a:Lcom/taobao/accs/data/g;

    if-nez v1, :cond_12

    .line 51
    new-instance v1, Lcom/taobao/accs/data/g;

    invoke-direct {v1}, Lcom/taobao/accs/data/g;-><init>()V

    sput-object v1, Lcom/taobao/accs/data/g;->a:Lcom/taobao/accs/data/g;

    .line 53
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 55
    :cond_17
    :goto_17
    sget-object v0, Lcom/taobao/accs/data/g;->a:Lcom/taobao/accs/data/g;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const/4 v0, 0x0

    .line 59
    invoke-static {p0, v0, p1}, Lcom/taobao/accs/data/g;->a(Landroid/content/Context;Lcom/taobao/accs/net/b;Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/taobao/accs/net/b;Landroid/content/Intent;)V
    .registers 6

    .line 76
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/data/h;

    invoke-direct {v1, p0, p1, p2}, Lcom/taobao/accs/data/h;-><init>(Landroid/content/Context;Lcom/taobao/accs/net/b;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_6d

    :catch_d
    move-exception p0

    if-eqz p1, :cond_3e

    if-eqz p2, :cond_3e

    const-string v0, "configTag"

    .line 87
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dataId"

    .line 88
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "serviceId"

    .line 91
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v1, p2, v0, v2}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    :cond_3e
    const/4 p1, 0x0

    .line 94
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "distribMessage"

    const-string v0, "MsgDistribute"

    invoke-static {v0, p2, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object p1

    const v0, 0x101d1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0xdd

    .line 98
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "MsgToBuss8"

    .line 96
    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6d
    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/sdk/android/error/ErrorCode;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/taobao/accs/IAppReceiver;",
            ">;",
            "Lcom/alibaba/sdk/android/error/ErrorCode;",
            ")V"
        }
    .end annotation

    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    .line 265
    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v5}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v5

    const-string v6, "errorCode"

    const-string v7, "command"

    const/4 v9, 0x4

    const/4 v10, 0x3

    const-string v11, "handleControlMsg"

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-string v15, "MsgDistribute"

    if-eqz v5, :cond_79

    const/16 v5, 0xa

    .line 266
    new-array v5, v5, [Ljava/lang/Object;

    const-string v16, "configTag"

    aput-object v16, v5, v14

    aput-object p2, v5, v13

    const-string v16, "dataId"

    aput-object v16, v5, v12

    aput-object v3, v5, v10

    const-string v16, "serviceId"

    aput-object v16, v5, v9

    const/16 v16, 0x5

    aput-object v2, v5, v16

    const/16 v16, 0x6

    aput-object v7, v5, v16

    const/16 v16, 0x7

    .line 267
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v5, v16

    const/16 v16, 0x8

    aput-object v6, v5, v16

    const/16 v16, 0x9

    aput-object v4, v5, v16

    .line 266
    invoke-static {v15, v11, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p7, :cond_79

    .line 269
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_54
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_79

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/taobao/accs/IAppReceiver;

    .line 270
    new-array v8, v12, [Ljava/lang/Object;

    const-string v18, "appReceiver"

    aput-object v18, v8, v14

    if-nez v16, :cond_6b

    const/16 v16, 0x0

    goto :goto_73

    :cond_6b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    :goto_73
    aput-object v16, v8, v13

    invoke-static {v15, v11, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_54

    .line 274
    :cond_79
    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v5

    sget-object v8, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v8

    const/16 v10, 0x65

    const/16 v12, 0x67

    if-eq v5, v8, :cond_a1

    if-eq v0, v12, :cond_a1

    if-eq v0, v10, :cond_a1

    .line 277
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v7, v5, v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v13

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/4 v6, 0x3

    aput-object v4, v5, v6

    invoke-static {v15, v11, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a3

    :cond_a1
    const/4 v6, 0x3

    const/4 v7, 0x2

    :goto_a3
    if-eqz p7, :cond_1d1

    const-string v5, "code"

    if-eq v0, v13, :cond_18b

    if-eq v0, v7, :cond_167

    if-eq v0, v6, :cond_143

    if-eq v0, v9, :cond_11f

    const/16 v6, 0x64

    if-eq v0, v6, :cond_ee

    if-eq v0, v10, :cond_b7

    goto/16 :goto_1d1

    .line 312
    :cond_b7
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1d1

    .line 313
    new-array v6, v14, [Ljava/lang/Object;

    const-string v7, "handleControlMsg serviceId isEmpty"

    invoke-static {v15, v7, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "data"

    move-object/from16 v7, p1

    .line 314
    invoke-virtual {v7, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_1d1

    const/4 v7, 0x2

    .line 316
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v14

    aput-object v4, v7, v13

    const-string v5, "onData"

    invoke-static {v15, v5, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_de
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/taobao/accs/IAppReceiver;

    .line 318
    invoke-interface {v7, v1, v3, v6}, Lcom/taobao/accs/IAppReceiver;->onData(Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_de

    .line 324
    :cond_ee
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d1

    .line 325
    new-array v1, v14, [Ljava/lang/Object;

    const-string v6, "handleControlMsg COMMAND_SEND_DATA serviceId isEmpty"

    invoke-static {v15, v6, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 326
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v14

    aput-object v4, v1, v13

    const-string v5, "onSendData"

    invoke-static {v15, v5, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/accs/IAppReceiver;

    .line 328
    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v6

    invoke-interface {v5, v3, v6}, Lcom/taobao/accs/IAppReceiver;->onSendData(Ljava/lang/String;I)V

    goto :goto_10b

    :cond_11f
    const/4 v1, 0x2

    .line 306
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v14

    aput-object v4, v1, v13

    const-string v5, "onUnbindUser"

    invoke-static {v15, v5, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/accs/IAppReceiver;

    .line 308
    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/taobao/accs/IAppReceiver;->onUnbindUser(I)V

    goto :goto_12f

    :cond_143
    const/4 v6, 0x2

    .line 300
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v14

    aput-object v4, v6, v13

    const-string v5, "onBindUser"

    invoke-static {v15, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_153
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/accs/IAppReceiver;

    .line 302
    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v7

    invoke-interface {v6, v1, v7}, Lcom/taobao/accs/IAppReceiver;->onBindUser(Ljava/lang/String;I)V

    goto :goto_153

    :cond_167
    move v1, v7

    .line 294
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v14

    aput-object v4, v1, v13

    const-string v5, "onUnbindApp"

    invoke-static {v15, v5, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_177
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/accs/IAppReceiver;

    .line 296
    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/taobao/accs/IAppReceiver;->onUnbindApp(I)V

    goto :goto_177

    :cond_18b
    move v1, v7

    .line 282
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v14

    aput-object v4, v1, v13

    const-string v5, "onBindApp"

    invoke-static {v15, v5, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/accs/IAppReceiver;

    .line 284
    instance-of v6, v5, Lcom/taobao/accs/d;

    if-eqz v6, :cond_1ba

    .line 285
    check-cast v5, Lcom/taobao/accs/d;

    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v6

    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/sdk/android/error/ErrorCode;->getMsg()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/taobao/accs/d;->onBindApp(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_19b

    :cond_1ba
    const/4 v8, 0x0

    .line 286
    instance-of v6, v5, Lcom/taobao/accs/IAppReceiverV1;

    if-eqz v6, :cond_1c9

    .line 287
    check-cast v5, Lcom/taobao/accs/IAppReceiverV1;

    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v6

    invoke-virtual {v5, v6, v8}, Lcom/taobao/accs/IAppReceiverV1;->onBindApp(ILjava/lang/String;)V

    goto :goto_19b

    .line 289
    :cond_1c9
    invoke-virtual/range {p8 .. p8}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/taobao/accs/IAppReceiver;->onBindApp(I)V

    goto :goto_19b

    :cond_1d1
    :goto_1d1
    if-eqz p7, :cond_1d9

    .line 338
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_23a

    :cond_1d9
    const/16 v1, 0x68

    if-eq v0, v1, :cond_23a

    if-eq v0, v12, :cond_23a

    const-string v1, "accs"

    const-string v5, "send_fail"

    const-string v6, "1"

    const-string v7, "appReceiver null return"

    .line 341
    invoke-static {v1, v5, v2, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v1

    const v5, 0x101d1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "commandId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "serviceId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " errorCode="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " dataId="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xdd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "MsgToBuss7"

    move-object/from16 p1, v1

    move/from16 p2, v5

    move-object/from16 p3, v4

    move-object/from16 p4, v0

    move-object/from16 p5, v2

    move-object/from16 p6, v3

    invoke-virtual/range {p1 .. p6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23a
    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/data/g;Landroid/content/Context;Lcom/taobao/accs/net/b;Landroid/content/Intent;)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/accs/data/g;->b(Landroid/content/Context;Lcom/taobao/accs/net/b;Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x0

    const-string v1, "routingAck"

    .line 511
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "routingMsg"

    .line 512
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    return v1
.end method

.method private b(Landroid/content/Context;Lcom/taobao/accs/net/b;Landroid/content/Intent;)V
    .registers 31

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "accs"

    const-string v14, "dataId"

    .line 104
    invoke-virtual {v12, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v9, "serviceId"

    .line 105
    invoke-virtual {v12, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 107
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const-string v3, "MsgDistribute"

    const/4 v7, 0x0

    if-eqz v2, :cond_42

    const/4 v2, 0x6

    .line 108
    new-array v2, v2, [Ljava/lang/Object;

    const-string v18, "action"

    aput-object v18, v2, v7

    aput-object v1, v2, v4

    aput-object v14, v2, v6

    aput-object v15, v2, v5

    const/16 v17, 0x4

    aput-object v9, v2, v17

    const/16 v16, 0x5

    aput-object v8, v2, v16

    const-string v6, "distribute ready"

    invoke-static {v3, v6, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_70

    if-eqz v11, :cond_56

    .line 112
    invoke-virtual {v11, v6}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v8, v0, v5}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v0

    invoke-virtual {v11, v0, v4}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    .line 114
    :cond_56
    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "action null"

    invoke-static {v3, v1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const/16 v2, 0xdd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MsgToBuss9"

    const v4, 0x101d1

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_70
    :try_start_70
    const-string v2, "com.taobao.accs.intent.action.RECEIVE"

    .line 120
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_76} :catch_355

    if-eqz v2, :cond_30f

    :try_start_78
    const-string v1, "command"

    const/4 v2, -0x1

    .line 121
    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7f} :catch_300

    :try_start_7f
    const-string v1, "userInfo"

    .line 122
    invoke-virtual {v12, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 123
    invoke-static/range {p3 .. p3}, Lcom/taobao/accs/common/Constants;->getErrorCode(Landroid/content/Intent;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v1
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_89} :catch_2f0

    :try_start_89
    const-string v6, "appKey"

    .line 124
    invoke-virtual {v12, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "configTag"

    .line 125
    invoke-virtual {v12, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v19
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_99} :catch_2e3

    if-nez v19, :cond_b4

    .line 127
    :try_start_9b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_a2} :catch_a3

    goto :goto_b4

    :catch_a3
    move-exception v0

    move v1, v2

    move-object v2, v8

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    const/4 v4, 0x4

    const/4 v14, 0x0

    const/16 v25, 0x2

    move-object v13, v3

    move v3, v7

    goto/16 :goto_364

    .line 130
    :cond_b4
    :goto_b4
    :try_start_b4
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_b8} :catch_2e3

    const-string v7, "distribute start"

    if-eqz v4, :cond_10f

    move-object/from16 v19, v1

    const/4 v4, 0x4

    .line 131
    :try_start_bf
    new-array v1, v4, [Ljava/lang/Object;
    :try_end_c1
    .catch Ljava/lang/Throwable; {:try_start_bf .. :try_end_c1} :catch_100

    :try_start_c1
    const-string v4, "appkey"
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_c3} :catch_f5

    const/16 v20, 0x0

    :try_start_c5
    aput-object v4, v1, v20
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_c5 .. :try_end_c7} :catch_e5

    const/4 v4, 0x1

    :try_start_c8
    aput-object v6, v1, v4

    const-string v4, "config"
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_c8 .. :try_end_cc} :catch_f5

    const/4 v6, 0x2

    :try_start_cd
    aput-object v4, v1, v6
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_cd .. :try_end_cf} :catch_d7

    const/4 v4, 0x3

    :try_start_d0
    aput-object v5, v1, v4

    invoke-static {v3, v7, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d5
    .catch Ljava/lang/Throwable; {:try_start_d0 .. :try_end_d5} :catch_f5

    const/4 v4, 0x4

    goto :goto_12a

    :catch_d7
    move-exception v0

    move v1, v2

    move/from16 v25, v6

    move-object v2, v8

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    const/4 v4, 0x4

    :goto_e3
    const/4 v14, 0x0

    goto :goto_10c

    :catch_e5
    move-exception v0

    move v1, v2

    move-object v2, v8

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    const/4 v4, 0x4

    const/4 v14, 0x0

    const/16 v25, 0x2

    move-object v13, v3

    goto/16 :goto_2cf

    :catch_f5
    move-exception v0

    move v1, v2

    move-object v2, v8

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    const/4 v4, 0x4

    goto :goto_109

    :catch_100
    move-exception v0

    move v1, v2

    move-object v2, v8

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    :goto_109
    const/4 v14, 0x0

    const/16 v25, 0x2

    :goto_10c
    move-object v13, v3

    goto/16 :goto_2e0

    :cond_10f
    move-object/from16 v19, v1

    const/4 v4, 0x4

    .line 133
    :try_start_112
    new-array v1, v4, [Ljava/lang/Object;

    const-string v17, "appkey"
    :try_end_116
    .catch Ljava/lang/Throwable; {:try_start_112 .. :try_end_116} :catch_2d3

    const/16 v20, 0x0

    :try_start_118
    aput-object v17, v1, v20
    :try_end_11a
    .catch Ljava/lang/Throwable; {:try_start_118 .. :try_end_11a} :catch_2c2

    const/16 v17, 0x1

    :try_start_11c
    aput-object v6, v1, v17

    const-string v6, "config"
    :try_end_120
    .catch Ljava/lang/Throwable; {:try_start_11c .. :try_end_120} :catch_2d3

    const/16 v17, 0x2

    :try_start_122
    aput-object v6, v1, v17
    :try_end_124
    .catch Ljava/lang/Throwable; {:try_start_122 .. :try_end_124} :catch_2b6

    const/4 v6, 0x3

    :try_start_125
    aput-object v5, v1, v6

    invoke-static {v3, v7, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :goto_12a
    invoke-direct {v10, v12}, Lcom/taobao/accs/data/g;->a(Landroid/content/Intent;)Z

    move-result v1
    :try_end_12e
    .catch Ljava/lang/Throwable; {:try_start_125 .. :try_end_12e} :catch_2d3

    if-eqz v1, :cond_149

    :try_start_130
    const-string v0, "routingMsgAck, should not happen!"
    :try_end_132
    .catch Ljava/lang/Throwable; {:try_start_130 .. :try_end_132} :catch_100

    const/4 v1, 0x0

    .line 137
    :try_start_133
    new-array v5, v1, [Ljava/lang/Object;
    :try_end_135
    .catch Ljava/lang/Throwable; {:try_start_133 .. :try_end_135} :catch_139

    :try_start_135
    invoke-static {v3, v0, v5}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_138
    .catch Ljava/lang/Throwable; {:try_start_135 .. :try_end_138} :catch_100

    return-void

    :catch_139
    move-exception v0

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    const/4 v14, 0x0

    const/16 v25, 0x2

    move-object v13, v3

    :goto_144
    move v3, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_364

    :cond_149
    if-gez v2, :cond_1a4

    if-eqz v11, :cond_169

    const/4 v1, 0x0

    .line 143
    :try_start_14e
    invoke-virtual {v11, v1}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_152
    .catch Ljava/lang/Throwable; {:try_start_14e .. :try_end_152} :catch_15c

    const/4 v1, 0x3

    :try_start_153
    invoke-static {v15, v8, v0, v1}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v1}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    goto :goto_169

    :catch_15c
    move-exception v0

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    const/16 v25, 0x2

    move-object v14, v1

    move v1, v2

    goto/16 :goto_2de

    .line 145
    :cond_169
    :goto_169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "command error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_17a
    .catch Ljava/lang/Throwable; {:try_start_153 .. :try_end_17a} :catch_100

    const/4 v6, 0x2

    :try_start_17b
    new-array v1, v6, [Ljava/lang/Object;
    :try_end_17d
    .catch Ljava/lang/Throwable; {:try_start_17b .. :try_end_17d} :catch_197

    const/4 v5, 0x0

    :try_start_17e
    aput-object v9, v1, v5
    :try_end_180
    .catch Ljava/lang/Throwable; {:try_start_17e .. :try_end_180} :catch_187

    const/4 v5, 0x1

    :try_start_181
    aput-object v8, v1, v5

    invoke-static {v3, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_186
    .catch Ljava/lang/Throwable; {:try_start_181 .. :try_end_186} :catch_197

    return-void

    :catch_187
    move-exception v0

    move v1, v2

    move/from16 v25, v6

    move-object v2, v8

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    const/4 v14, 0x0

    move-object v13, v3

    move v3, v5

    goto/16 :goto_364

    :catch_197
    move-exception v0

    move v1, v2

    move/from16 v25, v6

    move-object v2, v8

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    goto/16 :goto_e3

    :cond_1a4
    const/4 v6, 0x2

    .line 149
    :try_start_1a5
    invoke-virtual {v10, v2, v8}, Lcom/taobao/accs/data/g;->a(ILjava/lang/String;)Z

    move-result v1
    :try_end_1a9
    .catch Ljava/lang/Throwable; {:try_start_1a5 .. :try_end_1a9} :catch_2ab

    if-eqz v1, :cond_1e7

    if-eqz v11, :cond_1cb

    const/4 v7, 0x0

    .line 151
    :try_start_1ae
    invoke-virtual {v11, v7}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v15, v8, v0, v1}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v11, v0, v5}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    goto :goto_1ce

    :catch_1bc
    move-exception v0

    move v1, v2

    move/from16 v25, v6

    move-object v2, v8

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object v13, v3

    move-object v14, v7

    goto/16 :goto_2e0

    :cond_1cb
    const/4 v1, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x0

    :goto_1ce
    const-string v0, "check space failed"
    :try_end_1d0
    .catch Ljava/lang/Throwable; {:try_start_1ae .. :try_end_1d0} :catch_1bc

    const/4 v12, 0x0

    .line 153
    :try_start_1d1
    new-array v1, v12, [Ljava/lang/Object;
    :try_end_1d3
    .catch Ljava/lang/Throwable; {:try_start_1d1 .. :try_end_1d3} :catch_1d7

    :try_start_1d3
    invoke-static {v3, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1d6
    .catch Ljava/lang/Throwable; {:try_start_1d3 .. :try_end_1d6} :catch_1bc

    return-void

    :catch_1d7
    move-exception v0

    move v1, v2

    move/from16 v25, v6

    move-object v2, v8

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object v13, v3

    move-object v14, v7

    move v3, v12

    goto/16 :goto_364

    :cond_1e7
    const/4 v7, 0x0

    const/16 v17, 0x1

    .line 157
    :try_start_1ea
    invoke-direct {v10, v0, v12}, Lcom/taobao/accs/data/g;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1
    :try_end_1ee
    .catch Ljava/lang/Throwable; {:try_start_1ea .. :try_end_1ee} :catch_29e

    if-eqz v1, :cond_206

    :try_start_1f0
    const-string v0, "routingMsg, should not happen!"
    :try_end_1f2
    .catch Ljava/lang/Throwable; {:try_start_1f0 .. :try_end_1f2} :catch_1bc

    const/4 v1, 0x0

    .line 158
    :try_start_1f3
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v5}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1f8
    .catch Ljava/lang/Throwable; {:try_start_1f3 .. :try_end_1f8} :catch_1f9

    return-void

    :catch_1f9
    move-exception v0

    move/from16 v25, v6

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object v13, v3

    move-object v14, v7

    goto/16 :goto_144

    :cond_206
    const/4 v1, 0x0

    .line 163
    :try_start_207
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18
    :try_end_20b
    .catch Ljava/lang/Throwable; {:try_start_207 .. :try_end_20b} :catch_29e

    if-nez v18, :cond_21e

    .line 164
    :try_start_20d
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Lcom/taobao/accs/client/a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/taobao/accs/client/a;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_215
    .catch Ljava/lang/Throwable; {:try_start_20d .. :try_end_215} :catch_1bc

    move-object/from16 v18, v19

    const/16 v20, 0x3

    const/16 v21, 0x0

    move-object/from16 v19, v1

    goto :goto_226

    :cond_21e
    move/from16 v21, v1

    move-object/from16 v18, v19

    const/16 v20, 0x3

    move-object/from16 v19, v7

    :goto_226
    move-object/from16 v1, p0

    move/from16 v22, v2

    move-object/from16 v2, p1

    move-object/from16 v23, v13

    move-object v13, v3

    move-object v3, v8

    move-object/from16 v24, v14

    move/from16 v14, v17

    move/from16 v17, v4

    move-object v4, v15

    move-object/from16 v20, v5

    move-object/from16 v5, p3

    move/from16 v25, v6

    move-object/from16 v6, v19

    .line 167
    :try_start_23f
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/accs/data/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/util/ArrayList;)Z

    move-result v1
    :try_end_243
    .catch Ljava/lang/Throwable; {:try_start_23f .. :try_end_243} :catch_293

    if-eqz v1, :cond_246

    return-void

    :cond_246
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v20

    move/from16 v4, v22

    move-object/from16 v5, v16

    move-object v6, v8

    move-object v14, v7

    move-object v7, v15

    move-object/from16 v21, v8

    move-object/from16 v8, v19

    move-object/from16 v26, v9

    move-object/from16 v9, v18

    .line 171
    :try_start_25b
    invoke-direct/range {v1 .. v9}, Lcom/taobao/accs/data/g;->a(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 172
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_262
    .catch Ljava/lang/Throwable; {:try_start_25b .. :try_end_262} :catch_28c

    if-nez v1, :cond_281

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v19

    move-object/from16 v5, p3

    move-object/from16 v6, v21

    move-object v7, v15

    move/from16 v8, v22

    move-object/from16 v9, v18

    .line 173
    :try_start_275
    invoke-virtual/range {v1 .. v9}, Lcom/taobao/accs/data/g;->a(Landroid/content/Context;Lcom/taobao/accs/net/b;Ljava/util/ArrayList;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/sdk/android/error/ErrorCode;)V
    :try_end_278
    .catch Ljava/lang/Throwable; {:try_start_275 .. :try_end_278} :catch_27a

    goto/16 :goto_3a3

    :catch_27a
    move-exception v0

    move-object/from16 v2, v21

    move/from16 v1, v22

    goto/16 :goto_30d

    :cond_281
    move-object/from16 v2, v18

    move/from16 v1, v22

    .line 175
    :try_start_285
    invoke-virtual {v10, v0, v12, v1, v2}, Lcom/taobao/accs/data/g;->a(Landroid/content/Context;Landroid/content/Intent;ILcom/alibaba/sdk/android/error/ErrorCode;)V
    :try_end_288
    .catch Ljava/lang/Throwable; {:try_start_285 .. :try_end_288} :catch_28a

    goto/16 :goto_3a3

    :catch_28a
    move-exception v0

    goto :goto_28f

    :catch_28c
    move-exception v0

    move/from16 v1, v22

    :goto_28f
    move-object/from16 v2, v21

    goto/16 :goto_30d

    :catch_293
    move-exception v0

    move-object v14, v7

    move-object/from16 v26, v9

    move/from16 v1, v22

    move-object v2, v8

    move/from16 v3, v21

    goto/16 :goto_363

    :catch_29e
    move-exception v0

    move v1, v2

    move/from16 v25, v6

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object v13, v3

    move-object v14, v7

    goto :goto_2df

    :catch_2ab
    move-exception v0

    move v1, v2

    move/from16 v25, v6

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    goto :goto_2c0

    :catch_2b6
    move-exception v0

    move v1, v2

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move/from16 v25, v17

    :goto_2c0
    const/4 v14, 0x0

    goto :goto_2de

    :catch_2c2
    move-exception v0

    move v1, v2

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    const/4 v14, 0x0

    const/16 v25, 0x2

    move-object v13, v3

    move-object v2, v8

    :goto_2cf
    move/from16 v3, v20

    goto/16 :goto_364

    :catch_2d3
    move-exception v0

    move v1, v2

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    const/4 v14, 0x0

    const/16 v25, 0x2

    :goto_2de
    move-object v13, v3

    :goto_2df
    move-object v2, v8

    :goto_2e0
    const/4 v3, 0x0

    goto/16 :goto_364

    :catch_2e3
    move-exception v0

    move v1, v2

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    const/4 v14, 0x0

    const/16 v25, 0x2

    move-object v13, v3

    goto :goto_2fc

    :catch_2f0
    move-exception v0

    move v1, v2

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    const/16 v25, 0x2

    move-object v13, v3

    move-object v14, v6

    :goto_2fc
    move v3, v7

    move-object v2, v8

    goto/16 :goto_363

    :catch_300
    move-exception v0

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    const/16 v25, 0x2

    move-object v13, v3

    move-object v14, v6

    move-object v2, v8

    :goto_30c
    const/4 v1, 0x0

    :goto_30d
    const/4 v3, 0x0

    goto :goto_363

    :cond_30f
    move-object/from16 v21, v8

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    const/16 v25, 0x2

    move-object v13, v3

    move-object v14, v6

    if-eqz v11, :cond_333

    .line 179
    :try_start_31d
    invoke-virtual {v11, v14}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_321
    .catch Ljava/lang/Throwable; {:try_start_31d .. :try_end_321} :catch_32f

    move-object/from16 v2, v21

    const/4 v3, 0x5

    :try_start_324
    invoke-static {v15, v2, v0, v3}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v11, v0, v3}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_32c
    .catch Ljava/lang/Throwable; {:try_start_324 .. :try_end_32c} :catch_32d

    goto :goto_335

    :catch_32d
    move-exception v0

    goto :goto_30c

    :catch_32f
    move-exception v0

    move-object/from16 v2, v21

    goto :goto_30c

    :cond_333
    move-object/from16 v2, v21

    :goto_335
    :try_start_335
    const-string v0, "distribMessage action error"
    :try_end_337
    .catch Ljava/lang/Throwable; {:try_start_335 .. :try_end_337} :catch_352

    const/4 v3, 0x0

    .line 181
    :try_start_338
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v13, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const-string v4, "MsgToBuss10"

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x101d1

    invoke-virtual {v0, v6, v4, v1, v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_34f
    .catch Ljava/lang/Throwable; {:try_start_338 .. :try_end_34f} :catch_350

    goto :goto_3a3

    :catch_350
    move-exception v0

    goto :goto_362

    :catch_352
    move-exception v0

    const/4 v3, 0x0

    goto :goto_362

    :catch_355
    move-exception v0

    move-object v2, v8

    move-object/from16 v26, v9

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    const/16 v25, 0x2

    move-object v13, v3

    move-object v14, v6

    move v3, v7

    :goto_362
    move v1, v3

    :goto_363
    const/4 v4, 0x4

    .line 185
    :goto_364
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v24, v4, v3

    const/4 v3, 0x1

    aput-object v15, v4, v3

    aput-object v26, v4, v25

    const/4 v5, 0x3

    aput-object v2, v4, v5

    const-string v6, "distribMessage"

    invoke-static {v13, v6, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    if-eqz v11, :cond_382

    .line 187
    invoke-virtual {v11, v14}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v2, v4, v5}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v4

    invoke-virtual {v11, v4, v3}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    .line 189
    :cond_382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "distribute error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "send_fail"

    const-string v3, "1"

    move-object/from16 v4, v23

    invoke-static {v4, v1, v2, v3, v0}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3a3
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3

    .line 533
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/content/Intent;ILcom/alibaba/sdk/android/error/ErrorCode;)V
    .registers 16

    const/4 v0, 0x2

    .line 399
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "command"

    aput-object v3, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "MsgDistribute"

    const-string v5, "handBroadCastMsg"

    invoke-static {v3, v5, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 408
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Lcom/taobao/accs/client/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/accs/client/a;->b()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3f

    .line 410
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_29
    :goto_29
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/accs/IAppReceiver;

    .line 411
    invoke-interface {v6}, Lcom/taobao/accs/IAppReceiver;->getAllServices()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_29

    .line 413
    invoke-interface {v1, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_29

    :cond_3f
    const/16 v5, 0x67

    if-ne p3, v5, :cond_100

    .line 419
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4b
    :goto_4b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_90

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "accs"

    .line 421
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6f

    const-string v6, "windvane"

    .line 422
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6f

    const-string v6, "motu-remote"

    .line 423
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 424
    :cond_6f
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 426
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 427
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/taobao/accs/client/GlobalClientInfo;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 429
    :cond_83
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4b

    .line 430
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    invoke-static {p1, p2, v4}, Lcom/taobao/accs/dispatch/IntentDispatch;->dispatchIntent(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_4b

    :cond_90
    const-string p3, "connect_avail"

    .line 438
    invoke-virtual {p2, p3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    const-string v1, "host"

    .line 439
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "type_inapp"

    .line 440
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string v1, "is_center_host"

    .line 441
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const/4 p2, 0x0

    .line 443
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d4

    if-eqz p3, :cond_b7

    .line 445
    new-instance p2, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    invoke-direct {p2, v6, v7, v8}, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;-><init>(Ljava/lang/String;ZZ)V

    goto :goto_d2

    .line 447
    :cond_b7
    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "error"

    aput-object v0, p2, v2

    aput-object p4, p2, v4

    const-string v0, "InAppConnection Not Available "

    invoke-static {v3, v0, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    new-instance p2, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v9

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/error/ErrorCode;->getMsg()Ljava/lang/String;

    move-result-object v10

    move-object v5, p2

    invoke-direct/range {v5 .. v10}, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;-><init>(Ljava/lang/String;ZZILjava/lang/String;)V

    .line 450
    :goto_d2
    iput-boolean p3, p2, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->connected:Z

    :cond_d4
    if-eqz p2, :cond_f7

    .line 453
    new-array p3, v4, [Ljava/lang/Object;

    aput-object p2, p3, v2

    const-string p4, "handBroadCastMsg ACTION_CONNECT_INFO"

    invoke-static {v3, p4, p3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    new-instance p3, Landroid/content/Intent;

    const-string p4, "com.taobao.accs.intent.action.CONNECTINFO"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "connect_info"

    .line 456
    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 457
    invoke-virtual {p1, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_175

    .line 459
    :cond_f7
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "handBroadCastMsg connect info null, host empty"

    invoke-static {v3, p2, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_175

    :cond_100
    const/16 p4, 0x68

    if-ne p3, p4, :cond_139

    .line 463
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_10c
    :goto_10c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_175

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 464
    invoke-interface {v1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 466
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 467
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/taobao/accs/client/GlobalClientInfo;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    :cond_12c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_10c

    .line 470
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    invoke-static {p1, p2, v4}, Lcom/taobao/accs/dispatch/IntentDispatch;->dispatchIntent(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_10c

    :cond_139
    const-string p1, "handBroadCastMsg not handled command "

    if-eq p3, v4, :cond_161

    if-eq p3, v0, :cond_161

    const/4 p2, 0x3

    if-eq p3, p2, :cond_161

    const/4 p2, 0x4

    if-eq p3, p2, :cond_161

    const/4 p2, 0x5

    if-eq p3, p2, :cond_161

    const/4 p2, 0x6

    if-ne p3, p2, :cond_14c

    goto :goto_161

    .line 484
    :cond_14c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_175

    .line 482
    :cond_161
    :goto_161
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_175
    :goto_175
    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/taobao/accs/net/b;Ljava/util/ArrayList;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/sdk/android/error/ErrorCode;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/taobao/accs/net/b;",
            "Ljava/util/ArrayList<",
            "Lcom/taobao/accs/IAppReceiver;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/sdk/android/error/ErrorCode;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x6

    .line 360
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "dataId"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p6, v0, v2

    const/4 v3, 0x2

    const-string v4, "serviceId"

    aput-object v4, v0, v3

    const/4 v4, 0x3

    aput-object p5, v0, v4

    const/4 v4, 0x4

    const-string v5, "command"

    aput-object v5, v0, v4

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v0, v5

    const-string v4, "MsgDistribute"

    const-string v5, "handleBusinessMsg start"

    invoke-static {v4, v5, v0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_45

    .line 363
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object v5, v0

    :cond_2e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/accs/IAppReceiver;

    .line 364
    invoke-interface {v5, p5}, Lcom/taobao/accs/IAppReceiver;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 365
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2e

    goto :goto_46

    :cond_45
    move-object v5, v0

    .line 370
    :cond_46
    :goto_46
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_54

    .line 371
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/taobao/accs/client/GlobalClientInfo;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 373
    :cond_54
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v6, "accs"

    if-nez p3, :cond_78

    .line 374
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_71

    .line 375
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "className"

    aput-object p3, p2, v1

    aput-object v5, p2, v2

    const-string p3, "handleBusinessMsg to start service"

    invoke-static {v4, p3, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    :cond_71
    invoke-virtual {p4, p1, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    invoke-static {p1, p4, v2}, Lcom/taobao/accs/dispatch/IntentDispatch;->dispatchIntent(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_b2

    .line 380
    :cond_78
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/taobao/accs/client/GlobalClientInfo;->getListener(Ljava/lang/String;)Lcom/taobao/accs/base/AccsAbstractDataListener;

    move-result-object p3

    if-eqz p3, :cond_95

    .line 382
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_91

    .line 383
    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "handleBusinessMsg getListener not null"

    invoke-static {v4, v0, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    :cond_91
    invoke-static {p1, p4, p3}, Lcom/taobao/accs/base/AccsAbstractDataListener;->onReceiveData(Landroid/content/Context;Landroid/content/Intent;Lcom/taobao/accs/base/AccsDataListener;)I

    goto :goto_b2

    :cond_95
    if-eqz p2, :cond_a2

    .line 388
    invoke-virtual {p2, v0}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p5, p1, v1}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    .line 390
    :cond_a2
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "handleBusinessMsg getListener also null"

    invoke-static {v4, p2, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "send_fail"

    const-string p2, "1"

    const-string p3, "service is null"

    .line 391
    invoke-static {v6, p1, p5, p2, p3}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :goto_b2
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "commandId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "serviceId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " errorCode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " dataId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 p1, 0xdd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "MsgToBuss"

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 395
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "2commandId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 p2, 0x0

    const-string p4, "to_buss"

    invoke-static {v6, p4, p1, p2, p3}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method protected a(ILjava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-eq p1, v2, :cond_56

    const-string p1, "agooSend"

    .line 197
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    .line 198
    invoke-static {}, Lcom/taobao/accs/utl/UtilityImpl;->c()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_56

    const-wide/32 v4, 0x500000

    cmp-long p1, v2, v4

    if-gtz p1, :cond_56

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "space low "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "accs"

    const-string v5, "send_fail"

    const-string v6, "1"

    invoke-static {v4, v5, p2, v6, p1}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 201
    new-array p1, p1, [Ljava/lang/Object;

    const-string v4, "size"

    aput-object v4, p1, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v1, 0x2

    const-string v2, "serviceId"

    aput-object v2, p1, v1

    const/4 v1, 0x3

    aput-object p2, p1, v1

    const-string p2, "MsgDistribute"

    const-string v1, "user space low, don\'t distribute"

    invoke-static {p2, v1, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_57

    :cond_56
    move v0, v1

    :goto_57
    return v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/util/ArrayList;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Lcom/taobao/accs/IAppReceiver;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "MsgDistribute"

    const/4 v1, 0x0

    .line 217
    :try_start_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    return v1

    :cond_a
    const/4 v2, 0x0

    if-eqz p5, :cond_27

    .line 222
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_11
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/IAppReceiver;

    .line 223
    invoke-interface {v2, p2}, Lcom/taobao/accs/IAppReceiver;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 229
    :cond_27
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_35

    .line 230
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object p5

    invoke-virtual {p5, p2}, Lcom/taobao/accs/client/GlobalClientInfo;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    :cond_35
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const/4 v2, 0x1

    if-eqz p5, :cond_7a

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result p5

    if-nez p5, :cond_7a

    const-string p5, "accs"

    .line 233
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_48} :catch_72

    const-string p5, "dataId"

    const/4 v3, 0x2

    const-string v4, "start MsgDistributeService"

    if-eqz p2, :cond_59

    .line 234
    :try_start_4f
    new-array p2, v3, [Ljava/lang/Object;

    aput-object p5, p2, v1

    aput-object p3, p2, v2

    invoke-static {v0, v4, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_62

    .line 236
    :cond_59
    new-array p2, v3, [Ljava/lang/Object;

    aput-object p5, p2, v1

    aput-object p3, p2, v2

    invoke-static {v0, v4, p2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    :goto_62
    invoke-virtual {p4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/taobao/accs/data/g;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-static {p1, p4, v1}, Lcom/taobao/accs/dispatch/IntentDispatch;->dispatchIntent(Landroid/content/Context;Landroid/content/Intent;Z)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_70} :catch_72

    move v1, v2

    goto :goto_7a

    :catch_72
    move-exception p1

    .line 243
    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "handleMsgInChannelProcess"

    invoke-static {v0, p3, p1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_7a
    :goto_7a
    return v1
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    const-string v0, "com.taobao.accs.data.MsgDistributeService"

    return-object v0
.end method
