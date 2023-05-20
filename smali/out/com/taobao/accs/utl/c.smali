.class public Lcom/taobao/accs/utl/c;
.super Lcom/taobao/accs/d;
.source "Taobao"


# instance fields
.field private a:Lcom/taobao/accs/IAppReceiver;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/taobao/accs/IAppReceiver;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Lcom/taobao/accs/d;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/taobao/accs/utl/c;->b:Z

    .line 35
    iput-object p1, p0, Lcom/taobao/accs/utl/c;->a:Lcom/taobao/accs/IAppReceiver;

    return-void
.end method

.method public static a(Lcom/taobao/accs/IAppReceiver;)Lcom/taobao/accs/IAppReceiver;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_4
    new-instance v0, Lcom/taobao/accs/utl/c;

    invoke-direct {v0, p0}, Lcom/taobao/accs/utl/c;-><init>(Lcom/taobao/accs/IAppReceiver;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 121
    instance-of v0, p1, Lcom/taobao/accs/utl/c;

    if-eqz v0, :cond_f

    .line 122
    iget-object v0, p0, Lcom/taobao/accs/utl/c;->a:Lcom/taobao/accs/IAppReceiver;

    check-cast p1, Lcom/taobao/accs/utl/c;

    iget-object p1, p1, Lcom/taobao/accs/utl/c;->a:Lcom/taobao/accs/IAppReceiver;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 124
    :cond_f
    iget-object v0, p0, Lcom/taobao/accs/utl/c;->a:Lcom/taobao/accs/IAppReceiver;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAllServices()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/taobao/accs/utl/c;->a:Lcom/taobao/accs/IAppReceiver;

    invoke-interface {v0}, Lcom/taobao/accs/IAppReceiver;->getAllServices()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/taobao/accs/utl/c;->a:Lcom/taobao/accs/IAppReceiver;

    invoke-interface {v0, p1}, Lcom/taobao/accs/IAppReceiver;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/taobao/accs/utl/c;->a:Lcom/taobao/accs/IAppReceiver;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onBindApp(I)V
    .registers 3

    .line 45
    iget-boolean v0, p0, Lcom/taobao/accs/utl/c;->b:Z

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/taobao/accs/utl/c;->b:Z

    .line 49
    iget-object v0, p0, Lcom/taobao/accs/utl/c;->a:Lcom/taobao/accs/IAppReceiver;

    invoke-interface {v0, p1}, Lcom/taobao/accs/IAppReceiver;->onBindApp(I)V

    :goto_d
    return-void
.end method

.method public onBindApp(ILjava/lang/String;)V
    .registers 5

    .line 55
    iget-boolean v0, p0, Lcom/taobao/accs/utl/c;->b:Z

    if-eqz v0, :cond_5

    goto :goto_17

    :cond_5
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/taobao/accs/utl/c;->b:Z

    .line 59
    iget-object v0, p0, Lcom/taobao/accs/utl/c;->a:Lcom/taobao/accs/IAppReceiver;

    instance-of v1, v0, Lcom/taobao/accs/IAppReceiverV1;

    if-eqz v1, :cond_14

    .line 60
    check-cast v0, Lcom/taobao/accs/IAppReceiverV1;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/accs/IAppReceiverV1;->onBindApp(ILjava/lang/String;)V

    goto :goto_17

    .line 62
    :cond_14
    invoke-interface {v0, p1}, Lcom/taobao/accs/IAppReceiver;->onBindApp(I)V

    :goto_17
    return-void
.end method

.method public onBindApp(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 70
    iget-boolean v0, p0, Lcom/taobao/accs/utl/c;->b:Z

    if-eqz v0, :cond_5

    goto :goto_21

    :cond_5
    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/taobao/accs/utl/c;->b:Z

    .line 74
    iget-object v0, p0, Lcom/taobao/accs/utl/c;->a:Lcom/taobao/accs/IAppReceiver;

    instance-of v1, v0, Lcom/taobao/accs/d;

    if-eqz v1, :cond_14

    .line 75
    check-cast v0, Lcom/taobao/accs/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/accs/d;->onBindApp(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 76
    :cond_14
    instance-of p2, v0, Lcom/taobao/accs/IAppReceiverV1;

    if-eqz p2, :cond_1e

    .line 77
    check-cast v0, Lcom/taobao/accs/IAppReceiverV1;

    invoke-virtual {v0, p1, p3}, Lcom/taobao/accs/IAppReceiverV1;->onBindApp(ILjava/lang/String;)V

    goto :goto_21

    .line 79
    :cond_1e
    invoke-interface {v0, p1}, Lcom/taobao/accs/IAppReceiver;->onBindApp(I)V

    :goto_21
    return-void
.end method

.method public onBindUser(Ljava/lang/String;I)V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/taobao/accs/utl/c;->a:Lcom/taobao/accs/IAppReceiver;

    invoke-interface {v0, p1, p2}, Lcom/taobao/accs/IAppReceiver;->onBindUser(Ljava/lang/String;I)V

    return-void
.end method

.method public onData(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5

    .line 40
    iget-object v0, p0, Lcom/taobao/accs/utl/c;->a:Lcom/taobao/accs/IAppReceiver;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/accs/IAppReceiver;->onData(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public onSendData(Ljava/lang/String;I)V
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/taobao/accs/utl/c;->a:Lcom/taobao/accs/IAppReceiver;

    invoke-interface {v0, p1, p2}, Lcom/taobao/accs/IAppReceiver;->onSendData(Ljava/lang/String;I)V

    return-void
.end method

.method public onUnbindApp(I)V
    .registers 3

    .line 86
    iget-boolean v0, p0, Lcom/taobao/accs/utl/c;->b:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/taobao/accs/utl/c;->b:Z

    .line 88
    iget-object v0, p0, Lcom/taobao/accs/utl/c;->a:Lcom/taobao/accs/IAppReceiver;

    invoke-interface {v0, p1}, Lcom/taobao/accs/IAppReceiver;->onUnbindApp(I)V

    :cond_c
    return-void
.end method

.method public onUnbindUser(I)V
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/taobao/accs/utl/c;->a:Lcom/taobao/accs/IAppReceiver;

    invoke-interface {v0, p1}, Lcom/taobao/accs/IAppReceiver;->onUnbindUser(I)V

    return-void
.end method
