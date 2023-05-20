.class public Lcom/huawei/updatesdk/a/b/c/b;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/huawei/updatesdk/a/b/c/c/c;",
        "Ljava/lang/Void;",
        "Lcom/huawei/updatesdk/a/b/c/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/huawei/updatesdk/a/b/c/c/c;

.field private b:Lcom/huawei/updatesdk/a/b/c/c/d;

.field private c:Lcom/huawei/updatesdk/a/b/c/c/a;

.field private d:Lcom/huawei/updatesdk/a/a/b/b;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/huawei/updatesdk/a/b/c/c/c;Lcom/huawei/updatesdk/a/b/c/c/a;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/updatesdk/a/b/c/b;->a:Lcom/huawei/updatesdk/a/b/c/c/c;

    iput-object v0, p0, Lcom/huawei/updatesdk/a/b/c/b;->b:Lcom/huawei/updatesdk/a/b/c/c/d;

    iput-object v0, p0, Lcom/huawei/updatesdk/a/b/c/b;->c:Lcom/huawei/updatesdk/a/b/c/c/a;

    iput-object v0, p0, Lcom/huawei/updatesdk/a/b/c/b;->d:Lcom/huawei/updatesdk/a/a/b/b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/updatesdk/a/b/c/b;->e:I

    iput-object p1, p0, Lcom/huawei/updatesdk/a/b/c/b;->a:Lcom/huawei/updatesdk/a/b/c/c/c;

    iput-object p2, p0, Lcom/huawei/updatesdk/a/b/c/b;->c:Lcom/huawei/updatesdk/a/b/c/c/a;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/huawei/updatesdk/a/b/c/c/d;)Lcom/huawei/updatesdk/a/b/c/c/d;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/huawei/updatesdk/a/b/c/c/b;->fromJson(Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/huawei/updatesdk/a/b/c/c/d;->b(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception p1

    const-string v0, "StoreTask"

    const-string v1, "parse json error"

    invoke-static {v0, v1, p1}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    return-object p2
.end method

.method private a(Lcom/huawei/updatesdk/a/b/c/c/d;ILcom/huawei/updatesdk/a/b/c/c/d$a;Ljava/lang/Throwable;)V
    .registers 5

    if-eqz p1, :cond_f

    invoke-virtual {p1, p2}, Lcom/huawei/updatesdk/a/b/c/c/d;->b(I)V

    invoke-virtual {p1, p3}, Lcom/huawei/updatesdk/a/b/c/c/d;->a(Lcom/huawei/updatesdk/a/b/c/c/d$a;)V

    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huawei/updatesdk/a/b/c/c/d;->a(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method private a(Lcom/huawei/updatesdk/a/b/c/c/d;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6

    instance-of v0, p2, Ljava/net/ConnectException;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    sget-object v0, Lcom/huawei/updatesdk/a/b/c/c/d$a;->f:Lcom/huawei/updatesdk/a/b/c/c/d$a;

    :goto_7
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/huawei/updatesdk/a/b/c/b;->a(Lcom/huawei/updatesdk/a/b/c/c/d;ILcom/huawei/updatesdk/a/b/c/c/d$a;Ljava/lang/Throwable;)V

    goto :goto_56

    :cond_b
    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_10

    goto :goto_14

    :cond_10
    instance-of v0, p2, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_18

    :goto_14
    sget-object v0, Lcom/huawei/updatesdk/a/b/c/c/d$a;->f:Lcom/huawei/updatesdk/a/b/c/c/d$a;

    const/4 v1, 0x2

    goto :goto_7

    :cond_18
    instance-of v0, p2, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_20

    sget-object v0, Lcom/huawei/updatesdk/a/b/c/c/d$a;->d:Lcom/huawei/updatesdk/a/b/c/c/d$a;

    const/4 v1, 0x5

    goto :goto_7

    :cond_20
    instance-of v0, p2, Ljava/lang/IllegalAccessException;

    if-eqz v0, :cond_27

    sget-object v0, Lcom/huawei/updatesdk/a/b/c/c/d$a;->g:Lcom/huawei/updatesdk/a/b/c/c/d$a;

    goto :goto_7

    :cond_27
    instance-of v0, p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/huawei/updatesdk/a/b/c/c/d$a;->h:Lcom/huawei/updatesdk/a/b/c/c/d$a;

    const/4 v1, 0x6

    goto :goto_7

    :cond_2f
    instance-of v0, p2, Ljava/lang/InterruptedException;

    if-nez v0, :cond_49

    instance-of v0, p2, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_38

    goto :goto_49

    :cond_38
    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/huawei/updatesdk/a/b/c/c/d$a;->e:Lcom/huawei/updatesdk/a/b/c/c/d$a;

    goto :goto_7

    :cond_3f
    if-eqz p1, :cond_56

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/updatesdk/a/b/c/c/d;->a(Ljava/lang/String;)V

    goto :goto_56

    :cond_49
    :goto_49
    sget-object v0, Lcom/huawei/updatesdk/a/b/c/c/d$a;->a:Lcom/huawei/updatesdk/a/b/c/c/d$a;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/huawei/updatesdk/a/b/c/b;->a(Lcom/huawei/updatesdk/a/b/c/c/d;ILcom/huawei/updatesdk/a/b/c/c/d$a;Ljava/lang/Throwable;)V

    const-string p1, "StoreTask"

    const-string v0, "UpdateSDK task is canceled"

    invoke-static {p1, v0}, Lcom/huawei/updatesdk/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    :goto_56
    invoke-direct {p0, p3, p2}, Lcom/huawei/updatesdk/a/b/c/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invoke store error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exceptionType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", method:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/huawei/updatesdk/a/b/c/b;->a:Lcom/huawei/updatesdk/a/b/c/c/c;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/c/c/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", retryTimes:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/updatesdk/a/b/c/b;->e:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StoreTask"

    invoke-static {v0, p1, p2}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateSDK call store error: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/updatesdk/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Lcom/huawei/updatesdk/a/a/d/g;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method private b(Lcom/huawei/updatesdk/a/b/c/c/d;)V
    .registers 6

    const-string v0, "notifyResult, create response error, method:"

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_5a

    iget-object v1, p0, Lcom/huawei/updatesdk/a/b/c/b;->c:Lcom/huawei/updatesdk/a/b/c/c/a;

    if-eqz v1, :cond_5a

    if-nez p1, :cond_53

    const-string v1, "StoreTask"

    const-string v2, "notifyResult, response is null"

    invoke-static {v1, v2}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_15
    iget-object v2, p0, Lcom/huawei/updatesdk/a/b/c/b;->a:Lcom/huawei/updatesdk/a/b/c/c/c;

    invoke-virtual {v2}, Lcom/huawei/updatesdk/a/b/c/c/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/updatesdk/a/b/c/a;->a(Ljava/lang/String;)Lcom/huawei/updatesdk/a/b/c/c/d;

    move-result-object p1
    :try_end_1f
    .catch Ljava/lang/InstantiationException; {:try_start_15 .. :try_end_1f} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_40

    :catch_20
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2d

    :catch_27
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/c/b;->a:Lcom/huawei/updatesdk/a/b/c/c/c;

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/b/c/c/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_40
    if-nez p1, :cond_4a

    new-instance p1, Lcom/huawei/updatesdk/a/b/c/c/d;

    invoke-direct {p1}, Lcom/huawei/updatesdk/a/b/c/c/d;-><init>()V

    sget-object v0, Lcom/huawei/updatesdk/a/b/c/c/d$a;->d:Lcom/huawei/updatesdk/a/b/c/c/d$a;

    goto :goto_4c

    :cond_4a
    sget-object v0, Lcom/huawei/updatesdk/a/b/c/c/d$a;->g:Lcom/huawei/updatesdk/a/b/c/c/d$a;

    :goto_4c
    invoke-virtual {p1, v0}, Lcom/huawei/updatesdk/a/b/c/c/d;->a(Lcom/huawei/updatesdk/a/b/c/c/d$a;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/huawei/updatesdk/a/b/c/c/d;->b(I)V

    :cond_53
    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/c/b;->c:Lcom/huawei/updatesdk/a/b/c/c/a;

    iget-object v1, p0, Lcom/huawei/updatesdk/a/b/c/b;->a:Lcom/huawei/updatesdk/a/b/c/c/c;

    invoke-interface {v0, v1, p1}, Lcom/huawei/updatesdk/a/b/c/c/a;->b(Lcom/huawei/updatesdk/a/b/c/c/c;Lcom/huawei/updatesdk/a/b/c/c/d;)V

    :cond_5a
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "StoreTask"

    if-eqz p1, :cond_b

    const-string p1, "UpdateSDK response error, resData == null"

    goto :goto_d

    :cond_b
    const-string p1, "UpdateSDK response error, resData is not json string"

    :goto_d
    invoke-static {v0, p1}, Lcom/huawei/updatesdk/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/huawei/updatesdk/a/b/c/c/d;)Z
    .registers 8

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/c/c/d;->d()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_17

    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/c/c/d;->d()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_17

    return v1

    :cond_17
    iget v0, p0, Lcom/huawei/updatesdk/a/b/c/b;->e:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/huawei/updatesdk/a/b/c/b;->e:I

    const/4 v3, 0x3

    const-string v4, "StoreTask"

    const-string v5, ",response.responseCode = "

    if-lt v0, v3, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry completed total times = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/updatesdk/a/b/c/b;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/c/c/d;->d()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retry times = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/updatesdk/a/b/c/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/updatesdk/a/b/c/c/d;->d()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private d()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/huawei/updatesdk/b/g/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "Android/1.0"

    :cond_c
    return-object v0
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/c/b;->b:Lcom/huawei/updatesdk/a/b/c/c/d;

    invoke-direct {p0, v0}, Lcom/huawei/updatesdk/a/b/c/b;->b(Lcom/huawei/updatesdk/a/b/c/c/d;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/huawei/updatesdk/a/b/c/c/d;
    .registers 14

    const-string v0, ", body:"

    const-string v1, ", url:"

    const-string v2, "StoreTask"

    const/4 v3, 0x5

    const/4 v4, 0x0

    :try_start_8
    iget-object v5, p0, Lcom/huawei/updatesdk/a/b/c/b;->a:Lcom/huawei/updatesdk/a/b/c/c/c;

    invoke-virtual {v5}, Lcom/huawei/updatesdk/a/b/c/c/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/updatesdk/a/b/c/a;->a(Ljava/lang/String;)Lcom/huawei/updatesdk/a/b/c/c/d;

    move-result-object v5
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_f6

    :try_start_12
    invoke-static {}, Lcom/huawei/updatesdk/a/b/a/a;->c()Lcom/huawei/updatesdk/a/b/a/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/updatesdk/a/b/a/a;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/updatesdk/a/a/d/i/a;->d(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2b

    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/huawei/updatesdk/a/b/c/c/d;->b(I)V

    sget-object v0, Lcom/huawei/updatesdk/a/b/c/c/d$a;->b:Lcom/huawei/updatesdk/a/b/c/c/d$a;

    invoke-virtual {v5, v0}, Lcom/huawei/updatesdk/a/b/c/c/d;->a(Lcom/huawei/updatesdk/a/b/c/c/d$a;)V

    goto/16 :goto_fb

    :cond_2b
    iget-object v6, p0, Lcom/huawei/updatesdk/a/b/c/b;->a:Lcom/huawei/updatesdk/a/b/c/c/c;

    invoke-virtual {v6}, Lcom/huawei/updatesdk/a/b/c/c/c;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/updatesdk/a/b/c/b;->a:Lcom/huawei/updatesdk/a/b/c/c/c;

    invoke-virtual {v7}, Lcom/huawei/updatesdk/a/b/c/c/c;->d()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callStore, method:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/huawei/updatesdk/a/b/c/b;->a:Lcom/huawei/updatesdk/a/b/c/c/c;

    invoke-virtual {v8}, Lcom/huawei/updatesdk/a/b/c/c/c;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/huawei/updatesdk/a/a/b/b;

    invoke-direct {v7}, Lcom/huawei/updatesdk/a/a/b/b;-><init>()V

    iput-object v7, p0, Lcom/huawei/updatesdk/a/b/c/b;->d:Lcom/huawei/updatesdk/a/a/b/b;

    iget-object v7, p0, Lcom/huawei/updatesdk/a/b/c/b;->d:Lcom/huawei/updatesdk/a/a/b/b;
    :try_end_66
    .catchall {:try_start_12 .. :try_end_66} :catchall_f4

    const-string v10, "UTF-8"

    :try_start_68
    invoke-direct {p0}, Lcom/huawei/updatesdk/a/b/c/b;->d()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/huawei/updatesdk/a/b/a/a;->c()Lcom/huawei/updatesdk/a/b/a/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/updatesdk/a/b/a/a;->a()Landroid/content/Context;

    move-result-object v12

    move-object v8, v4

    move-object v9, v6

    invoke-virtual/range {v7 .. v12}, Lcom/huawei/updatesdk/a/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/huawei/updatesdk/a/a/b/b$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/updatesdk/a/a/b/b$a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/huawei/updatesdk/a/a/b/b$a;->a()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/huawei/updatesdk/a/b/c/c/d;->a(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UpdateSDK call store responsecode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/huawei/updatesdk/a/b/c/c/d;->b()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/huawei/updatesdk/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/huawei/updatesdk/a/a/b/b$a;->a()I

    move-result v7

    div-int/lit8 v7, v7, 0x64

    if-ne v7, v3, :cond_aa

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/huawei/updatesdk/a/b/c/c/d;->b(I)V

    return-object v5

    :cond_aa
    invoke-direct {p0, v8}, Lcom/huawei/updatesdk/a/b/c/b;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bd

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/huawei/updatesdk/a/b/c/c/d;->b(I)V

    sget-object v0, Lcom/huawei/updatesdk/a/b/c/c/d$a;->c:Lcom/huawei/updatesdk/a/b/c/c/d$a;

    invoke-virtual {v5, v0}, Lcom/huawei/updatesdk/a/b/c/c/d;->a(Lcom/huawei/updatesdk/a/b/c/c/d$a;)V

    invoke-direct {p0, v8}, Lcom/huawei/updatesdk/a/b/c/b;->b(Ljava/lang/String;)V

    goto :goto_fb

    :cond_bd
    invoke-direct {p0, v8, v5}, Lcom/huawei/updatesdk/a/b/c/b;->a(Ljava/lang/String;Lcom/huawei/updatesdk/a/b/c/c/d;)Lcom/huawei/updatesdk/a/b/c/c/d;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callStore response, method:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/huawei/updatesdk/a/b/c/b;->a:Lcom/huawei/updatesdk/a/b/c/c/c;

    invoke-virtual {v8}, Lcom/huawei/updatesdk/a/b/c/c/c;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Receive Json msg:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/huawei/updatesdk/a/b/c/c/b;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_68 .. :try_end_f3} :catchall_f4

    goto :goto_fb

    :catchall_f4
    move-exception v0

    goto :goto_f8

    :catchall_f6
    move-exception v0

    move-object v5, v4

    :goto_f8
    invoke-direct {p0, v5, v0, v4}, Lcom/huawei/updatesdk/a/b/c/b;->a(Lcom/huawei/updatesdk/a/b/c/c/d;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_fb
    if-nez v5, :cond_10a

    new-instance v5, Lcom/huawei/updatesdk/a/b/c/c/d;

    invoke-direct {v5}, Lcom/huawei/updatesdk/a/b/c/c/d;-><init>()V

    invoke-virtual {v5, v3}, Lcom/huawei/updatesdk/a/b/c/c/d;->b(I)V

    sget-object v0, Lcom/huawei/updatesdk/a/b/c/c/d$a;->d:Lcom/huawei/updatesdk/a/b/c/c/d$a;

    invoke-virtual {v5, v0}, Lcom/huawei/updatesdk/a/b/c/c/d;->a(Lcom/huawei/updatesdk/a/b/c/c/d$a;)V

    :cond_10a
    return-object v5
.end method

.method protected varargs a([Lcom/huawei/updatesdk/a/b/c/c/c;)Lcom/huawei/updatesdk/a/b/c/c/d;
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doInBackground, method:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/c/b;->a:Lcom/huawei/updatesdk/a/b/c/c/c;

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/b/c/c/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StoreTask"

    invoke-static {v0, p1}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/huawei/updatesdk/b/g/b;->a(Landroid/os/AsyncTask;)V

    invoke-virtual {p0}, Lcom/huawei/updatesdk/a/b/c/b;->c()Lcom/huawei/updatesdk/a/b/c/c/d;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/c/b;->c:Lcom/huawei/updatesdk/a/b/c/c/a;

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/huawei/updatesdk/a/b/c/b;->a:Lcom/huawei/updatesdk/a/b/c/c/c;

    invoke-interface {v0, v1, p1}, Lcom/huawei/updatesdk/a/b/c/c/a;->a(Lcom/huawei/updatesdk/a/b/c/c/c;Lcom/huawei/updatesdk/a/b/c/c/d;)V

    :cond_2c
    return-object p1
.end method

.method protected a(Lcom/huawei/updatesdk/a/b/c/c/d;)V
    .registers 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPostExecute, method:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/c/b;->a:Lcom/huawei/updatesdk/a/b/c/c/c;

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/b/c/c/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StoreTask"

    invoke-static {v0, p1}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/updatesdk/b/g/b;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/huawei/updatesdk/a/b/c/b;->e()V

    return-void
.end method

.method public final a(Ljava/util/concurrent/Executor;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/huawei/updatesdk/a/b/c/c/c;

    iget-object v1, p0, Lcom/huawei/updatesdk/a/b/c/b;->a:Lcom/huawei/updatesdk/a/b/c/c/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/c/b;->d:Lcom/huawei/updatesdk/a/a/b/b;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/a/b/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/updatesdk/a/b/c/b;->d:Lcom/huawei/updatesdk/a/a/b/b;

    :cond_a
    return-void
.end method

.method public final c()Lcom/huawei/updatesdk/a/b/c/c/d;
    .registers 4

    const/4 v0, 0x0

    :cond_1
    iget v1, p0, Lcom/huawei/updatesdk/a/b/c/b;->e:I

    if-lez v1, :cond_2b

    if-eqz v0, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call store error! responseCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/huawei/updatesdk/a/b/c/c/d;->d()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", retryTimes:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/huawei/updatesdk/a/b/c/b;->e:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StoreTask"

    invoke-static {v1, v0}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    invoke-virtual {p0}, Lcom/huawei/updatesdk/a/b/c/b;->a()Lcom/huawei/updatesdk/a/b/c/c/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/updatesdk/a/b/c/b;->c(Lcom/huawei/updatesdk/a/b/c/c/d;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/huawei/updatesdk/a/b/c/b;->b:Lcom/huawei/updatesdk/a/b/c/c/d;

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/c/b;->b:Lcom/huawei/updatesdk/a/b/c/c/d;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Lcom/huawei/updatesdk/a/b/c/c/c;

    invoke-virtual {p0, p1}, Lcom/huawei/updatesdk/a/b/c/b;->a([Lcom/huawei/updatesdk/a/b/c/c/c;)Lcom/huawei/updatesdk/a/b/c/c/d;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/huawei/updatesdk/a/b/c/c/d;

    invoke-virtual {p0, p1}, Lcom/huawei/updatesdk/a/b/c/b;->a(Lcom/huawei/updatesdk/a/b/c/c/d;)V

    return-void
.end method
