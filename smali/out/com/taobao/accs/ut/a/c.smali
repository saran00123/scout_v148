.class public Lcom/taobao/accs/ut/a/c;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:Z

.field public j:Z

.field private k:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/taobao/accs/ut/a/c;->k:J

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/taobao/accs/ut/a/c;->c:Z

    .line 21
    iput v0, p0, Lcom/taobao/accs/ut/a/c;->d:I

    .line 22
    iput v0, p0, Lcom/taobao/accs/ut/a/c;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 19

    move-object/from16 v1, p0

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 32
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    const/4 v4, 0x0

    const-string v5, "MonitorStatistic"

    if-eqz v0, :cond_37

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "commitUT interval:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/taobao/accs/ut/a/c;->k:J

    sub-long v6, v2, v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " interval1:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/taobao/accs/ut/a/c;->h:J

    sub-long v6, v2, v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :cond_37
    iget-wide v6, v1, Lcom/taobao/accs/ut/a/c;->k:J

    sub-long v6, v2, v6

    const-wide/32 v8, 0x124f80

    cmp-long v0, v6, v8

    if-lez v0, :cond_128

    iget-wide v6, v1, Lcom/taobao/accs/ut/a/c;->h:J

    sub-long v6, v2, v6

    const-wide/32 v8, 0xea60

    cmp-long v0, v6, v8

    if-lez v0, :cond_128

    .line 42
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const v14, 0x101d1

    const/4 v6, 0x0

    .line 44
    :try_start_56
    iget v0, v1, Lcom/taobao/accs/ut/a/c;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5c} :catch_104

    .line 45
    :try_start_5c
    iget v0, v1, Lcom/taobao/accs/ut/a/c;->e:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_62} :catch_101

    const/16 v0, 0xdd

    .line 46
    :try_start_64
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_68} :catch_fa

    :try_start_68
    const-string v0, "connStatus"

    .line 48
    iget v6, v1, Lcom/taobao/accs/ut/a/c;->a:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "connType"

    .line 49
    iget v6, v1, Lcom/taobao/accs/ut/a/c;->b:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tcpConnected"

    .line 50
    iget-boolean v6, v1, Lcom/taobao/accs/ut/a/c;->c:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "proxy"

    .line 51
    iget-object v6, v1, Lcom/taobao/accs/ut/a/c;->f:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "startServiceTime"

    .line 52
    iget-wide v6, v1, Lcom/taobao/accs/ut/a/c;->h:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "commitTime"

    .line 53
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "networkAvailable"

    .line 54
    iget-boolean v6, v1, Lcom/taobao/accs/ut/a/c;->i:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "threadIsalive"

    .line 55
    iget-boolean v6, v1, Lcom/taobao/accs/ut/a/c;->j:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "url"

    .line 56
    iget-object v6, v1, Lcom/taobao/accs/ut/a/c;->g:Ljava/lang/String;

    invoke-interface {v13, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_cb} :catch_f4

    if-eqz v0, :cond_da

    .line 58
    :try_start_cd
    invoke-static {v14, v15, v12, v11, v13}, Lcom/taobao/accs/utl/UTMini;->getCommitInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_cd .. :try_end_d6} :catch_d7

    goto :goto_da

    :catch_d7
    move-exception v0

    move-object v6, v12

    goto :goto_107

    .line 61
    :cond_da
    :goto_da
    :try_start_da
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v6

    const v7, 0x101d1

    const-string v8, "MONITOR"
    :try_end_e3
    .catch Ljava/lang/Throwable; {:try_start_da .. :try_end_e3} :catch_f4

    move-object v9, v15

    move-object v10, v12

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object v12, v13

    :try_start_ea
    invoke-virtual/range {v6 .. v12}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)V

    .line 62
    iput-wide v2, v1, Lcom/taobao/accs/ut/a/c;->k:J
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_ea .. :try_end_ef} :catch_f0

    goto :goto_128

    :catch_f0
    move-exception v0

    move-object/from16 v11, v16

    goto :goto_fe

    :catch_f4
    move-exception v0

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    goto :goto_fe

    :catch_fa
    move-exception v0

    move-object/from16 v17, v12

    move-object v11, v6

    :goto_fe
    move-object/from16 v6, v17

    goto :goto_107

    :catch_101
    move-exception v0

    move-object v11, v6

    goto :goto_107

    :catch_104
    move-exception v0

    move-object v11, v6

    move-object v15, v11

    .line 64
    :goto_107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14, v15, v6, v11, v13}, Lcom/taobao/accs/utl/UTMini;->getCommitInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_128
    :goto_128
    return-void
.end method
