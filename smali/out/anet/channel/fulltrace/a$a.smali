.class Lanet/channel/fulltrace/a$a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/fulltrace/IFullTraceAnalysis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/fulltrace/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lanet/channel/fulltrace/IFullTraceAnalysis;


# direct methods
.method constructor <init>(Lanet/channel/fulltrace/IFullTraceAnalysis;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lanet/channel/fulltrace/a$a;->a:Lanet/channel/fulltrace/IFullTraceAnalysis;

    const/4 p1, 0x1

    .line 28
    invoke-static {p1}, Lanet/channel/fulltrace/a;->a(Z)Z

    return-void
.end method


# virtual methods
.method public commitRequest(Ljava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    .registers 6

    .line 52
    invoke-static {}, Lanet/channel/fulltrace/a;->b()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 55
    :cond_7
    iget-object v0, p0, Lanet/channel/fulltrace/a$a;->a:Lanet/channel/fulltrace/IFullTraceAnalysis;

    if-eqz v0, :cond_1e

    .line 57
    :try_start_b
    invoke-interface {v0, p1, p2}, Lanet/channel/fulltrace/IFullTraceAnalysis;->commitRequest(Ljava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_1e

    :catch_f
    move-exception p1

    const/4 p2, 0x0

    .line 59
    invoke-static {p2}, Lanet/channel/fulltrace/a;->a(Z)Z

    const/4 v0, 0x0

    .line 60
    new-array p2, p2, [Ljava/lang/Object;

    const-string v1, "anet.AnalysisFactory"

    const-string v2, "fulltrace commit fail."

    invoke-static {v1, v2, v0, p1, p2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public createRequest()Ljava/lang/String;
    .registers 6

    .line 33
    invoke-static {}, Lanet/channel/fulltrace/a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 37
    :cond_8
    iget-object v0, p0, Lanet/channel/fulltrace/a$a;->a:Lanet/channel/fulltrace/IFullTraceAnalysis;

    if-eqz v0, :cond_1f

    .line 40
    :try_start_c
    invoke-interface {v0}, Lanet/channel/fulltrace/IFullTraceAnalysis;->createRequest()Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_10} :catch_11

    goto :goto_1f

    :catch_11
    move-exception v0

    const/4 v2, 0x0

    .line 42
    invoke-static {v2}, Lanet/channel/fulltrace/a;->a(Z)Z

    .line 43
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "anet.AnalysisFactory"

    const-string v4, "createRequest fail."

    invoke-static {v3, v4, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1f
    :goto_1f
    return-object v1
.end method

.method public getSceneInfo()Lanet/channel/fulltrace/b;
    .registers 6

    .line 67
    invoke-static {}, Lanet/channel/fulltrace/a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 70
    :cond_8
    iget-object v0, p0, Lanet/channel/fulltrace/a$a;->a:Lanet/channel/fulltrace/IFullTraceAnalysis;

    if-eqz v0, :cond_1f

    .line 73
    :try_start_c
    invoke-interface {v0}, Lanet/channel/fulltrace/IFullTraceAnalysis;->getSceneInfo()Lanet/channel/fulltrace/b;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_10} :catch_11

    goto :goto_1f

    :catch_11
    move-exception v0

    const/4 v2, 0x0

    .line 75
    invoke-static {v2}, Lanet/channel/fulltrace/a;->a(Z)Z

    .line 76
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "anet.AnalysisFactory"

    const-string v4, "getSceneInfo fail"

    invoke-static {v3, v4, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1f
    :goto_1f
    return-object v1
.end method
