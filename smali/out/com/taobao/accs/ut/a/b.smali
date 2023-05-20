.class public Lcom/taobao/accs/ut/a/b;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BindUser"

    .line 14
    iput-object v0, p0, Lcom/taobao/accs/ut/a/b;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/taobao/accs/ut/a/b;->g:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 16

    const-string v0, "accs.BindUserStatistic"

    .line 46
    iget-boolean v1, p0, Lcom/taobao/accs/ut/a/b;->g:Z

    if-eqz v1, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lcom/taobao/accs/ut/a/b;->g:Z

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x0

    const v10, 0x101d1

    const/4 v11, 0x0

    .line 56
    :try_start_14
    iget-object v12, p0, Lcom/taobao/accs/ut/a/b;->a:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_16} :catch_6c

    const/16 v2, 0xdd

    .line 57
    :try_start_18
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1c} :catch_69

    :try_start_1c
    const-string v2, "device_id"

    .line 58
    iget-object v3, p0, Lcom/taobao/accs/ut/a/b;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bind_date"

    .line 59
    iget-object v3, p0, Lcom/taobao/accs/ut/a/b;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ret"

    .line 60
    iget-boolean v3, p0, Lcom/taobao/accs/ut/a/b;->c:Z

    if-eqz v3, :cond_33

    const-string v3, "y"

    goto :goto_35

    :cond_33
    const-string v3, "n"

    :goto_35
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fail_reasons"

    .line 61
    iget-object v3, p0, Lcom/taobao/accs/ut/a/b;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "user_id"

    .line 62
    iget-object v3, p0, Lcom/taobao/accs/ut/a/b;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 64
    invoke-static {v10, v12, v11, v13, v1}, Lcom/taobao/accs/utl/UTMini;->getCommitInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_57
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v2

    const v3, 0x101d1

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, v12

    move-object v7, v13

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_66} :catch_67

    goto :goto_90

    :catch_67
    move-exception p1

    goto :goto_6f

    :catch_69
    move-exception p1

    move-object v13, v11

    goto :goto_6f

    :catch_6c
    move-exception p1

    move-object v12, v11

    move-object v13, v12

    .line 70
    :goto_6f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v12, v11, v13, v1}, Lcom/taobao/accs/utl/UTMini;->getCommitInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v9, [Ljava/lang/Object;

    .line 70
    invoke-static {v0, p1, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_90
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const-string v0, "BindUser"

    .line 41
    invoke-direct {p0, v0}, Lcom/taobao/accs/ut/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/error/ErrorCode;)V
    .registers 4

    .line 34
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v1, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 35
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/accs/ut/a/b;->a(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/taobao/accs/ut/a/b;->d:Ljava/lang/String;

    return-void
.end method
