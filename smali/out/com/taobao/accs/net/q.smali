.class Lcom/taobao/accs/net/q;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/RequestCb;


# instance fields
.field final synthetic a:Lanet/channel/IAuth$AuthCallback;

.field final synthetic b:Lcom/taobao/accs/net/j$a;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/j$a;Lanet/channel/IAuth$AuthCallback;)V
    .registers 3

    .line 595
    iput-object p1, p0, Lcom/taobao/accs/net/q;->b:Lcom/taobao/accs/net/j$a;

    iput-object p2, p0, Lcom/taobao/accs/net/q;->a:Lanet/channel/IAuth$AuthCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceive(Lanet/channel/bytes/ByteArray;Z)V
    .registers 3

    return-void
.end method

.method public onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    .registers 5

    if-gez p1, :cond_22

    .line 624
    iget-object p2, p0, Lcom/taobao/accs/net/q;->b:Lcom/taobao/accs/net/j$a;

    invoke-static {p2}, Lcom/taobao/accs/net/j$a;->a(Lcom/taobao/accs/net/j$a;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p2

    const-string p3, "auth onFinish"

    invoke-interface {p2, p3}, Lcom/alibaba/sdk/android/logger/ILog;->err(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "statusCode"

    invoke-interface {p2, v0, p3}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p2

    invoke-interface {p2}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 625
    iget-object p2, p0, Lcom/taobao/accs/net/q;->a:Lanet/channel/IAuth$AuthCallback;

    const-string p3, "onFinish auth fail"

    invoke-interface {p2, p1, p3}, Lanet/channel/IAuth$AuthCallback;->onAuthFail(ILjava/lang/String;)V

    :cond_22
    return-void
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "httpStatusCode"

    const-string v1, "auth"

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_38

    .line 599
    iget-object v2, p0, Lcom/taobao/accs/net/q;->b:Lcom/taobao/accs/net/j$a;

    invoke-static {v2}, Lcom/taobao/accs/net/j$a;->a(Lcom/taobao/accs/net/j$a;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alibaba/sdk/android/logger/ILog;->info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 600
    iget-object p1, p0, Lcom/taobao/accs/net/q;->a:Lanet/channel/IAuth$AuthCallback;

    invoke-interface {p1}, Lanet/channel/IAuth$AuthCallback;->onAuthSuccess()V

    .line 601
    iget-object p1, p0, Lcom/taobao/accs/net/q;->b:Lcom/taobao/accs/net/j$a;

    invoke-static {p1}, Lcom/taobao/accs/net/j$a;->b(Lcom/taobao/accs/net/j$a;)Lcom/taobao/accs/net/b;

    move-result-object p1

    instance-of p1, p1, Lcom/taobao/accs/net/j;

    if-eqz p1, :cond_54

    .line 602
    iget-object p1, p0, Lcom/taobao/accs/net/q;->b:Lcom/taobao/accs/net/j$a;

    invoke-static {p1}, Lcom/taobao/accs/net/j$a;->b(Lcom/taobao/accs/net/j$a;)Lcom/taobao/accs/net/b;

    move-result-object p1

    check-cast p1, Lcom/taobao/accs/net/j;

    invoke-static {p1}, Lcom/taobao/accs/net/j;->c(Lcom/taobao/accs/net/j;)V

    goto :goto_54

    .line 605
    :cond_38
    iget-object v2, p0, Lcom/taobao/accs/net/q;->b:Lcom/taobao/accs/net/j$a;

    invoke-static {v2}, Lcom/taobao/accs/net/j$a;->a(Lcom/taobao/accs/net/j$a;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alibaba/sdk/android/logger/ILog;->err(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 606
    iget-object v0, p0, Lcom/taobao/accs/net/q;->a:Lanet/channel/IAuth$AuthCallback;

    const-string v2, "auth fail"

    invoke-interface {v0, p1, v2}, Lanet/channel/IAuth$AuthCallback;->onAuthFail(ILjava/lang/String;)V

    .line 609
    :cond_54
    :goto_54
    invoke-static {p2}, Lcom/taobao/accs/utl/UtilityImpl;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 610
    iget-object p2, p0, Lcom/taobao/accs/net/q;->b:Lcom/taobao/accs/net/j$a;

    invoke-static {p2}, Lcom/taobao/accs/net/j$a;->a(Lcom/taobao/accs/net/j$a;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p2

    invoke-interface {p2, v1}, Lcom/alibaba/sdk/android/logger/ILog;->debug(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p2

    const-string v0, "header"

    invoke-interface {p2, v0, p1}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p2

    invoke-interface {p2}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    const-string p2, "x-at"

    .line 611
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 612
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_81

    .line 613
    iget-object p2, p0, Lcom/taobao/accs/net/q;->b:Lcom/taobao/accs/net/j$a;

    invoke-static {p2}, Lcom/taobao/accs/net/j$a;->b(Lcom/taobao/accs/net/j$a;)Lcom/taobao/accs/net/b;

    move-result-object p2

    iput-object p1, p2, Lcom/taobao/accs/net/b;->k:Ljava/lang/String;

    :cond_81
    return-void
.end method
