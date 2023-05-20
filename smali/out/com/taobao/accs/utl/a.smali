.class final Lcom/taobao/accs/utl/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/alibaba/sdk/android/logger/ILogger;


# instance fields
.field final synthetic a:Lanet/channel/util/ALog$ILog;


# direct methods
.method constructor <init>(Lanet/channel/util/ALog$ILog;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/taobao/accs/utl/a;->a:Lanet/channel/util/ALog$ILog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public print(Lcom/alibaba/sdk/android/logger/LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 25
    :try_start_0
    sget-object v0, Lcom/taobao/accs/utl/b;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/logger/LogLevel;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_27

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_15

    goto :goto_2c

    .line 36
    :cond_15
    iget-object p1, p0, Lcom/taobao/accs/utl/a;->a:Lanet/channel/util/ALog$ILog;

    invoke-interface {p1, p2, p3}, Lanet/channel/util/ALog$ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 33
    :cond_1b
    iget-object p1, p0, Lcom/taobao/accs/utl/a;->a:Lanet/channel/util/ALog$ILog;

    invoke-interface {p1, p2, p3}, Lanet/channel/util/ALog$ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 30
    :cond_21
    iget-object p1, p0, Lcom/taobao/accs/utl/a;->a:Lanet/channel/util/ALog$ILog;

    invoke-interface {p1, p2, p3}, Lanet/channel/util/ALog$ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 27
    :cond_27
    iget-object p1, p0, Lcom/taobao/accs/utl/a;->a:Lanet/channel/util/ALog$ILog;

    invoke-interface {p1, p2, p3}, Lanet/channel/util/ALog$ILog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_2c

    :catch_2c
    :goto_2c
    return-void
.end method
