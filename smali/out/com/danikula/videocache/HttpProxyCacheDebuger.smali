.class public Lcom/danikula/videocache/HttpProxyCacheDebuger;
.super Ljava/lang/Object;
.source "HttpProxyCacheDebuger.java"


# static fields
.field static DEBUG_TAG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "HttpProxyCacheDebuger"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Toast(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .line 75
    sget-boolean v0, Lcom/danikula/videocache/HttpProxyCacheDebuger;->DEBUG_TAG:Z

    if-eqz v0, :cond_12

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    .line 77
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_12
    return-void
.end method

.method public static disable()V
    .registers 1

    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lcom/danikula/videocache/HttpProxyCacheDebuger;->DEBUG_TAG:Z

    return-void
.end method

.method public static enable()V
    .registers 1

    const/4 v0, 0x1

    .line 19
    sput-boolean v0, Lcom/danikula/videocache/HttpProxyCacheDebuger;->DEBUG_TAG:Z

    return-void
.end method

.method public static getDebugMode()Z
    .registers 1

    .line 27
    sget-boolean v0, Lcom/danikula/videocache/HttpProxyCacheDebuger;->DEBUG_TAG:Z

    return v0
.end method

.method public static printfError(Ljava/lang/String;)V
    .registers 2

    .line 53
    sget-boolean v0, Lcom/danikula/videocache/HttpProxyCacheDebuger;->DEBUG_TAG:Z

    if-eqz v0, :cond_f

    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "HttpProxyCacheDebuger"

    .line 55
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public static printfError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 67
    sget-boolean v0, Lcom/danikula/videocache/HttpProxyCacheDebuger;->DEBUG_TAG:Z

    if-eqz v0, :cond_12

    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "HttpProxyCacheDebuger"

    .line 69
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    return-void
.end method

.method public static printfError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 60
    sget-boolean v0, Lcom/danikula/videocache/HttpProxyCacheDebuger;->DEBUG_TAG:Z

    if-eqz v0, :cond_d

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method public static printfLog(Ljava/lang/String;)V
    .registers 2

    const-string v0, "HttpProxyCacheDebuger"

    .line 38
    invoke-static {v0, p0}, Lcom/danikula/videocache/HttpProxyCacheDebuger;->printfLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static printfLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 31
    sget-boolean v0, Lcom/danikula/videocache/HttpProxyCacheDebuger;->DEBUG_TAG:Z

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public static printfWarning(Ljava/lang/String;)V
    .registers 2

    const-string v0, "HttpProxyCacheDebuger"

    .line 49
    invoke-static {v0, p0}, Lcom/danikula/videocache/HttpProxyCacheDebuger;->printfWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static printfWarning(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 42
    sget-boolean v0, Lcom/danikula/videocache/HttpProxyCacheDebuger;->DEBUG_TAG:Z

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method
