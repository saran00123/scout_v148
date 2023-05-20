.class public Lcom/taobao/accs/ut/a/d;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "receiveMessage"

    .line 13
    iput-object v0, p0, Lcom/taobao/accs/ut/a/d;->j:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/taobao/accs/ut/a/d;->h:Z

    .line 33
    iput-boolean v0, p0, Lcom/taobao/accs/ut/a/d;->k:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 12

    .line 37
    iget-boolean v0, p0, Lcom/taobao/accs/ut/a/d;->k:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/taobao/accs/ut/a/d;->k:Z

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    .line 46
    :try_start_e
    iget-object v9, p0, Lcom/taobao/accs/ut/a/d;->a:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_10} :catch_72

    const/16 v1, 0xdd

    .line 47
    :try_start_12
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_16} :catch_6f

    :try_start_16
    const-string v1, "device_id"

    .line 48
    iget-object v2, p0, Lcom/taobao/accs/ut/a/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data_id"

    .line 49
    iget-object v2, p0, Lcom/taobao/accs/ut/a/d;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "receive_date"

    .line 50
    iget-object v2, p0, Lcom/taobao/accs/ut/a/d;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "to_bz_date"

    .line 51
    iget-object v2, p0, Lcom/taobao/accs/ut/a/d;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "service_id"

    .line 52
    iget-object v2, p0, Lcom/taobao/accs/ut/a/d;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data_length"

    .line 53
    iget-object v2, p0, Lcom/taobao/accs/ut/a/d;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msg_type"

    .line 54
    iget-object v2, p0, Lcom/taobao/accs/ut/a/d;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "repeat"

    .line 55
    iget-boolean v2, p0, Lcom/taobao/accs/ut/a/d;->h:Z

    if-eqz v2, :cond_50

    const-string v2, "y"

    goto :goto_52

    :cond_50
    const-string v2, "n"

    :goto_52
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "user_id"

    .line 56
    iget-object v2, p0, Lcom/taobao/accs/ut/a/d;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v1

    const v2, 0x101d1

    const-string v3, "receiveMessage"

    const/4 v5, 0x0

    move-object v4, v9

    move-object v6, v10

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_6c} :catch_6d

    goto :goto_9c

    :catch_6d
    move-exception v1

    goto :goto_75

    :catch_6f
    move-exception v1

    move-object v10, v8

    goto :goto_75

    :catch_72
    move-exception v1

    move-object v9, v8

    move-object v10, v9

    .line 64
    :goto_75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x101d1

    invoke-static {v3, v9, v8, v10, v0}, Lcom/taobao/accs/utl/UTMini;->getCommitInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ReceiveMessage"

    .line 64
    invoke-static {v2, v0, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_9c
    return-void
.end method
