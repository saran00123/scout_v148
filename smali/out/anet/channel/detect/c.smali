.class Lanet/channel/detect/c;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/statist/RequestStatistic;

.field final synthetic b:Lanet/channel/detect/ExceptionDetector;


# direct methods
.method constructor <init>(Lanet/channel/detect/ExceptionDetector;Lanet/channel/statist/RequestStatistic;)V
    .registers 3

    .line 81
    iput-object p1, p0, Lanet/channel/detect/c;->b:Lanet/channel/detect/ExceptionDetector;

    iput-object p2, p0, Lanet/channel/detect/c;->a:Lanet/channel/statist/RequestStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 85
    :try_start_0
    iget-object v0, p0, Lanet/channel/detect/c;->a:Lanet/channel/statist/RequestStatistic;

    if-nez v0, :cond_5

    return-void

    .line 89
    :cond_5
    iget-object v0, p0, Lanet/channel/detect/c;->a:Lanet/channel/statist/RequestStatistic;

    iget-object v0, v0, Lanet/channel/statist/RequestStatistic;->ip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lanet/channel/detect/c;->a:Lanet/channel/statist/RequestStatistic;

    iget v0, v0, Lanet/channel/statist/RequestStatistic;->ret:I

    if-nez v0, :cond_53

    const-string v0, "guide-acs.m.taobao.com"

    .line 90
    iget-object v1, p0, Lanet/channel/detect/c;->a:Lanet/channel/statist/RequestStatistic;

    iget-object v1, v1, Lanet/channel/statist/RequestStatistic;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 91
    iget-object v0, p0, Lanet/channel/detect/c;->b:Lanet/channel/detect/ExceptionDetector;

    iget-object v1, p0, Lanet/channel/detect/c;->a:Lanet/channel/statist/RequestStatistic;

    iget-object v1, v1, Lanet/channel/statist/RequestStatistic;->ip:Ljava/lang/String;

    .line 1038
    iput-object v1, v0, Lanet/channel/detect/ExceptionDetector;->b:Ljava/lang/String;

    goto :goto_53

    :cond_2a
    const-string v0, "msgacs.m.taobao.com"

    .line 92
    iget-object v1, p0, Lanet/channel/detect/c;->a:Lanet/channel/statist/RequestStatistic;

    iget-object v1, v1, Lanet/channel/statist/RequestStatistic;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 93
    iget-object v0, p0, Lanet/channel/detect/c;->b:Lanet/channel/detect/ExceptionDetector;

    iget-object v1, p0, Lanet/channel/detect/c;->a:Lanet/channel/statist/RequestStatistic;

    iget-object v1, v1, Lanet/channel/statist/RequestStatistic;->ip:Ljava/lang/String;

    .line 2038
    iput-object v1, v0, Lanet/channel/detect/ExceptionDetector;->c:Ljava/lang/String;

    goto :goto_53

    :cond_3f
    const-string v0, "gw.alicdn.com"

    .line 94
    iget-object v1, p0, Lanet/channel/detect/c;->a:Lanet/channel/statist/RequestStatistic;

    iget-object v1, v1, Lanet/channel/statist/RequestStatistic;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 95
    iget-object v0, p0, Lanet/channel/detect/c;->b:Lanet/channel/detect/ExceptionDetector;

    iget-object v1, p0, Lanet/channel/detect/c;->a:Lanet/channel/statist/RequestStatistic;

    iget-object v1, v1, Lanet/channel/statist/RequestStatistic;->ip:Ljava/lang/String;

    .line 3038
    iput-object v1, v0, Lanet/channel/detect/ExceptionDetector;->d:Ljava/lang/String;

    .line 98
    :cond_53
    :goto_53
    iget-object v0, p0, Lanet/channel/detect/c;->a:Lanet/channel/statist/RequestStatistic;

    iget-object v0, v0, Lanet/channel/statist/RequestStatistic;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 99
    iget-object v0, p0, Lanet/channel/detect/c;->b:Lanet/channel/detect/ExceptionDetector;

    .line 4038
    iget-object v0, v0, Lanet/channel/detect/ExceptionDetector;->e:Lanet/channel/detect/ExceptionDetector$LimitedQueue;

    .line 99
    iget-object v1, p0, Lanet/channel/detect/c;->a:Lanet/channel/statist/RequestStatistic;

    iget-object v1, v1, Lanet/channel/statist/RequestStatistic;->url:Ljava/lang/String;

    iget-object v2, p0, Lanet/channel/detect/c;->a:Lanet/channel/statist/RequestStatistic;

    iget v2, v2, Lanet/channel/statist/RequestStatistic;->statusCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanet/channel/detect/ExceptionDetector$LimitedQueue;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_74
    iget-object v0, p0, Lanet/channel/detect/c;->b:Lanet/channel/detect/ExceptionDetector;

    .line 5038
    invoke-virtual {v0}, Lanet/channel/detect/ExceptionDetector;->c()Z

    move-result v0

    if-nez v0, :cond_7d

    return-void

    .line 104
    :cond_7d
    iget-object v0, p0, Lanet/channel/detect/c;->b:Lanet/channel/detect/ExceptionDetector;

    .line 6038
    invoke-virtual {v0}, Lanet/channel/detect/ExceptionDetector;->b()V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_82} :catch_83

    goto :goto_8f

    :catch_83
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 106
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "anet.ExceptionDetector"

    const-string v4, "network detect fail."

    invoke-static {v3, v4, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_8f
    return-void
.end method
