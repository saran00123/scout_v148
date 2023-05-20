.class public abstract Lcom/vivo/push/c/o;
.super Lcom/vivo/push/e;
.source "OnReceiveTask.java"


# instance fields
.field protected c:Lcom/vivo/push/sdk/PushMessageCallback;


# direct methods
.method constructor <init>(Lcom/vivo/push/g;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/vivo/push/e;-><init>(Lcom/vivo/push/g;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vivo/push/sdk/PushMessageCallback;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/vivo/push/c/o;->c:Lcom/vivo/push/sdk/PushMessageCallback;

    return-void
.end method

.method public final a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const-string/jumbo v0, "vertify fail srcDigest is "

    .line 33
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/push/d;->c()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "OnVerifyCallBackCommand"

    if-nez v1, :cond_17

    const-string/jumbo p1, "vertify is not support , vertify is ignore"

    .line 34
    invoke-static {v3, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_17
    const/4 v1, 0x0

    if-nez p1, :cond_21

    const-string/jumbo p1, "vertify key is null"

    .line 39
    invoke-static {v3, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 42
    :cond_21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string p1, "contentTag is null"

    .line 43
    invoke-static {v3, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 46
    :cond_2d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_92

    .line 48
    :try_start_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "UTF-8"

    .line 49
    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {p3, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p3

    invoke-static {v4, p1, p3}, Lcom/vivo/push/util/s;->a([BLjava/security/PublicKey;[B)Z

    move-result p1

    if-eqz p1, :cond_66

    const-string/jumbo p1, "vertify id is success"

    .line 50
    invoke-static {v3, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 53
    :cond_66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p1, p0, Lcom/vivo/push/c/o;->a:Landroid/content/Context;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/vivo/push/util/n;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_86} :catch_87

    return v1

    :catch_87
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo p1, "vertify exception"

    .line 59
    invoke-static {v3, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_92
    const-string/jumbo p1, "vertify id is null"

    .line 63
    invoke-static {v3, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
