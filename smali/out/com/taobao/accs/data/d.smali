.class public Lcom/taobao/accs/data/d;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field public b:I

.field protected c:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

.field public d:Lcom/taobao/accs/flowcontrol/FlowControl;

.field public e:Ljava/lang/String;

.field private f:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/taobao/accs/data/Message$a;",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Landroid/content/Context;

.field private i:Lcom/taobao/accs/ut/a/d;

.field private j:Lcom/taobao/accs/data/Message;

.field private k:Lcom/taobao/accs/net/b;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/data/a;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/taobao/accs/net/b;)V
    .registers 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/data/d;->a:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/taobao/accs/data/d;->g:Z

    const-string v0, ""

    .line 86
    iput-object v0, p0, Lcom/taobao/accs/data/d;->e:Ljava/lang/String;

    const-string v0, "MsgRecv_"

    .line 88
    iput-object v0, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    .line 90
    new-instance v0, Lcom/taobao/accs/data/MessageHandler$1;

    invoke-direct {v0, p0}, Lcom/taobao/accs/data/MessageHandler$1;-><init>(Lcom/taobao/accs/data/d;)V

    iput-object v0, p0, Lcom/taobao/accs/data/d;->m:Ljava/util/LinkedHashMap;

    .line 853
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/data/d;->n:Ljava/util/Map;

    .line 1056
    new-instance v0, Lcom/taobao/accs/data/f;

    invoke-direct {v0, p0}, Lcom/taobao/accs/data/f;-><init>(Lcom/taobao/accs/data/d;)V

    iput-object v0, p0, Lcom/taobao/accs/data/d;->o:Ljava/lang/Runnable;

    .line 99
    iput-object p1, p0, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    .line 101
    new-instance p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    iget-object v0, p0, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/taobao/accs/data/d;->c:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    .line 102
    new-instance p1, Lcom/taobao/accs/flowcontrol/FlowControl;

    iget-object v0, p0, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/taobao/accs/flowcontrol/FlowControl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/taobao/accs/data/d;->d:Lcom/taobao/accs/flowcontrol/FlowControl;

    if-nez p2, :cond_4c

    .line 103
    iget-object p1, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    goto :goto_5f

    :cond_4c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5f
    iput-object p1, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Lcom/taobao/accs/data/d;->i()V

    .line 105
    invoke-virtual {p0}, Lcom/taobao/accs/data/d;->h()V

    return-void
.end method

.method private a(Lcom/taobao/accs/utl/h;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/accs/utl/h;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 550
    :try_start_5
    invoke-virtual {p1}, Lcom/taobao/accs/utl/h;->b()I

    move-result v2

    .line 551
    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 552
    iget-object v3, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extHeaderLen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_77

    :cond_29
    move-object v3, v0

    move v0, v1

    :cond_2b
    :goto_2b
    if-ge v0, v2, :cond_82

    .line 557
    :try_start_2d
    invoke-virtual {p1}, Lcom/taobao/accs/utl/h;->b()I

    move-result v4

    add-int/lit8 v0, v0, 0x2

    const v5, 0xfc00

    and-int/2addr v5, v4

    shr-int/lit8 v5, v5, 0xa

    and-int/lit16 v4, v4, 0x3ff

    .line 561
    invoke-virtual {p1, v4}, Lcom/taobao/accs/utl/h;->a(I)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v0, v4

    if-nez v3, :cond_48

    .line 564
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v3, v4

    .line 566
    :cond_48
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 570
    iget-object v4, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v7, ""

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "extHeaderType"

    aput-object v9, v8, v1

    const/4 v9, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v9

    const-string v5, "value"

    const/4 v9, 0x2

    aput-object v5, v8, v9

    const/4 v5, 0x3

    aput-object v6, v8, v5

    invoke-static {v4, v7, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_74} :catch_75

    goto :goto_2b

    :catch_75
    move-exception p1

    goto :goto_79

    :catch_77
    move-exception p1

    move-object v3, v0

    .line 574
    :goto_79
    iget-object v0, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "parseExtHeader"

    invoke-static {v0, v2, p1, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_82
    return-object v3
.end method

.method private a(I[BLjava/lang/String;I)V
    .registers 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v14, p3

    const-string v15, "accs"

    const-string v13, ""

    .line 171
    new-instance v1, Lcom/taobao/accs/utl/h;

    invoke-direct {v1, v9}, Lcom/taobao/accs/utl/h;-><init>([B)V

    .line 172
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->b()I

    move-result v0

    int-to-long v10, v0

    .line 173
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_3c

    .line 174
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_3c
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/taobao/accs/utl/h;->a(I)Ljava/lang/String;

    move-result-object v6

    .line 177
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 178
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :cond_64
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/taobao/accs/utl/h;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 181
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 182
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    :cond_8c
    :try_start_8c
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/taobao/accs/utl/h;->a(I)Ljava/lang/String;

    move-result-object v4
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_94} :catch_7dc

    .line 194
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 195
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :cond_b4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->available()I

    move-result v0

    const/4 v12, 0x2

    move-object/from16 v17, v15

    const/4 v15, 0x1

    if-lez v0, :cond_114

    move/from16 v0, p4

    if-ne v0, v12, :cond_f5

    .line 206
    invoke-direct {v7, v1}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/utl/h;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f2

    const/16 v18, 0x10

    .line 207
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const/16 v2, 0x11

    .line 208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    move-object v2, v0

    move v0, v15

    goto :goto_f7

    :cond_f2
    move-object v2, v0

    const/4 v0, 0x0

    goto :goto_f7

    :cond_f5
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_f7
    if-eqz v8, :cond_109

    if-eqz v0, :cond_fc

    goto :goto_109

    :cond_fc
    if-ne v8, v15, :cond_103

    .line 215
    invoke-direct {v7, v1}, Lcom/taobao/accs/data/d;->a(Ljava/io/InputStream;)[B

    move-result-object v18

    goto :goto_10d

    :cond_103
    move/from16 v18, v0

    move-object/from16 p4, v2

    const/4 v2, 0x0

    goto :goto_119

    .line 213
    :cond_109
    :goto_109
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->c()[B

    move-result-object v18

    :goto_10d
    move-object/from16 p4, v2

    move-object/from16 v2, v18

    move/from16 v18, v0

    goto :goto_119

    :cond_114
    const/16 p4, 0x0

    const/4 v2, 0x0

    const/16 v18, 0x0

    .line 218
    :goto_119
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->close()V

    const-string v1, "handleMessage"

    if-nez v2, :cond_137

    .line 221
    :try_start_120
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v12, "oriData is null"
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_124} :catch_12d

    move-object/from16 v23, v3

    const/4 v15, 0x0

    :try_start_127
    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v0, v12, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_172

    :catch_12d
    move-exception v0

    move-object/from16 v40, v1

    move-object v2, v4

    move-object v1, v13

    move v4, v15

    move-object/from16 v6, v17

    goto/16 :goto_7a6

    :cond_137
    move-object/from16 v23, v3

    .line 223
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_13f} :catch_79e

    if-eqz v0, :cond_172

    .line 226
    :try_start_141
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_146} :catch_147

    goto :goto_159

    .line 228
    :catch_147
    :try_start_147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binary "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_159
    iget-object v3, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "oriData:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    new-array v15, v12, [Ljava/lang/Object;

    invoke-static {v3, v0, v15}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_172} :catch_79e

    :cond_172
    :goto_172
    const/16 v0, 0xf

    shr-long v24, v10, v0

    const-wide/16 v26, 0x1

    move-object v15, v13

    and-long v12, v24, v26

    long-to-int v0, v12

    .line 233
    :try_start_17c
    invoke-static {v0}, Lcom/taobao/accs/data/Message$c;->a(I)I

    move-result v12

    const/16 v0, 0xd

    shr-long v24, v10, v0

    const-wide/16 v28, 0x3

    and-long v13, v24, v28

    long-to-int v0, v13

    .line 234
    invoke-static {v0}, Lcom/taobao/accs/data/Message$ReqType;->valueOf(I)Lcom/taobao/accs/data/Message$ReqType;

    move-result-object v13
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_18d} :catch_798

    const/16 v0, 0xc

    shr-long v24, v10, v0

    move-object/from16 v28, v15

    and-long v14, v24, v26

    long-to-int v3, v14

    const/16 v0, 0xb

    shr-long v14, v10, v0

    and-long v14, v14, v26

    long-to-int v0, v14

    .line 236
    :try_start_19d
    invoke-static {v0}, Lcom/taobao/accs/data/Message$b;->a(I)I

    move-result v14

    const/4 v15, 0x6

    shr-long v24, v10, v15

    move-wide/from16 v29, v10

    and-long v10, v24, v26

    long-to-int v0, v10

    const/4 v10, 0x1

    if-ne v0, v10, :cond_1ae

    const/4 v11, 0x1

    goto :goto_1af

    :cond_1ae
    const/4 v11, 0x0

    .line 238
    :goto_1af
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1b5} :catch_78f

    const-string v10, "target"

    const-string v15, "dataId"

    if-eqz v0, :cond_201

    .line 239
    :try_start_1bb
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    move-object/from16 v27, v5

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v15, v5, v16

    const/16 v22, 0x1

    aput-object v4, v5, v22

    const-string v31, "type"

    const/16 v20, 0x2

    aput-object v31, v5, v20

    .line 241
    invoke-static {v12}, Lcom/taobao/accs/data/Message$c;->b(I)Ljava/lang/String;

    move-result-object v31

    const/16 v26, 0x3

    aput-object v31, v5, v26

    const-string v31, "reqType"

    const/16 v25, 0x4

    aput-object v31, v5, v25

    .line 242
    invoke-virtual {v13}, Lcom/taobao/accs/data/Message$ReqType;->name()Ljava/lang/String;

    move-result-object v31

    const/16 v21, 0x5

    aput-object v31, v5, v21

    const-string v31, "resType"

    const/16 v24, 0x6

    aput-object v31, v5, v24

    const/16 v31, 0x7

    .line 243
    invoke-static {v14}, Lcom/taobao/accs/data/Message$b;->b(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v5, v31

    const/16 v31, 0x8

    aput-object v10, v5, v31

    const/16 v31, 0x9

    aput-object v6, v5, v31

    .line 239
    invoke-static {v0, v1, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_203

    :cond_201
    move-object/from16 v27, v5

    :goto_203
    const/4 v5, 0x1

    if-ne v12, v5, :cond_360

    .line 248
    sget-object v0, Lcom/taobao/accs/data/Message$ReqType;->ACK:Lcom/taobao/accs/data/Message$ReqType;

    if-eq v13, v0, :cond_20e

    sget-object v0, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v13, v0, :cond_360

    .line 249
    :cond_20e
    iget-object v0, v7, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    new-instance v5, Lcom/taobao/accs/data/Message$a;

    move-object/from16 v31, v6

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4}, Lcom/taobao/accs/data/Message$a;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/taobao/accs/data/Message;

    if-eqz v6, :cond_31e

    .line 251
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_238

    .line 252
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v5, "handleMessage reqMessage not null"
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_22d} :catch_78f

    move-object/from16 v32, v4

    move/from16 v33, v14

    const/4 v4, 0x0

    :try_start_232
    new-array v14, v4, [Ljava/lang/Object;

    invoke-static {v0, v5, v14}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_23c

    :cond_238
    move-object/from16 v32, v4

    move/from16 v33, v14

    .line 254
    :goto_23c
    sget-object v0, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;
    :try_end_23e
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_23e} :catch_313

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2b2

    .line 257
    :try_start_241
    new-instance v0, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "code"

    .line 258
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 259
    invoke-static {v0}, Lcom/taobao/accs/a;->a(I)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0
    :try_end_255
    .catch Ljava/lang/Throwable; {:try_start_241 .. :try_end_255} :catch_256
    .catch Ljava/lang/Exception; {:try_start_241 .. :try_end_255} :catch_313

    goto :goto_287

    :catch_256
    move-exception v0

    .line 261
    :try_start_257
    sget-object v4, Lcom/taobao/accs/a;->SERVICE_NOT_AVAILABLE:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "data:"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", tr:"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    .line 263
    :goto_287
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v4

    sget-object v5, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v5

    if-eq v4, v5, :cond_2b2

    .line 264
    iget-object v4, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v14, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v14, v5
    :try_end_29f
    .catch Ljava/lang/Exception; {:try_start_257 .. :try_end_29f} :catch_313

    const/4 v3, 0x1

    :try_start_2a0
    aput-object v0, v14, v3
    :try_end_2a2
    .catch Ljava/lang/Exception; {:try_start_2a0 .. :try_end_2a2} :catch_2a6

    :try_start_2a2
    invoke-static {v4, v1, v14}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2b2

    :catch_2a6
    move-exception v0

    move-object/from16 v40, v1

    move v4, v3

    move-object/from16 v6, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v32

    goto/16 :goto_7a6

    :cond_2b2
    :goto_2b2
    move-object v3, v0

    .line 267
    invoke-virtual {v6}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    if-eqz v0, :cond_2c0

    .line 268
    invoke-virtual {v6}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onRecAck()V

    .line 271
    :cond_2c0
    sget-object v0, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;
    :try_end_2c2
    .catch Ljava/lang/Exception; {:try_start_2a2 .. :try_end_2c2} :catch_313

    if-ne v13, v0, :cond_2e5

    move-object v14, v1

    move-object/from16 v1, p0

    move-object v5, v2

    const/4 v4, 0x0

    move-object v2, v6

    move-object/from16 v19, v14

    move-object/from16 v14, v23

    move/from16 v23, v11

    move-object/from16 v11, v32

    move-object/from16 v32, v10

    move-object v10, v4

    move-object v4, v13

    move-object/from16 v34, v27

    move-object/from16 v27, v5

    move-object v10, v6

    move-object/from16 v35, v31

    move-object/from16 v6, p4

    .line 272
    :try_start_2df
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;Lcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    move-object/from16 v5, p4

    goto :goto_2fb

    :cond_2e5
    move-object/from16 v5, p4

    move-object/from16 v19, v1

    move-object/from16 v14, v23

    move-object/from16 v34, v27

    move-object/from16 v35, v31

    move-object/from16 v27, v2

    move/from16 v23, v11

    move-object/from16 v11, v32

    move-object/from16 v32, v10

    move-object v10, v6

    .line 274
    invoke-virtual {v7, v10, v3, v5}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;Ljava/util/Map;)V

    .line 276
    :goto_2fb
    new-instance v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    iget-object v2, v10, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v3

    array-length v1, v9

    move-object v10, v5

    int-to-long v5, v1

    move-object v1, v0

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-virtual {v7, v0}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    move-object/from16 v5, v35

    goto/16 :goto_372

    :catch_313
    move-exception v0

    move-object/from16 v40, v1

    move-object/from16 v6, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v32

    goto/16 :goto_7a5

    :cond_31e
    move-object/from16 v19, v1

    move-object/from16 v32, v10

    move/from16 v33, v14

    move-object/from16 v14, v23

    move-object/from16 v34, v27

    move-object/from16 v35, v31

    move-object/from16 v10, p4

    move-object/from16 v27, v2

    move/from16 v23, v11

    move-object v11, v4

    .line 278
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v1, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    const/4 v2, 0x0

    .line 279
    invoke-virtual {v1, v2}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v35

    const/4 v2, 0x5

    invoke-static {v11, v5, v1, v2}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v1
    :try_end_341
    .catch Ljava/lang/Exception; {:try_start_2df .. :try_end_341} :catch_3e6

    const/4 v2, 0x1

    .line 278
    :try_start_342
    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    .line 281
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v1, "handleMessage data ack/res reqMessage is null"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v4, v3

    aput-object v11, v4, v2
    :try_end_351
    .catch Ljava/lang/Exception; {:try_start_342 .. :try_end_351} :catch_355

    :try_start_351
    invoke-static {v0, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_372

    :catch_355
    move-exception v0

    move v4, v2

    :goto_357
    move-object v2, v11

    move-object/from16 v6, v17

    :goto_35a
    move-object/from16 v40, v19

    move-object/from16 v1, v28

    goto/16 :goto_7a6

    :cond_360
    move-object/from16 v19, v1

    move-object v5, v6

    move-object/from16 v32, v10

    move/from16 v33, v14

    move-object/from16 v14, v23

    move-object/from16 v34, v27

    move-object/from16 v10, p4

    move-object/from16 v27, v2

    move/from16 v23, v11

    move-object v11, v4

    :goto_372
    if-nez v12, :cond_3ee

    .line 286
    sget-object v0, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v13, v0, :cond_3ee

    .line 287
    iget-object v0, v7, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcom/taobao/accs/data/Message$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v11}, Lcom/taobao/accs/data/Message$a;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/data/Message;

    if-eqz v0, :cond_390

    move-object/from16 v6, p3

    move-object/from16 v1, v27

    .line 289
    invoke-direct {v7, v0, v1, v9, v6}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;[B[BLjava/lang/String;)V

    return-void

    :cond_390
    move-object/from16 v6, p3

    move-object/from16 v1, v27

    const-string v0, "4|sal|st"

    move-object/from16 v4, v34

    .line 292
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b4

    .line 293
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v2, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    const/4 v3, 0x0

    .line 294
    invoke-virtual {v2, v3}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v11, v5, v2, v3}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v2
    :try_end_3ac
    .catch Ljava/lang/Exception; {:try_start_351 .. :try_end_3ac} :catch_3e6

    const/4 v3, 0x1

    .line 293
    :try_start_3ad
    invoke-virtual {v0, v2, v3}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_3b0
    .catch Ljava/lang/Exception; {:try_start_3ad .. :try_end_3b0} :catch_3b1

    goto :goto_3b4

    :catch_3b1
    move-exception v0

    move v4, v3

    goto :goto_357

    .line 297
    :cond_3b4
    :goto_3b4
    :try_start_3b4
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v2, "handleMessage contorl ACK reqMessage is null"

    const/4 v3, 0x2

    new-array v9, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v9, v3
    :try_end_3be
    .catch Ljava/lang/Exception; {:try_start_3b4 .. :try_end_3be} :catch_3e6

    const/4 v3, 0x1

    :try_start_3bf
    aput-object v11, v9, v3
    :try_end_3c1
    .catch Ljava/lang/Exception; {:try_start_3bf .. :try_end_3c1} :catch_3b1

    :try_start_3c1
    invoke-static {v0, v2, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_3f4

    .line 299
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v2, "handleMessage not handled"

    const/4 v3, 0x2

    new-array v9, v3, [Ljava/lang/Object;

    const-string v3, "body"

    const/16 v16, 0x0

    aput-object v3, v9, v16

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    const/16 v22, 0x1

    aput-object v3, v9, v22

    invoke-static {v0, v2, v9}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3f4

    :catch_3e6
    move-exception v0

    move-object v2, v11

    move-object/from16 v6, v17

    :goto_3ea
    move-object/from16 v40, v19

    goto/16 :goto_795

    :cond_3ee
    move-object/from16 v6, p3

    move-object/from16 v1, v27

    move-object/from16 v4, v34

    :cond_3f4
    :goto_3f4
    const/4 v2, 0x1

    if-ne v12, v2, :cond_7db

    .line 305
    sget-object v0, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v13, v0, :cond_7db

    if-nez v5, :cond_41b

    .line 307
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v1, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_406
    .catch Ljava/lang/Exception; {:try_start_3c1 .. :try_end_406} :catch_3e6

    move-object/from16 v13, v28

    const/4 v2, 0x1

    :try_start_409
    invoke-static {v11, v13, v1, v2}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_410
    .catch Ljava/lang/Exception; {:try_start_409 .. :try_end_410} :catch_411

    return-void

    :catch_411
    move-exception v0

    move v4, v2

    :goto_413
    move-object v2, v11

    move-object v1, v13

    move-object/from16 v6, v17

    move-object/from16 v40, v19

    goto/16 :goto_7a6

    :cond_41b
    move-object/from16 v13, v28

    :try_start_41d
    const-string v0, "\\|"

    .line 310
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 311
    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_439

    .line 312
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v1, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_430
    .catch Ljava/lang/Exception; {:try_start_41d .. :try_end_430} :catch_787

    const/4 v2, 0x1

    :try_start_431
    invoke-static {v11, v13, v1, v2}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_438
    .catch Ljava/lang/Exception; {:try_start_431 .. :try_end_438} :catch_411

    return-void

    .line 315
    :cond_439
    :try_start_439
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_459

    .line 316
    iget-object v2, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v3, "handleMessage onPush"

    const/4 v9, 0x2

    new-array v12, v9, [Ljava/lang/Object;

    const-string v9, "isBurstData"

    const/16 v16, 0x0

    aput-object v9, v12, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v22, 0x1

    aput-object v9, v12, v22

    invoke-static {v2, v3, v12}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    :cond_459
    iget-object v2, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    if-eqz v2, :cond_462

    .line 319
    iget-object v2, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    invoke-virtual {v2}, Lcom/taobao/accs/ut/a/d;->a()V

    .line 321
    :cond_462
    new-instance v2, Lcom/taobao/accs/ut/a/d;

    invoke-direct {v2}, Lcom/taobao/accs/ut/a/d;-><init>()V

    iput-object v2, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    .line 322
    iget-object v2, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/accs/ut/a/d;->c:Ljava/lang/String;

    .line 324
    iget-object v2, v7, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;
    :try_end_477
    .catch Ljava/lang/Exception; {:try_start_439 .. :try_end_477} :catch_787

    const/4 v3, 0x1

    :try_start_478
    aget-object v9, v0, v3
    :try_end_47a
    .catch Ljava/lang/Exception; {:try_start_478 .. :try_end_47a} :catch_783

    :try_start_47a
    invoke-static {v2, v9}, Lcom/taobao/accs/utl/UtilityImpl;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_748

    .line 325
    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_489

    const/4 v2, 0x2

    aget-object v3, v0, v2

    move-object v12, v3

    goto :goto_48a

    :cond_489
    const/4 v12, 0x0

    .line 326
    :goto_48a
    iget-object v2, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    iput-object v12, v2, Lcom/taobao/accs/ut/a/d;->e:Ljava/lang/String;

    .line 327
    invoke-direct {v7, v14}, Lcom/taobao/accs/data/d;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c9

    .line 328
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v1, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v11, v12, v1, v2}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v1
    :try_end_4a2
    .catch Ljava/lang/Exception; {:try_start_47a .. :try_end_4a2} :catch_787

    const/4 v3, 0x1

    :try_start_4a3
    invoke-virtual {v0, v1, v3}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    .line 329
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v1, "handleMessage msg duplicate"

    new-array v8, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v15, v8, v2

    aput-object v11, v8, v3

    invoke-static {v0, v1, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    iget-object v0, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    iput-boolean v3, v0, Lcom/taobao/accs/ut/a/d;->h:Z
    :try_end_4b8
    .catch Ljava/lang/Exception; {:try_start_4a3 .. :try_end_4b8} :catch_783

    move-object/from16 v24, v5

    move-object/from16 v25, v13

    move-object/from16 v8, v17

    move/from16 v9, v23

    move-wide/from16 v13, v29

    move/from16 v1, v33

    const/4 v2, 0x1

    move-object/from16 v23, v4

    goto/16 :goto_6bc

    :cond_4c9
    if-eqz v18, :cond_527

    .line 333
    :try_start_4cb
    invoke-direct {v7, v14, v10, v1}, Lcom/taobao/accs/data/d;->a(Ljava/lang/String;Ljava/util/Map;[B)[B

    move-result-object v2

    if-nez v2, :cond_4e3

    .line 335
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v1, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4da
    .catch Ljava/lang/Exception; {:try_start_4cb .. :try_end_4da} :catch_787

    const/4 v2, 0x1

    :try_start_4db
    invoke-static {v11, v12, v1, v2}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_4e2
    .catch Ljava/lang/Exception; {:try_start_4db .. :try_end_4e2} :catch_411

    return-void

    :cond_4e3
    const/4 v1, 0x1

    const/4 v9, 0x0

    if-ne v8, v1, :cond_524

    .line 339
    :try_start_4e7
    new-instance v1, Lcom/taobao/accs/utl/h;

    invoke-direct {v1, v2}, Lcom/taobao/accs/utl/h;-><init>([B)V

    .line 340
    invoke-direct {v7, v1}, Lcom/taobao/accs/data/d;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 341
    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v3

    if-eqz v3, :cond_51e

    .line 342
    iget-object v3, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v8, "handleMessage gzip completeOriData"
    :try_end_4fc
    .catch Ljava/lang/Exception; {:try_start_4e7 .. :try_end_4fc} :catch_787

    move-object/from16 v28, v13

    const/4 v9, 0x4

    :try_start_4ff
    new-array v13, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v15, v13, v9
    :try_end_504
    .catch Ljava/lang/Exception; {:try_start_4ff .. :try_end_504} :catch_3e6

    const/4 v9, 0x1

    :try_start_505
    aput-object v14, v13, v9
    :try_end_507
    .catch Ljava/lang/Exception; {:try_start_505 .. :try_end_507} :catch_51a

    :try_start_507
    const-string v9, "length"

    const/16 v18, 0x2

    aput-object v9, v13, v18

    array-length v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v18, 0x3

    aput-object v9, v13, v18

    invoke-static {v3, v8, v13}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_520

    :catch_51a
    move-exception v0

    move v4, v9

    goto/16 :goto_357

    :cond_51e
    move-object/from16 v28, v13

    .line 344
    :goto_520
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->close()V

    goto :goto_52a

    :cond_524
    move-object/from16 v28, v13

    goto :goto_52a

    :cond_527
    move-object/from16 v28, v13

    move-object v2, v1

    .line 350
    :goto_52a
    invoke-direct {v7, v14}, Lcom/taobao/accs/data/d;->d(Ljava/lang/String;)V
    :try_end_52d
    .catch Ljava/lang/Exception; {:try_start_507 .. :try_end_52d} :catch_3e6

    move-object/from16 v14, v17

    .line 352
    :try_start_52f
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_533
    .catch Ljava/lang/Exception; {:try_start_52f .. :try_end_533} :catch_743

    const-string v3, "serviceId"

    if-eqz v1, :cond_55d

    .line 353
    :try_start_537
    iget-object v1, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v8, "handleMessage try deliverMsg"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v15, v9, v13
    :try_end_541
    .catch Ljava/lang/Exception; {:try_start_537 .. :try_end_541} :catch_743

    const/4 v13, 0x1

    :try_start_542
    aput-object v11, v9, v13

    const/16 v17, 0x2

    aput-object v32, v9, v17

    aget-object v17, v0, v13
    :try_end_54a
    .catch Ljava/lang/Exception; {:try_start_542 .. :try_end_54a} :catch_557

    const/4 v13, 0x3

    :try_start_54b
    aput-object v17, v9, v13

    const/4 v13, 0x4

    aput-object v3, v9, v13

    const/4 v13, 0x5

    aput-object v12, v9, v13

    invoke-static {v1, v8, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_585

    :catch_557
    move-exception v0

    move-object v2, v11

    move v4, v13

    :goto_55a
    move-object v6, v14

    goto/16 :goto_35a

    .line 355
    :cond_55d
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_585

    .line 356
    iget-object v1, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v8, "handleMessage try deliverMsg"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v15, v9, v13
    :try_end_56f
    .catch Ljava/lang/Exception; {:try_start_54b .. :try_end_56f} :catch_743

    const/4 v13, 0x1

    :try_start_570
    aput-object v11, v9, v13

    const/16 v17, 0x2

    aput-object v32, v9, v17

    aget-object v17, v0, v13
    :try_end_578
    .catch Ljava/lang/Exception; {:try_start_570 .. :try_end_578} :catch_557

    const/4 v13, 0x3

    :try_start_579
    aput-object v17, v9, v13

    const/4 v13, 0x4

    aput-object v3, v9, v13

    const/4 v13, 0x5

    aput-object v12, v9, v13

    invoke-static {v1, v8, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_586

    :cond_585
    :goto_585
    const/4 v13, 0x5

    .line 359
    :goto_586
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_58d
    .catch Ljava/lang/Exception; {:try_start_579 .. :try_end_58d} :catch_743

    const/4 v8, 0x1

    .line 360
    :try_start_58e
    aget-object v9, v0, v8
    :try_end_590
    .catch Ljava/lang/Exception; {:try_start_58e .. :try_end_590} :catch_73e

    :try_start_590
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "command"

    const/16 v9, 0x65

    .line 361
    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    array-length v8, v0

    const/4 v9, 0x3

    if-lt v8, v9, :cond_5a4

    const/4 v8, 0x2

    .line 363
    aget-object v9, v0, v8

    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    :cond_5a4
    array-length v3, v0

    const/4 v8, 0x4

    if-lt v3, v8, :cond_5b1

    const/4 v3, 0x3

    .line 367
    aget-object v0, v0, v3

    const-string v3, "userInfo"

    .line 368
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5b3

    :cond_5b1
    move-object/from16 v0, v28

    :goto_5b3
    const-string v3, "data"

    .line 370
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 371
    invoke-virtual {v1, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "packageName"

    .line 373
    iget-object v8, v7, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "host"

    .line 375
    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "conn_type"

    .line 376
    iget v8, v7, Lcom/taobao/accs/data/d;->b:I

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "bizAck"

    move/from16 v9, v23

    .line 377
    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "appKey"

    .line 378
    iget-object v8, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v8}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "configTag"

    .line 379
    iget-object v8, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v8, v8, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    new-instance v3, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    invoke-direct {v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;-><init>()V

    const/4 v8, 0x4

    .line 382
    invoke-virtual {v3, v8}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setMsgType(I)V

    .line 383
    invoke-virtual {v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onReceiveData()V

    const-string v8, "monitor"

    .line 384
    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 386
    invoke-direct {v7, v10, v1}, Lcom/taobao/accs/data/d;->a(Ljava/util/Map;Landroid/content/Intent;)V
    :try_end_601
    .catch Ljava/lang/Exception; {:try_start_590 .. :try_end_601} :catch_743

    if-eqz v9, :cond_60d

    move-object/from16 v17, v14

    move-wide/from16 v13, v29

    long-to-int v3, v13

    int-to-short v3, v3

    .line 389
    :try_start_609
    invoke-direct {v7, v1, v4, v5, v3}, Lcom/taobao/accs/data/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_611

    :cond_60d
    move-object/from16 v17, v14

    move-wide/from16 v13, v29

    .line 391
    :goto_611
    iget-object v3, v7, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    iget-object v8, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-static {v3, v8, v1}, Lcom/taobao/accs/data/g;->a(Landroid/content/Context;Lcom/taobao/accs/net/b;Landroid/content/Intent;)V

    .line 394
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v34

    const v35, 0x101d1

    const-string v36, "MsgToBussPush"

    const-string v37, "commandId=101"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dataId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v34 .. v39}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "to_buss"

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "1commandId=101serviceId="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_658
    .catch Ljava/lang/Exception; {:try_start_609 .. :try_end_658} :catch_3e6

    move-object/from16 v34, v4

    move-object/from16 v35, v5

    const-wide/16 v4, 0x0

    move-object/from16 v8, v17

    :try_start_660
    invoke-static {v8, v1, v3, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 396
    iget-object v1, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    iput-object v11, v1, Lcom/taobao/accs/ut/a/d;->b:Ljava/lang/String;

    .line 397
    iget-object v1, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    iput-object v0, v1, Lcom/taobao/accs/ut/a/d;->i:Ljava/lang/String;

    .line 398
    iget-object v0, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_676

    const/4 v2, 0x0

    goto :goto_677

    :cond_676
    array-length v2, v2

    :goto_677
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_67a
    .catch Ljava/lang/Exception; {:try_start_660 .. :try_end_67a} :catch_739

    move-object/from16 v5, v28

    :try_start_67c
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/ut/a/d;->f:Ljava/lang/String;

    .line 399
    iget-object v0, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    iget-object v1, v7, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/ut/a/d;->a:Ljava/lang/String;

    .line 400
    iget-object v0, v7, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/ut/a/d;->d:Ljava/lang/String;

    .line 401
    new-instance v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v3

    move-object/from16 v1, p2

    array-length v1, v1
    :try_end_6a4
    .catch Ljava/lang/Exception; {:try_start_67c .. :try_end_6a4} :catch_734

    int-to-long v1, v1

    move-wide/from16 v17, v1

    move-object v1, v0

    move-object v2, v12

    move-object/from16 v23, v34

    move-object/from16 v4, p3

    move-object/from16 v25, v5

    move-object/from16 v24, v35

    move-wide/from16 v5, v17

    :try_start_6b3
    invoke-direct/range {v1 .. v6}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-virtual {v7, v0}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    move/from16 v1, v33

    const/4 v2, 0x1

    :goto_6bc
    if-ne v1, v2, :cond_7db

    .line 404
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6da

    .line 405
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v1, "handleMessage try sendAck dataId"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v2, v3
    :try_end_6ce
    .catch Ljava/lang/Exception; {:try_start_6b3 .. :try_end_6ce} :catch_72b

    const/4 v3, 0x1

    :try_start_6cf
    aput-object v11, v2, v3
    :try_end_6d1
    .catch Ljava/lang/Exception; {:try_start_6cf .. :try_end_6d1} :catch_6d7

    :try_start_6d1
    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_6ea

    :catch_6d7
    move-exception v0

    move v4, v3

    goto :goto_723

    .line 407
    :cond_6da
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v1, "handleMessage try sendAck dataId"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v2, v3
    :try_end_6e4
    .catch Ljava/lang/Exception; {:try_start_6d1 .. :try_end_6e4} :catch_72b

    const/4 v4, 0x1

    :try_start_6e5
    aput-object v11, v2, v4

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    :goto_6ea
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;
    :try_end_6ec
    .catch Ljava/lang/Exception; {:try_start_6e5 .. :try_end_6ec} :catch_722

    const/4 v1, 0x0

    long-to-int v2, v13

    int-to-short v13, v2

    move-object v2, v8

    move-object v8, v0

    move/from16 v16, v9

    const/4 v5, 0x0

    move-object/from16 v9, v24

    move-object v6, v5

    move-object v5, v10

    move-object/from16 v10, v23

    move-object v15, v11

    move v4, v3

    move-object v3, v12

    const/4 v14, 0x5

    move v12, v1

    move-object/from16 v1, v25

    move-object/from16 v40, v19

    move-object/from16 v14, p3

    move-object v6, v2

    move-object v2, v15

    const/4 v4, 0x1

    move-object v15, v5

    :try_start_709
    invoke-static/range {v8 .. v15}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZSLjava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 410
    iget-object v5, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v5, v0, v4}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    .line 411
    iget-object v0, v0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-direct {v7, v0, v3}, Lcom/taobao/accs/data/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v16, :cond_7db

    const-string v0, "ack"

    const-wide/16 v8, 0x0

    .line 413
    invoke-static {v6, v0, v1, v8, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto/16 :goto_7db

    :catch_722
    move-exception v0

    :goto_723
    move-object v6, v8

    move-object v2, v11

    move-object/from16 v40, v19

    move-object/from16 v1, v25

    goto/16 :goto_7a6

    :catch_72b
    move-exception v0

    move-object v6, v8

    move-object v2, v11

    move-object/from16 v40, v19

    move-object/from16 v1, v25

    goto/16 :goto_7a5

    :catch_734
    move-exception v0

    move-object v1, v5

    move-object v6, v8

    move-object v2, v11

    goto :goto_78c

    :catch_739
    move-exception v0

    move-object v6, v8

    move-object v2, v11

    goto/16 :goto_3ea

    :catch_73e
    move-exception v0

    move v4, v8

    move-object v2, v11

    goto/16 :goto_55a

    :catch_743
    move-exception v0

    move-object v2, v11

    move-object v6, v14

    goto/16 :goto_3ea

    :cond_748
    move-object v2, v11

    move-object v1, v13

    move-object/from16 v6, v17

    move-object/from16 v40, v19

    const/4 v4, 0x1

    .line 417
    iget-object v3, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v5, "handleMessage not exist, unbind it"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "package"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    aget-object v9, v0, v4

    aput-object v9, v8, v4

    invoke-static {v3, v5, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    iget-object v3, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v5, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    invoke-static {v2, v1, v5, v8}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    .line 419
    iget-object v3, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v5, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    aget-object v0, v0, v4

    invoke-static {v5, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_780
    .catch Ljava/lang/Exception; {:try_start_709 .. :try_end_780} :catch_781

    goto :goto_7db

    :catch_781
    move-exception v0

    goto :goto_7a6

    :catch_783
    move-exception v0

    move v4, v3

    goto/16 :goto_413

    :catch_787
    move-exception v0

    move-object v2, v11

    move-object v1, v13

    move-object/from16 v6, v17

    :goto_78c
    move-object/from16 v40, v19

    goto :goto_7a5

    :catch_78f
    move-exception v0

    move-object/from16 v40, v1

    move-object v2, v4

    move-object/from16 v6, v17

    :goto_795
    move-object/from16 v1, v28

    goto :goto_7a5

    :catch_798
    move-exception v0

    move-object/from16 v40, v1

    move-object v2, v4

    move-object v1, v15

    goto :goto_7a3

    :catch_79e
    move-exception v0

    move-object/from16 v40, v1

    move-object v2, v4

    move-object v1, v13

    :goto_7a3
    move-object/from16 v6, v17

    :goto_7a5
    const/4 v4, 0x1

    .line 423
    :goto_7a6
    iget-object v3, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v8, v40

    invoke-static {v3, v8, v0, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 424
    iget-object v3, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x5

    invoke-static {v2, v1, v5, v8}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v2

    invoke-virtual {v3, v2, v4}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v7, Lcom/taobao/accs/data/d;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "send_fail"

    const-string v3, "1"

    invoke-static {v6, v2, v1, v3, v0}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7db
    :goto_7db
    return-void

    :catch_7dc
    move-exception v0

    move-object v2, v13

    move-object v6, v15

    .line 189
    iget-object v3, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dataId read error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->close()V

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v7, Lcom/taobao/accs/data/d;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "data id read error"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "send_fail"

    const-string v3, "1"

    invoke-static {v6, v1, v2, v3, v0}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;S)V
    .registers 6

    if-eqz p1, :cond_1d

    .line 955
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "source"

    .line 956
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 958
    :cond_d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_18

    const-string p2, "target"

    .line 959
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_18
    const-string p2, "flags"

    .line 962
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    :cond_1d
    return-void
.end method

.method private a(Lcom/taobao/accs/data/Message;[B[BLjava/lang/String;)V
    .registers 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 473
    sget-object v1, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    const/4 v2, 0x0

    .line 475
    :try_start_7
    new-instance v3, Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_b} :catch_147

    move-object/from16 v5, p2

    :try_start_d
    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 476
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_19} :catch_145

    const-string v4, "json"

    const-string v6, "handleControlMessage parse"

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v0, :cond_30

    .line 477
    :try_start_21
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v4, v11, v2

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    invoke-static {v0, v6, v11}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    :cond_30
    iget-object v0, v8, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v11, 0x64

    if-ne v0, v11, :cond_3e

    .line 481
    sget-object v0, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    :goto_3c
    move-object v1, v0

    goto :goto_49

    :cond_3e
    const-string v0, "code"

    .line 483
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 484
    invoke-static {v0}, Lcom/taobao/accs/a;->a(I)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v0

    goto :goto_3c

    .line 486
    :goto_49
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v12, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v12}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v12

    if-ne v0, v12, :cond_112

    .line 487
    iget-object v0, v8, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v10, :cond_89

    if-eq v0, v9, :cond_7c

    if-eq v0, v11, :cond_63

    goto/16 :goto_129

    .line 520
    :cond_63
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    instance-of v0, v0, Lcom/taobao/accs/net/j;

    if-eqz v0, :cond_129

    iget-object v0, v8, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    const-string v11, "4|sal|st"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_129

    .line 521
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    check-cast v0, Lcom/taobao/accs/net/j;

    .line 522
    invoke-virtual {v0, v3}, Lcom/taobao/accs/net/j;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_129

    .line 517
    :cond_7c
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/c;

    move-result-object v0

    iget-object v11, v8, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/taobao/accs/client/c;->b(Ljava/lang/String;)V

    goto/16 :goto_129

    .line 489
    :cond_89
    invoke-static {}, Lcom/taobao/accs/AccsState;->getInstance()Lcom/taobao/accs/AccsState;

    move-result-object v0

    iget-object v11, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v11, v11, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    const-string v12, "bfc"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v0, v11, v12, v13}, Lcom/taobao/accs/AccsState;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "EMAS_ACCS_SDK"

    .line 490
    iget-object v11, v7, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/taobao/accs/utl/UtilityImpl;->saveUtdid(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_a1} :catch_145

    .line 493
    :try_start_a1
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/c;

    move-result-object v0

    iget-object v11, v7, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/taobao/accs/client/c;->a(Ljava/lang/String;)V

    const-string v0, "data"

    .line 494
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v11, "accsToken"

    const/4 v12, 0x0

    .line 495
    invoke-static {v0, v11, v12}, Lcom/taobao/accs/utl/JsonUtility;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/taobao/accs/data/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_129

    const-string v11, "packageNames"

    .line 498
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_129

    move v11, v2

    .line 500
    :goto_ca
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_129

    .line 501
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 502
    iget-object v13, v7, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    invoke-static {v13, v12}, Lcom/taobao/accs/utl/UtilityImpl;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e8

    .line 503
    iget-object v12, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v12}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/c;

    move-result-object v12

    iget-object v13, v8, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/taobao/accs/client/c;->a(Ljava/lang/String;)V

    goto :goto_102

    .line 505
    :cond_e8
    iget-object v13, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v14, "unbind app"

    new-array v15, v9, [Ljava/lang/Object;

    const-string v16, "pkg"

    aput-object v16, v15, v2

    aput-object v12, v15, v10

    invoke-static {v13, v14, v15}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    iget-object v13, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v14, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-static {v14, v12}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v12

    invoke-virtual {v13, v12, v10}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_102
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_102} :catch_105

    :goto_102
    add-int/lit8 v11, v11, 0x1

    goto :goto_ca

    :catch_105
    move-exception v0

    .line 512
    :try_start_106
    iget-object v11, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v12, "no token/invalid app"

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v0, v13, v2

    invoke-static {v11, v12, v13}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_129

    .line 529
    :cond_112
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v11, Lcom/taobao/accs/a;->APP_NOT_BIND:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v11

    if-ne v0, v11, :cond_129

    .line 530
    iget-object v0, v7, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/c;

    move-result-object v0

    iget-object v11, v8, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/taobao/accs/client/c;->b(Ljava/lang/String;)V

    .line 533
    :cond_129
    :goto_129
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v11, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v11}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v11

    if-eq v0, v11, :cond_171

    .line 534
    iget-object v0, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v2

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v10

    invoke-static {v0, v6, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_144
    .catch Ljava/lang/Throwable; {:try_start_106 .. :try_end_144} :catch_145

    goto :goto_171

    :catch_145
    move-exception v0

    goto :goto_14a

    :catch_147
    move-exception v0

    move-object/from16 v5, p2

    .line 537
    :goto_14a
    iget-object v3, v7, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "handleControlMessage"

    invoke-static {v3, v4, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v7, Lcom/taobao/accs/data/d;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "accs"

    const-string v3, "send_fail"

    const-string v6, ""

    invoke-static {v2, v3, v4, v6, v0}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_171
    :goto_171
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    .line 540
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;Lcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    .line 541
    new-instance v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    iget-object v9, v8, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v10

    move-object/from16 v1, p3

    array-length v1, v1

    int-to-long v12, v1

    move-object v8, v0

    move-object/from16 v11, p4

    invoke-direct/range {v8 .. v13}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-virtual {v7, v0}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1021
    new-instance v0, Lcom/taobao/accs/ut/a/e;

    invoke-direct {v0}, Lcom/taobao/accs/ut/a/e;-><init>()V

    .line 1022
    iget-object v1, p0, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/ut/a/e;->a:Ljava/lang/String;

    .line 1023
    iput-object p1, v0, Lcom/taobao/accs/ut/a/e;->c:Ljava/lang/String;

    .line 1024
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/taobao/accs/ut/a/e;->d:Ljava/lang/String;

    .line 1025
    iput-object v1, v0, Lcom/taobao/accs/ut/a/e;->f:Ljava/lang/String;

    .line 1026
    iput-object p2, v0, Lcom/taobao/accs/ut/a/e;->e:Ljava/lang/String;

    .line 1027
    iput-object v1, v0, Lcom/taobao/accs/ut/a/e;->b:Ljava/lang/String;

    .line 1028
    invoke-virtual {v0}, Lcom/taobao/accs/ut/a/e;->a()V

    return-void
.end method

.method private a(Ljava/util/Map;Landroid/content/Intent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    .line 949
    check-cast p1, Ljava/util/HashMap;

    const-string v0, "ext_header"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_b
    return-void
.end method

.method private a(Ljava/io/InputStream;)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 433
    :cond_4
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 434
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x2000

    const/4 v3, 0x0

    .line 437
    :try_start_11
    new-array v2, v2, [B

    .line 440
    :goto_13
    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1d

    .line 441
    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_13

    .line 444
    :cond_1d
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_21} :catch_2a
    .catchall {:try_start_11 .. :try_end_21} :catchall_28

    .line 452
    :try_start_21
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 456
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_27} :catch_27

    :catch_27
    return-object v0

    :catchall_28
    move-exception v0

    goto :goto_73

    :catch_2a
    move-exception v2

    .line 447
    :try_start_2b
    iget-object v4, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uncompress data error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "accs"

    const-string v4, "send_fail"

    const-string v5, ""

    const-string v6, "1"

    .line 448
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/taobao/accs/data/d;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " uncompress data error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v5, v6, v2}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_2b .. :try_end_6c} :catchall_28

    .line 452
    :try_start_6c
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 456
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_72} :catch_72

    :catch_72
    return-object v0

    .line 452
    :goto_73
    :try_start_73
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 456
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_79} :catch_79

    .line 460
    :catch_79
    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;[B)[B
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;[B)[B"
        }
    .end annotation

    const-string v0, "putBurstMessage"

    const/4 v1, 0x0

    if-eqz p3, :cond_bc

    .line 857
    :try_start_5
    array-length v2, p3

    if-eqz v2, :cond_bc

    const/16 v2, 0x11

    .line 860
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x10

    .line 861
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_b4

    const/4 v5, 0x2

    if-ltz v2, :cond_9a

    if-ge v2, v3, :cond_9a

    const/16 v6, 0x12

    .line 868
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_3c} :catch_c4

    const-wide/16 v7, 0x0

    const/16 v9, 0xf

    .line 872
    :try_start_40
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 873
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5d

    .line 874
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_54} :catch_55

    goto :goto_5d

    :catch_55
    move-exception p2

    .line 877
    :try_start_56
    iget-object v9, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v9, v0, p2, v10}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 879
    :cond_5d
    :goto_5d
    iget-object p2, p0, Lcom/taobao/accs/data/d;->n:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taobao/accs/data/a;

    if-nez p2, :cond_95

    .line 881
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_88

    .line 882
    iget-object p2, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "dataId"

    aput-object v10, v9, v1

    aput-object p1, v9, v4

    const-string v4, "burstLength"

    aput-object v4, v9, v5

    const/4 v4, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v4

    invoke-static {p2, v0, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 884
    :cond_88
    new-instance p2, Lcom/taobao/accs/data/a;

    invoke-direct {p2, p1, v3, v6}, Lcom/taobao/accs/data/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 885
    invoke-virtual {p2, v7, v8}, Lcom/taobao/accs/data/a;->a(J)V

    .line 886
    iget-object v4, p0, Lcom/taobao/accs/data/d;->n:Ljava/util/Map;

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    :cond_95
    invoke-virtual {p2, v2, v3, p3}, Lcom/taobao/accs/data/a;->a(II[B)[B

    move-result-object p1

    return-object p1

    .line 866
    :cond_9a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "burstNums:%s burstIndex:%s"

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 863
    :cond_b4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "burstNums <= 1"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 858
    :cond_bc
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "burstLength == 0"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_c4} :catch_c4

    :catch_c4
    move-exception p1

    .line 890
    iget-object p2, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, p1, p3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 985
    :cond_3
    iget-object v0, p0, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 988
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v2

    sget-object v3, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2d

    const/4 v2, 0x0

    goto :goto_2e

    :cond_2d
    move v2, v4

    .line 991
    :goto_2e
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_50

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3a

    goto :goto_61

    .line 1001
    :cond_3a
    new-instance v3, Lcom/taobao/accs/ut/a/b;

    invoke-direct {v3}, Lcom/taobao/accs/ut/a/b;-><init>()V

    .line 1002
    iput-object v0, v3, Lcom/taobao/accs/ut/a/b;->a:Ljava/lang/String;

    .line 1003
    iput-object v1, v3, Lcom/taobao/accs/ut/a/b;->b:Ljava/lang/String;

    .line 1004
    iput-boolean v2, v3, Lcom/taobao/accs/ut/a/b;->c:Z

    .line 1005
    iget-object p1, p1, Lcom/taobao/accs/data/Message;->G:Ljava/lang/String;

    iput-object p1, v3, Lcom/taobao/accs/ut/a/b;->e:Ljava/lang/String;

    .line 1006
    invoke-virtual {v3, p2}, Lcom/taobao/accs/ut/a/b;->a(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 1007
    invoke-virtual {v3}, Lcom/taobao/accs/ut/a/b;->a()V

    goto :goto_61

    .line 993
    :cond_50
    new-instance p1, Lcom/taobao/accs/ut/a/a;

    invoke-direct {p1}, Lcom/taobao/accs/ut/a/a;-><init>()V

    .line 994
    iput-object v0, p1, Lcom/taobao/accs/ut/a/a;->a:Ljava/lang/String;

    .line 995
    iput-object v1, p1, Lcom/taobao/accs/ut/a/a;->b:Ljava/lang/String;

    .line 996
    iput-boolean v2, p1, Lcom/taobao/accs/ut/a/a;->c:Z

    .line 997
    invoke-virtual {p1, p2}, Lcom/taobao/accs/ut/a/a;->a(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 998
    invoke-virtual {p1}, Lcom/taobao/accs/ut/a/a;->a()V

    :goto_61
    return-void
.end method

.method private b(Lcom/alibaba/sdk/android/error/ErrorCode;)Z
    .registers 4

    .line 698
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v1, Lcom/taobao/accs/a;->NETWORK_FAIL:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v1

    if-eq v0, v1, :cond_33

    .line 699
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v1, Lcom/taobao/accs/a;->REQ_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v1

    if-eq v0, v1, :cond_33

    .line 700
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v1, Lcom/taobao/accs/a;->CON_DISCONNECTED:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v1

    if-eq v0, v1, :cond_33

    .line 701
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result p1

    sget-object v0, Lcom/taobao/accs/a;->SESSION_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    if-ne p1, v0, :cond_31

    goto :goto_33

    :cond_31
    const/4 p1, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 p1, 0x1

    :goto_34
    return p1
.end method

.method private c(Lcom/taobao/accs/data/Message;)Landroid/content/Intent;
    .registers 5

    .line 936
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 937
    iget-object v1, p1, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    iget-object v1, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    const-string v2, "command"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 939
    iget-object v1, p1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    const-string v2, "serviceId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 940
    iget-object v1, p1, Lcom/taobao/accs/data/Message;->G:Ljava/lang/String;

    const-string v2, "userInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 941
    iget-object v1, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v1, :cond_36

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_36

    .line 942
    iget-object p1, p1, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    const-string v1, "dataId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_36
    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .registers 3

    .line 846
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 849
    :cond_8
    iget-object v0, p0, Lcom/taobao/accs/data/d;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private d(Ljava/lang/String;)V
    .registers 3

    .line 897
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/taobao/accs/data/d;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_17

    .line 900
    :cond_f
    iget-object v0, p0, Lcom/taobao/accs/data/d;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    invoke-direct {p0}, Lcom/taobao/accs/data/d;->j()V

    :cond_17
    :goto_17
    return-void
.end method

.method private i()V
    .registers 6

    .line 906
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    const-string v2, "emas_accs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v4}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 907
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_35

    .line 908
    iget-object v0, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const-string v1, "message file not exist"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 911
    :cond_35
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 913
    :goto_3f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 914
    iget-object v2, p0, Lcom/taobao/accs/data/d;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    .line 916
    :cond_4b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception v0

    .line 918
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_53
    return-void
.end method

.method private j()V
    .registers 6

    .line 924
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    const-string v3, "emas_accs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v4}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const-string v1, ""

    .line 925
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 926
    iget-object v1, p0, Lcom/taobao/accs/data/d;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 927
    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_39

    .line 929
    :cond_4f
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception v0

    .line 931
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_57
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .registers 5

    .line 834
    iget-object v0, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcom/taobao/accs/data/Message$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/taobao/accs/data/Message$a;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/accs/data/Message;

    return-object p1
.end method

.method public a()V
    .registers 4

    .line 708
    iget-object v0, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onSendPing"

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    const-class v0, Lcom/taobao/accs/data/d;

    monitor-enter v0

    const/4 v1, 0x1

    .line 710
    :try_start_e
    iput-boolean v1, p0, Lcom/taobao/accs/data/d;->g:Z

    .line 711
    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw v1
.end method

.method public a(Lcom/alibaba/sdk/android/error/ErrorCode;)V
    .registers 7

    const/4 v0, 0x0

    .line 759
    iput-boolean v0, p0, Lcom/taobao/accs/data/d;->g:Z

    .line 760
    iget-object v1, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-array v2, v0, [Lcom/taobao/accs/data/Message$a;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/taobao/accs/data/Message$a;

    .line 761
    array-length v2, v1

    if-lez v2, :cond_32

    .line 762
    iget-object v2, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "onNetworkFail"

    invoke-static {v2, v4, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 763
    array-length v2, v1

    :goto_1e
    if-ge v0, v2, :cond_32

    aget-object v3, v1, v0

    .line 764
    iget-object v4, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/accs/data/Message;

    if-eqz v3, :cond_2f

    .line 766
    invoke-virtual {p0, v3, p1}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_32
    return-void
.end method

.method public a(Lcom/taobao/accs/data/Message;)V
    .registers 10

    .line 740
    iget-object v0, p0, Lcom/taobao/accs/data/d;->j:Lcom/taobao/accs/data/Message;

    if-eqz v0, :cond_40

    iget-object v0, p1, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, p1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/taobao/accs/data/d;->j:Lcom/taobao/accs/data/Message;

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    .line 743
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/taobao/accs/data/d;->j:Lcom/taobao/accs/data/Message;

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    .line 744
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 745
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v1

    const v2, 0x101d1

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    iget-object v5, p1, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "SEND_REPEAT"

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 747
    :cond_40
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5c

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5c

    iget-boolean v0, p1, Lcom/taobao/accs/data/Message;->c:Z

    if-eqz v0, :cond_53

    goto :goto_5c

    .line 750
    :cond_53
    iget-object v0, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->d()Lcom/taobao/accs/data/Message$a;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    :goto_5c
    return-void
.end method

.method public a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 580
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;Lcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    return-void
.end method

.method public a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;Lcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/accs/data/Message;",
            "Lcom/alibaba/sdk/android/error/ErrorCode;",
            "Lcom/taobao/accs/data/Message$ReqType;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 597
    iget-object v2, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v2, :cond_25f

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v2

    if-ltz v2, :cond_25f

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_18

    goto/16 :goto_25f

    .line 601
    :cond_18
    iget-object v2, v1, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    if-eqz v2, :cond_23

    .line 602
    iget-object v2, v0, Lcom/taobao/accs/data/d;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v5, v1, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    :cond_23
    iget-object v2, v0, Lcom/taobao/accs/data/d;->d:Lcom/taobao/accs/flowcontrol/FlowControl;

    iget-object v5, v1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    move-object/from16 v6, p5

    invoke-virtual {v2, v6, v5}, Lcom/taobao/accs/flowcontrol/FlowControl;->a(Ljava/util/Map;Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x3

    if-eqz v2, :cond_40

    if-ne v2, v4, :cond_35

    .line 608
    sget-object v2, Lcom/taobao/accs/a;->SERVIER_HIGH_LIMIT:Lcom/alibaba/sdk/android/error/ErrorCode;

    goto :goto_3c

    :cond_35
    if-ne v2, v5, :cond_3a

    .line 610
    sget-object v2, Lcom/taobao/accs/a;->SERVIER_HIGH_LIMIT_BRUSH:Lcom/alibaba/sdk/android/error/ErrorCode;

    goto :goto_3c

    .line 612
    :cond_3a
    sget-object v2, Lcom/taobao/accs/a;->SERVIER_LOW_LIMIT:Lcom/alibaba/sdk/android/error/ErrorCode;

    :goto_3c
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_47

    :cond_40
    move-object/from16 v2, p2

    move-object/from16 v8, p4

    move-object v9, v6

    move-object/from16 v6, p3

    .line 618
    :goto_47
    sget-object v10, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v10}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v10

    const-string v11, "command"

    const-string v12, "onResult"

    const/4 v13, 0x1

    if-eqz v10, :cond_68

    .line 619
    iget-object v10, v0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v11, v14, v3

    iget-object v15, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    aput-object v15, v14, v13

    const-string v15, "erorcode"

    aput-object v15, v14, v4

    aput-object v2, v14, v5

    invoke-static {v10, v12, v14}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    :cond_68
    iget-object v10, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v14, 0x66

    if-ne v10, v14, :cond_73

    return-void

    .line 624
    :cond_73
    iget-object v10, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v13, :cond_87

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v10

    sget-object v14, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v14}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v14

    if-ne v10, v14, :cond_93

    .line 625
    :cond_87
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v10

    sget-object v14, Lcom/taobao/accs/a;->APP_NOT_BIND:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v14}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v14

    if-ne v10, v14, :cond_9e

    .line 626
    :cond_93
    iget-object v10, v0, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v10}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/c;

    move-result-object v10

    iget-object v14, v1, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    invoke-virtual {v10, v14}, Lcom/taobao/accs/client/c;->b(Ljava/lang/String;)V

    .line 628
    :cond_9e
    iget-boolean v10, v1, Lcom/taobao/accs/data/Message;->e:Z

    const-wide/16 v14, 0x0

    const-string v7, "accs"

    if-nez v10, :cond_1a2

    .line 629
    invoke-direct {v0, v2}, Lcom/taobao/accs/data/d;->b(Lcom/alibaba/sdk/android/error/ErrorCode;)Z

    move-result v10

    if-eqz v10, :cond_e1

    iget-object v10, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 630
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x64

    if-eq v10, v11, :cond_e1

    iget v10, v1, Lcom/taobao/accs/data/Message;->R:I

    sget v11, Lcom/taobao/accs/data/Message;->a:I

    if-gt v10, v11, :cond_e1

    .line 632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/taobao/accs/data/Message;->T:J

    .line 633
    iget v5, v1, Lcom/taobao/accs/data/Message;->R:I

    add-int/2addr v5, v13

    iput v5, v1, Lcom/taobao/accs/data/Message;->R:I

    .line 634
    iget-object v5, v0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "retryTimes"

    aput-object v6, v4, v3

    iget v6, v1, Lcom/taobao/accs/data/Message;->R:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v13

    invoke-static {v5, v12, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    iget-object v4, v0, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-virtual {v4, v1, v13}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    goto/16 :goto_1b1

    .line 637
    :cond_e1
    invoke-direct/range {p0 .. p1}, Lcom/taobao/accs/data/d;->c(Lcom/taobao/accs/data/Message;)Landroid/content/Intent;

    move-result-object v4

    const-string v10, "errorObj"

    .line 638
    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 639
    iget-short v10, v1, Lcom/taobao/accs/data/Message;->k:S

    shr-int/lit8 v10, v10, 0xd

    and-int/2addr v5, v10

    invoke-static {v5}, Lcom/taobao/accs/data/Message$ReqType;->valueOf(I)Lcom/taobao/accs/data/Message$ReqType;

    move-result-object v5

    .line 641
    sget-object v10, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    if-eq v6, v10, :cond_fb

    sget-object v6, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v5, v6, :cond_102

    :cond_fb
    const-string v5, "send_type"

    const-string v6, "res"

    .line 642
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    :cond_102
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v5

    sget-object v6, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v6

    if-ne v5, v6, :cond_113

    const-string v5, "data"

    .line 645
    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 647
    :cond_113
    iget-object v5, v0, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v5, v5, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    const-string v6, "appKey"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    iget-object v5, v0, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    iget-object v5, v5, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    const-string v6, "configTag"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    invoke-direct {v0, v9, v4}, Lcom/taobao/accs/data/d;->a(Ljava/util/Map;Landroid/content/Intent;)V

    .line 651
    iget-object v5, v0, Lcom/taobao/accs/data/d;->h:Landroid/content/Context;

    iget-object v6, v0, Lcom/taobao/accs/data/d;->k:Lcom/taobao/accs/net/b;

    invoke-static {v5, v6, v4}, Lcom/taobao/accs/data/g;->a(Landroid/content/Context;Lcom/taobao/accs/net/b;Landroid/content/Intent;)V

    .line 655
    iget-object v4, v1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b1

    .line 656
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v16

    const v17, 0x101d1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "commandId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " errorCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " dataId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v4, 0xdd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-string v18, "MsgToBuss0"

    invoke-virtual/range {v16 .. v21}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1commandId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "to_buss"

    invoke-static {v7, v5, v4, v14, v15}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_1b1

    .line 661
    :cond_1a2
    iget-object v5, v0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v11, v4, v3

    iget-object v6, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    aput-object v6, v4, v13

    const-string v6, "onResult message is cancel"

    invoke-static {v5, v6, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    :cond_1b1
    :goto_1b1
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v4

    if-eqz v4, :cond_25b

    .line 667
    invoke-virtual {v4}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onToBizDate()V

    .line 668
    iget-object v5, v1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-nez v5, :cond_1c0

    const/4 v5, 0x0

    goto :goto_1c6

    :cond_1c0
    iget-object v5, v1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    .line 669
    :goto_1c6
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v6

    sget-object v8, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v8

    const-string v9, "Request_Success_Rate"

    const-string v10, "resend"

    if-ne v6, v8, :cond_1fd

    .line 670
    invoke-virtual {v4, v13}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setRet(Z)V

    .line 671
    iget v3, v1, Lcom/taobao/accs/data/Message;->R:I

    if-lez v3, :cond_1f9

    const-string v3, "succ"

    .line 672
    invoke-static {v7, v10, v3, v14, v15}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 673
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "succ_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/taobao/accs/data/Message;->R:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v10, v3, v14, v15}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_250

    .line 675
    :cond_1f9
    invoke-static {v7, v9, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_250

    .line 678
    :cond_1fd
    iget v6, v1, Lcom/taobao/accs/data/Message;->R:I

    if-lez v6, :cond_21b

    .line 679
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail\uff3f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v10, v5, v14, v15}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    const-string v5, "fail"

    .line 680
    invoke-static {v7, v10, v5, v14, v15}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_24a

    .line 682
    :cond_21b
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v6

    sget-object v8, Lcom/taobao/accs/a;->NO_NETWORK:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v8

    if-eq v6, v8, :cond_24a

    .line 684
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v6

    invoke-static {v6}, Lcom/taobao/accs/utl/UtilityImpl;->a(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v0, Lcom/taobao/accs/data/d;->b:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/taobao/accs/data/Message;->S:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 683
    invoke-static {v7, v9, v5, v6, v8}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_24a
    :goto_24a
    invoke-virtual {v4, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setRet(Z)V

    .line 688
    invoke-virtual {v4, v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 691
    :goto_250
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v4

    invoke-interface {v3, v4}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 694
    :cond_25b
    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/data/d;->b(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    return-void

    .line 598
    :cond_25f
    :goto_25f
    iget-object v1, v0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "onError, skip ping/ack"

    invoke-static {v1, v3, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/accs/data/Message;",
            "Lcom/alibaba/sdk/android/error/ErrorCode;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 584
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;Lcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    return-void
.end method

.method public a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V
    .registers 5

    .line 1042
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/data/e;

    invoke-direct {v1, p0, p1}, Lcom/taobao/accs/data/e;-><init>(Lcom/taobao/accs/data/d;Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_18

    :catch_d
    move-exception p1

    .line 1051
    iget-object v0, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "addTrafficsInfo"

    invoke-static {v0, v2, p1, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_18
    return-void
.end method

.method public a([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/taobao/accs/data/d;->a([BLjava/lang/String;)V

    return-void
.end method

.method public a([BLjava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 127
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 128
    iget-object v1, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "host"

    aput-object v4, v3, v2

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "onMessage"

    invoke-static {v1, v4, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :cond_1c
    new-instance v1, Lcom/taobao/accs/utl/h;

    invoke-direct {v1, p1}, Lcom/taobao/accs/utl/h;-><init>([B)V

    .line 132
    :try_start_21
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->a()I

    move-result p1

    and-int/lit16 v3, p1, 0xf0

    shr-int/lit8 v3, v3, 0x4

    .line 134
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 135
    iget-object v4, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_49
    and-int/lit8 p1, p1, 0xf

    .line 138
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 139
    iget-object v4, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compress:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :cond_6b
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->a()I

    .line 142
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->b()I

    move-result v4

    .line 143
    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v5}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 144
    iget-object v5, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "totalLen:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_92
    move v5, v2

    :goto_93
    if-ge v5, v4, :cond_d1

    .line 148
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->b()I

    move-result v6

    add-int/lit8 v5, v5, 0x2

    if-lez v6, :cond_c9

    .line 151
    new-array v6, v6, [B

    .line 152
    invoke-virtual {v1, v6}, Lcom/taobao/accs/utl/h;->read([B)I

    .line 153
    sget-object v7, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v7}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v7

    if-eqz v7, :cond_c3

    .line 154
    iget-object v7, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buf len:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_c3
    array-length v7, v6

    add-int/2addr v5, v7

    .line 157
    invoke-direct {p0, p1, v6, p2, v3}, Lcom/taobao/accs/data/d;->a(I[BLjava/lang/String;I)V

    goto :goto_93

    .line 159
    :cond_c9
    new-instance p1, Ljava/io/IOException;

    const-string p2, "data format error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_d1} :catch_d7
    .catchall {:try_start_21 .. :try_end_d1} :catchall_d5

    .line 166
    :cond_d1
    :goto_d1
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->close()V

    goto :goto_fe

    :catchall_d5
    move-exception p1

    goto :goto_ff

    :catch_d7
    move-exception p1

    :try_start_d8
    const-string p2, "accs"

    const-string v3, "send_fail"

    const-string v4, "1"

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/taobao/accs/data/d;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v3, v0, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object p2, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, v0, p1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_fd
    .catchall {:try_start_d8 .. :try_end_fd} :catchall_d5

    goto :goto_d1

    :goto_fe
    return-void

    .line 166
    :goto_ff
    invoke-virtual {v1}, Lcom/taobao/accs/utl/h;->close()V

    .line 167
    throw p1
.end method

.method public b(Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .registers 5

    .line 839
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 840
    iget-object v0, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcom/taobao/accs/data/Message$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/taobao/accs/data/Message$a;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/accs/data/Message;

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return-object p1
.end method

.method public b()V
    .registers 5

    .line 719
    iget-object v0, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onRcvPing"

    invoke-static {v0, v3, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 720
    const-class v0, Lcom/taobao/accs/data/d;

    monitor-enter v0

    .line 721
    :try_start_d
    iput-boolean v1, p0, Lcom/taobao/accs/data/d;->g:Z

    .line 722
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_11

    throw v1
.end method

.method public b(Lcom/taobao/accs/data/Message;)V
    .registers 9

    .line 778
    iget-object v0, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_a0

    .line 779
    iget-object v0, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/data/Message$a;

    .line 780
    iget-object v2, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/data/Message;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_86

    .line 781
    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v4, :cond_86

    .line 783
    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 784
    iget-object v4, p1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_a2

    goto :goto_86

    .line 801
    :pswitch_4a
    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_5c

    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 802
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_86

    .line 803
    :cond_5c
    iput-boolean v3, v1, Lcom/taobao/accs/data/Message;->e:Z

    goto :goto_86

    .line 794
    :pswitch_5f
    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_71

    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 795
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_86

    .line 796
    :cond_71
    iput-boolean v3, v1, Lcom/taobao/accs/data/Message;->e:Z

    goto :goto_86

    .line 787
    :pswitch_74
    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_84

    iget-object v4, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 788
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_86

    .line 789
    :cond_84
    iput-boolean v3, v1, Lcom/taobao/accs/data/Message;->e:Z

    :cond_86
    :goto_86
    if-eqz v1, :cond_16

    .line 808
    iget-boolean v4, v1, Lcom/taobao/accs/data/Message;->e:Z

    if-eqz v4, :cond_16

    .line 809
    iget-object v4, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "command"

    aput-object v6, v2, v5

    iget-object v1, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    aput-object v1, v2, v3

    const-string v1, "cancelControlMessage"

    invoke-static {v4, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_a0
    return-void

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_74
        :pswitch_74
        :pswitch_5f
        :pswitch_5f
        :pswitch_4a
        :pswitch_4a
    .end packed-switch
.end method

.method public c()Z
    .registers 2

    .line 731
    iget-boolean v0, p0, Lcom/taobao/accs/data/d;->g:Z

    return v0
.end method

.method public d()I
    .registers 2

    .line 822
    iget-object v0, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public e()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation

    .line 826
    iget-object v0, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/taobao/accs/data/Message$a;",
            ">;"
        }
    .end annotation

    .line 830
    iget-object v0, p0, Lcom/taobao/accs/data/d;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/taobao/accs/ut/a/d;
    .registers 2

    .line 972
    iget-object v0, p0, Lcom/taobao/accs/data/d;->i:Lcom/taobao/accs/ut/a/d;

    return-object v0
.end method

.method public h()V
    .registers 5

    .line 1033
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/d;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_15

    :catch_a
    move-exception v0

    .line 1035
    iget-object v1, p0, Lcom/taobao/accs/data/d;->l:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "restoreTraffics"

    invoke-static {v1, v3, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_15
    return-void
.end method
