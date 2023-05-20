.class public abstract Lcom/xiaomi/push/gq;
.super Lcom/xiaomi/push/gj;


# instance fields
.field protected a:Ljava/lang/Exception;

.field protected a:Ljava/net/Socket;

.field protected b:Lcom/xiaomi/push/service/XMPushService;

.field private c:I

.field c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field protected volatile e:J

.field protected volatile f:J

.field protected volatile g:J

.field private h:J


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/gk;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/gj;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/gk;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/xiaomi/push/gq;->a:Ljava/lang/Exception;

    iput-object p2, p0, Lcom/xiaomi/push/gq;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/gq;->e:J

    iput-wide v0, p0, Lcom/xiaomi/push/gq;->f:J

    iput-wide v0, p0, Lcom/xiaomi/push/gq;->g:J

    iput-wide v0, p0, Lcom/xiaomi/push/gq;->h:J

    iput-object p1, p0, Lcom/xiaomi/push/gq;->b:Lcom/xiaomi/push/service/XMPushService;

    return-void
.end method

.method private a(Lcom/xiaomi/push/gk;)V
    .registers 3

    invoke-virtual {p1}, Lcom/xiaomi/push/gk;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/gk;->a()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/push/gq;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 34

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    const-string v3, "|"

    const-string v4, "\n"

    const-string v5, " err:"

    const-string v6, " port:"

    const-string v7, "SMACK: Could not connect to "

    const-string v8, "SMACK: Could not connect to:"

    const/4 v9, 0x0

    iput-object v9, v1, Lcom/xiaomi/push/gq;->a:Ljava/lang/Exception;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get bucket for host : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Lcom/xiaomi/push/gq;->a(Ljava/lang/String;)Lcom/xiaomi/push/cq;

    move-result-object v15

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Integer;)V

    const/4 v10, 0x1

    if-eqz v15, :cond_45

    invoke-virtual {v15, v10}, Lcom/xiaomi/push/cq;->a(Z)Ljava/util/ArrayList;

    move-result-object v9

    :cond_45
    invoke-static {}, Lcom/xiaomi/push/cu;->a()Lcom/xiaomi/push/cu;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/xiaomi/push/cu;->d(Ljava/lang/String;)Lcom/xiaomi/push/cq;

    move-result-object v11

    if-eqz v11, :cond_6e

    invoke-virtual {v11, v10}, Lcom/xiaomi/push/cq;->a(Z)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_57
    :goto_57
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_57

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    :cond_6e
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_77

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_77
    const-wide/16 v13, 0x0

    iput-wide v13, v1, Lcom/xiaomi/push/gq;->g:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    iget-object v0, v1, Lcom/xiaomi/push/gq;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/bi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const-string v0, ""

    move-object/from16 p1, v0

    const/4 v0, 0x0

    :goto_93
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_30b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    iget v13, v1, Lcom/xiaomi/push/gq;->a:I

    const/4 v14, 0x1

    add-int/2addr v13, v14

    iput v13, v1, Lcom/xiaomi/push/gq;->a:I

    add-int/lit8 v23, v0, 0x1

    :try_start_ad
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "begin to connect to "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/gq;->a()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/push/gq;->a:Ljava/net/Socket;

    invoke-static {v10, v2}, Lcom/xiaomi/push/cs;->a(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v13, v1, Lcom/xiaomi/push/gq;->a:Ljava/net/Socket;

    const/16 v14, 0x1f40

    invoke-virtual {v13, v0, v14}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const-string v0, "tcp connected"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/push/gq;->a:Ljava/net/Socket;
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_d9} :catch_1fb
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_d9} :catch_163
    .catchall {:try_start_ad .. :try_end_d9} :catchall_158

    const/4 v13, 0x1

    :try_start_da
    invoke-virtual {v0, v13}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iput-object v10, v1, Lcom/xiaomi/push/gq;->d:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/gq;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e6} :catch_14e
    .catch Ljava/lang/Throwable; {:try_start_da .. :try_end_e6} :catch_143
    .catchall {:try_start_da .. :try_end_e6} :catchall_158

    sub-long v13, v24, v21

    :try_start_e8
    iput-wide v13, v1, Lcom/xiaomi/push/gq;->a:J

    iput-object v12, v1, Lcom/xiaomi/push/gq;->b:Ljava/lang/String;

    if-eqz v15, :cond_105

    iget-wide v13, v1, Lcom/xiaomi/push/gq;->a:J
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_f0} :catch_1fb
    .catch Ljava/lang/Throwable; {:try_start_e8 .. :try_end_f0} :catch_163
    .catchall {:try_start_e8 .. :try_end_f0} :catchall_158

    const-wide/16 v24, 0x0

    move-object/from16 v26, v9

    move-object v9, v11

    move-object v11, v15

    move-object/from16 v27, v12

    move-object v12, v10

    const/16 v20, 0x1

    const-wide/16 v28, 0x0

    move-object/from16 v30, v15

    move-wide/from16 v15, v24

    :try_start_101
    invoke-virtual/range {v11 .. v16}, Lcom/xiaomi/push/cq;->b(Ljava/lang/String;JJ)V

    goto :goto_110

    :cond_105
    move-object/from16 v26, v9

    move-object v9, v11

    move-object/from16 v27, v12

    move-object/from16 v30, v15

    const/16 v20, 0x1

    const-wide/16 v28, 0x0

    :goto_110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/xiaomi/push/gq;->g:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connected to "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " in "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/xiaomi/push/gq;->a:J

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_134} :catch_13c
    .catch Ljava/lang/Throwable; {:try_start_101 .. :try_end_134} :catch_13a
    .catchall {:try_start_101 .. :try_end_134} :catchall_1f4

    move-object/from16 v0, p1

    move/from16 v2, v23

    goto/16 :goto_314

    :catch_13a
    move-exception v0

    goto :goto_16f

    :catch_13c
    move-exception v0

    move-object/from16 v11, p1

    move-object/from16 v15, v27

    goto/16 :goto_208

    :catch_143
    move-exception v0

    move-object/from16 v26, v9

    move-object v9, v11

    move-object/from16 v27, v12

    move/from16 v20, v13

    move-object/from16 v30, v15

    goto :goto_16d

    :catch_14e
    move-exception v0

    move-object/from16 v26, v9

    move-object v9, v11

    move/from16 v20, v13

    move-object/from16 v30, v15

    goto/16 :goto_203

    :catchall_158
    move-exception v0

    move-object v9, v11

    move-object/from16 v30, v15

    const-wide/16 v28, 0x0

    move-object/from16 v11, p1

    move-object v15, v12

    goto/16 :goto_292

    :catch_163
    move-exception v0

    move-object/from16 v26, v9

    move-object v9, v11

    move-object/from16 v27, v12

    move-object/from16 v30, v15

    const/16 v20, 0x1

    :goto_16d
    const-wide/16 v28, 0x0

    :goto_16f
    :try_start_16f
    new-instance v11, Ljava/lang/Exception;

    const-string v12, "abnormal exception"

    invoke-direct {v11, v12, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v11, v1, Lcom/xiaomi/push/gq;->a:Ljava/lang/Exception;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_17b
    .catchall {:try_start_16f .. :try_end_17b} :catchall_1f4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/xiaomi/push/gq;->a:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    move-object v0, v10

    goto :goto_1c8

    :cond_1b4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, p1

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c8
    iget-object v11, v1, Lcom/xiaomi/push/gq;->a:Ljava/lang/Exception;

    invoke-static {v10, v11}, Lcom/xiaomi/push/fw;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz v30, :cond_1e1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v13, v11, v21

    const-wide/16 v15, 0x0

    iget-object v12, v1, Lcom/xiaomi/push/gq;->a:Ljava/lang/Exception;

    move-object/from16 v11, v30

    move-object/from16 v17, v12

    move-object v12, v10

    invoke-virtual/range {v11 .. v17}, Lcom/xiaomi/push/cq;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    :cond_1e1
    iget-object v10, v1, Lcom/xiaomi/push/gq;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v10}, Lcom/xiaomi/push/bi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v15, v27

    invoke-static {v15, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1f1

    goto/16 :goto_281

    :cond_1f1
    move-object v10, v15

    goto/16 :goto_283

    :catchall_1f4
    move-exception v0

    move-object/from16 v11, p1

    move-object/from16 v15, v27

    goto/16 :goto_292

    :catch_1fb
    move-exception v0

    move-object/from16 v26, v9

    move-object v9, v11

    move-object/from16 v30, v15

    const/16 v20, 0x1

    :goto_203
    const-wide/16 v28, 0x0

    move-object/from16 v11, p1

    move-object v15, v12

    :goto_208
    :try_start_208
    iput-object v0, v1, Lcom/xiaomi/push/gq;->a:Ljava/lang/Exception;
    :try_end_20a
    .catchall {:try_start_208 .. :try_end_20a} :catchall_291

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/xiaomi/push/gq;->a:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_243

    move-object v0, v10

    goto :goto_255

    :cond_243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_255
    iget-object v11, v1, Lcom/xiaomi/push/gq;->a:Ljava/lang/Exception;

    invoke-static {v10, v11}, Lcom/xiaomi/push/fw;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz v30, :cond_274

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v13, v11, v21

    const-wide/16 v16, 0x0

    iget-object v12, v1, Lcom/xiaomi/push/gq;->a:Ljava/lang/Exception;

    move-object/from16 v11, v30

    move-object/from16 v21, v12

    move-object v12, v10

    move-object v10, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v21

    invoke-virtual/range {v11 .. v17}, Lcom/xiaomi/push/cq;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    goto :goto_275

    :cond_274
    move-object v10, v15

    :goto_275
    iget-object v11, v1, Lcom/xiaomi/push/gq;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v11}, Lcom/xiaomi/push/bi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_283

    :goto_281
    goto/16 :goto_307

    :cond_283
    :goto_283
    move-object/from16 p1, v0

    move-object v11, v9

    move-object v12, v10

    move/from16 v0, v23

    move-object/from16 v9, v26

    move-wide/from16 v13, v28

    move-object/from16 v15, v30

    goto/16 :goto_93

    :catchall_291
    move-exception v0

    :goto_292
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/xiaomi/push/gq;->a:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2cb

    move-object v2, v10

    goto :goto_2dd

    :cond_2cb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2dd
    iget-object v3, v1, Lcom/xiaomi/push/gq;->a:Ljava/lang/Exception;

    invoke-static {v10, v3}, Lcom/xiaomi/push/fw;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz v30, :cond_2f9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v13, v3, v21

    const-wide/16 v3, 0x0

    iget-object v5, v1, Lcom/xiaomi/push/gq;->a:Ljava/lang/Exception;

    move-object/from16 v11, v30

    move-object v12, v10

    move-object v6, v15

    move-wide v15, v3

    move-object/from16 v17, v5

    invoke-virtual/range {v11 .. v17}, Lcom/xiaomi/push/cq;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    goto :goto_2fa

    :cond_2f9
    move-object v6, v15

    :goto_2fa
    iget-object v3, v1, Lcom/xiaomi/push/gq;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v3}, Lcom/xiaomi/push/bi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30a

    move-object v0, v2

    :goto_307
    move/from16 v2, v23

    goto :goto_312

    :cond_30a
    throw v0

    :cond_30b
    move-object v9, v11

    move-wide/from16 v28, v13

    move-object/from16 v11, p1

    move v2, v0

    move-object v0, v11

    :goto_312
    const/16 v20, 0x0

    :goto_314
    invoke-static {}, Lcom/xiaomi/push/cu;->a()Lcom/xiaomi/push/cu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/push/cu;->c()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v3, v3, v18

    long-to-int v3, v3

    if-nez v20, :cond_35c

    iget-wide v4, v1, Lcom/xiaomi/push/gq;->h:J

    cmp-long v2, v4, v28

    if-eqz v2, :cond_338

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/xiaomi/push/gq;->h:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x75300

    cmp-long v2, v4, v6

    if-lez v2, :cond_352

    :cond_338
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/xiaomi/push/gq;->h:J

    iget-object v2, v1, Lcom/xiaomi/push/gq;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/push/bi;->c(Landroid/content/Context;)Z

    move-result v2

    sget-object v4, Lcom/xiaomi/push/fm;->j:Lcom/xiaomi/push/fm;

    invoke-virtual {v4}, Lcom/xiaomi/push/fm;->a()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4, v3, v0, v2}, Lcom/xiaomi/push/fw;->a(IIILjava/lang/String;I)V

    :cond_352
    new-instance v0, Lcom/xiaomi/push/gu;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/push/gu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35c
    const/4 v5, 0x0

    sget-object v4, Lcom/xiaomi/push/fm;->i:Lcom/xiaomi/push/fm;

    invoke-virtual {v4}, Lcom/xiaomi/push/fm;->a()I

    move-result v4

    invoke-static {v5, v4, v3, v0, v2}, Lcom/xiaomi/push/fw;->a(IIILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/xiaomi/push/cq;
    .registers 4

    invoke-static {}, Lcom/xiaomi/push/cu;->a()Lcom/xiaomi/push/cu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/push/cu;->a(Ljava/lang/String;Z)Lcom/xiaomi/push/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/cq;->b()Z

    move-result v1

    if-nez v1, :cond_17

    new-instance v1, Lcom/xiaomi/push/gt;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/push/gt;-><init>(Lcom/xiaomi/push/gq;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/push/hm;->a(Ljava/lang/Runnable;)V

    :cond_17
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/gq;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/net/Socket;
    .registers 2

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method protected declared-synchronized a()V
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized a(ILjava/lang/Exception;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/push/gq;->b()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1e

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    invoke-virtual {p0, v1, p1, p2}, Lcom/xiaomi/push/gq;->a(IILjava/lang/Exception;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/xiaomi/push/gq;->a:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_1e

    :try_start_11
    iget-object p1, p0, Lcom/xiaomi/push/gq;->a:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1e

    :catch_16
    const-wide/16 p1, 0x0

    :try_start_18
    iput-wide p1, p0, Lcom/xiaomi/push/gq;->e:J

    iput-wide p1, p0, Lcom/xiaomi/push/gq;->f:J
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a(Ljava/lang/Exception;)V
    .registers 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/gq;->g:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_3f

    iget-object v0, p0, Lcom/xiaomi/push/gq;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/bi;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/xiaomi/push/gq;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/push/gq;->c:I

    iget v0, p0, Lcom/xiaomi/push/gq;->c:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_41

    invoke-virtual {p0}, Lcom/xiaomi/push/gq;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max short conn time reached, sink down current host:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/xiaomi/push/gq;->a(Ljava/lang/String;JLjava/lang/Exception;)V

    :cond_3f
    iput v1, p0, Lcom/xiaomi/push/gq;->c:I

    :cond_41
    return-void
.end method

.method protected a(Ljava/lang/String;JLjava/lang/Exception;)V
    .registers 15

    invoke-static {}, Lcom/xiaomi/push/gk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/cu;->a()Lcom/xiaomi/push/cu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/push/cu;->a(Ljava/lang/String;Z)Lcom/xiaomi/push/cq;

    move-result-object v3

    if-eqz v3, :cond_1e

    const-wide/16 v7, 0x0

    move-object v4, p1

    move-wide v5, p2

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/xiaomi/push/cq;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    invoke-static {}, Lcom/xiaomi/push/cu;->a()Lcom/xiaomi/push/cu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/push/cu;->c()V

    :cond_1e
    return-void
.end method

.method protected abstract a(Z)V
.end method

.method public a([Lcom/xiaomi/push/fy;)V
    .registers 3

    new-instance p1, Lcom/xiaomi/push/gu;

    const-string v0, "Don\'t support send Blob"

    invoke-direct {p1, v0}, Lcom/xiaomi/push/gu;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(ILjava/lang/Exception;)V
    .registers 7

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/push/gq;->a(ILjava/lang/Exception;)V

    if-nez p2, :cond_9

    const/16 v0, 0x12

    if-ne p1, v0, :cond_14

    :cond_9
    iget-wide v0, p0, Lcom/xiaomi/push/gq;->g:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_14

    invoke-virtual {p0, p2}, Lcom/xiaomi/push/gq;->a(Ljava/lang/Exception;)V

    :cond_14
    return-void
.end method

.method public b(Z)V
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/gq;->a(Z)V

    iget-object v0, p0, Lcom/xiaomi/push/gq;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/et;->a(Landroid/content/Context;)Lcom/xiaomi/push/et;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/et;->b()V

    if-nez p1, :cond_26

    iget-object p1, p0, Lcom/xiaomi/push/gq;->b:Lcom/xiaomi/push/service/XMPushService;

    new-instance v7, Lcom/xiaomi/push/gr;

    const/16 v2, 0xd

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/push/gr;-><init>(Lcom/xiaomi/push/gq;IJJ)V

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, v7, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;J)V

    :cond_26
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/gq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(ILjava/lang/Exception;)V
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/push/gq;->b:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/gs;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/xiaomi/push/gs;-><init>(Lcom/xiaomi/push/gq;IILjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    return-void
.end method

.method public declared-synchronized f()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/push/gq;->c()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/xiaomi/push/gq;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1a

    :cond_e
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/xiaomi/push/gq;->a(IILjava/lang/Exception;)V

    iget-object v0, p0, Lcom/xiaomi/push/gq;->a:Lcom/xiaomi/push/gk;

    invoke-direct {p0, v0}, Lcom/xiaomi/push/gq;->a(Lcom/xiaomi/push/gk;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_18} :catch_23
    .catchall {:try_start_1 .. :try_end_18} :catchall_21

    monitor-exit p0

    return-void

    :cond_1a
    :goto_1a
    :try_start_1a
    const-string v0, "WARNING: current xmpp has connected"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_23
    .catchall {:try_start_1a .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    goto :goto_2a

    :catch_23
    move-exception v0

    :try_start_24
    new-instance v1, Lcom/xiaomi/push/gu;

    invoke-direct {v1, v0}, Lcom/xiaomi/push/gu;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_21

    :goto_2a
    monitor-exit p0

    throw v0
.end method

.method public g()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/gq;->e:J

    return-void
.end method

.method public h()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/gq;->f:J

    return-void
.end method
