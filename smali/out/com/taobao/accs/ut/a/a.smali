.class public Lcom/taobao/accs/ut/a/a;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BindApp"

    .line 14
    iput-object v0, p0, Lcom/taobao/accs/ut/a/a;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/taobao/accs/ut/a/a;->f:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 13

    .line 45
    iget-boolean v0, p0, Lcom/taobao/accs/ut/a/a;->f:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/taobao/accs/ut/a/a;->f:Z

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    .line 54
    :try_start_e
    iget-object v9, p0, Lcom/taobao/accs/ut/a/a;->a:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_10} :catch_55

    const/16 v1, 0xdd

    .line 55
    :try_start_12
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_16} :catch_52

    :try_start_16
    const-string v1, "device_id"

    .line 56
    iget-object v2, p0, Lcom/taobao/accs/ut/a/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bind_date"

    .line 57
    iget-object v2, p0, Lcom/taobao/accs/ut/a/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ret"

    .line 58
    iget-boolean v2, p0, Lcom/taobao/accs/ut/a/a;->c:Z

    if-eqz v2, :cond_2d

    const-string v2, "y"

    goto :goto_2f

    :cond_2d
    const-string v2, "n"

    :goto_2f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fail_reasons"

    .line 59
    iget-object v2, p0, Lcom/taobao/accs/ut/a/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "push_token"

    const-string v2, ""

    .line 60
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v1

    const v2, 0x101d1

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, v9

    move-object v6, v10

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_4f} :catch_50

    goto :goto_7f

    :catch_50
    move-exception p1

    goto :goto_58

    :catch_52
    move-exception p1

    move-object v10, v8

    goto :goto_58

    :catch_55
    move-exception p1

    move-object v9, v8

    move-object v10, v9

    .line 63
    :goto_58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x101d1

    invoke-static {v2, v9, v8, v10, v0}, Lcom/taobao/accs/utl/UTMini;->getCommitInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BindAppStatistic"

    .line 63
    invoke-static {v1, p1, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_7f
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const-string v0, "BindApp"

    .line 39
    invoke-direct {p0, v0}, Lcom/taobao/accs/ut/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/error/ErrorCode;)V
    .registers 4

    .line 32
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v1, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 33
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/accs/ut/a/a;->a(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/taobao/accs/ut/a/a;->d:Ljava/lang/String;

    return-void
.end method
