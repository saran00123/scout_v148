.class public Lcom/alibaba/sdk/android/push/g/h;
.super Lcom/alibaba/sdk/android/push/common/util/a/c;


# static fields
.field private static c:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;


# instance fields
.field private d:Lcom/alibaba/sdk/android/push/CommonCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "MPS:VipRequestTask"

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getLogger(Ljava/lang/String;)Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/g/h;->c:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/push/common/util/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/alibaba/sdk/android/push/g/h;->d:Lcom/alibaba/sdk/android/push/CommonCallback;

    return-void
.end method

.method private a(ILcom/alibaba/sdk/android/push/common/util/a/b;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 7

    if-nez p3, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/alibaba/sdk/android/push/g/h;->c:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/alibaba/sdk/android/push/common/util/a/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/alibaba/sdk/android/push/common/util/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    iget v0, p2, Lcom/alibaba/sdk/android/push/common/util/a/b;->b:I

    iget-object p2, p2, Lcom/alibaba/sdk/android/push/common/util/a/b;->a:Ljava/lang/String;

    :try_start_31
    invoke-static {p1, v0, p2}, Lcom/alibaba/sdk/android/push/g/i;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_5d

    invoke-interface {p3, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_3a
    .catch Lcom/alibaba/sdk/android/push/b/e; {:try_start_31 .. :try_end_3a} :catch_44
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_3a} :catch_3b

    goto :goto_5d

    :catch_3b
    move-exception p1

    sget-object p2, Lcom/alibaba/sdk/android/push/g/h;->c:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p3, "Vip call faled."

    invoke-virtual {p2, p3, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5d

    :catch_44
    move-exception p1

    sget-object p2, Lcom/alibaba/sdk/android/push/g/h;->c:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "Vip call failed"

    invoke-virtual {p2, v0, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p3, :cond_5d

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/e;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/e;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/alibaba/sdk/android/ams/common/util/c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/alibaba/sdk/android/push/common/util/a/b;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/alibaba/sdk/android/push/common/util/a/c;->a(Lcom/alibaba/sdk/android/push/common/util/a/b;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/g/h;->a()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/push/g/h;->d:Lcom/alibaba/sdk/android/push/CommonCallback;

    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/sdk/android/push/g/h;->a(ILcom/alibaba/sdk/android/push/common/util/a/b;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/alibaba/sdk/android/push/common/util/a/b;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/push/g/h;->a(Lcom/alibaba/sdk/android/push/common/util/a/b;)V

    return-void
.end method
