.class final Lcom/taobao/agoo/b;
.super Lcom/taobao/accs/IAgooAppReceiver;
.source "Taobao"


# instance fields
.field final synthetic a:Lcom/taobao/agoo/IRegister;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/taobao/accs/IACCSManager;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/agoo/IRegister;Landroid/content/Context;Lcom/taobao/accs/IACCSManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 137
    iput-object p1, p0, Lcom/taobao/agoo/b;->a:Lcom/taobao/agoo/IRegister;

    iput-object p2, p0, Lcom/taobao/agoo/b;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/taobao/agoo/b;->c:Lcom/taobao/accs/IACCSManager;

    iput-object p4, p0, Lcom/taobao/agoo/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/agoo/b;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/taobao/accs/IAgooAppReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppkey()Ljava/lang/String;
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/taobao/agoo/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public onBindApp(ILjava/lang/String;)V
    .registers 9

    const-string p2, "AgooDeviceCmd"

    const-string v0, "TaobaoRegister"

    const/4 v1, 0x0

    :try_start_5
    const-string v2, "onBindApp"

    const/4 v3, 0x2

    .line 154
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "errorCode"

    aput-object v4, v3, v1

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_ae

    .line 156
    invoke-static {}, Lcom/taobao/agoo/TaobaoRegister;->access$000()Lcom/taobao/agoo/a/b;

    move-result-object p1

    if-nez p1, :cond_2c

    .line 157
    new-instance p1, Lcom/taobao/agoo/a/b;

    iget-object v2, p0, Lcom/taobao/agoo/b;->b:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/taobao/agoo/a/b;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/taobao/agoo/TaobaoRegister;->access$002(Lcom/taobao/agoo/a/b;)Lcom/taobao/agoo/a/b;

    .line 159
    :cond_2c
    iget-object p1, p0, Lcom/taobao/agoo/b;->c:Lcom/taobao/accs/IACCSManager;

    iget-object v2, p0, Lcom/taobao/agoo/b;->b:Landroid/content/Context;

    invoke-static {}, Lcom/taobao/agoo/TaobaoRegister;->access$000()Lcom/taobao/agoo/a/b;

    move-result-object v3

    invoke-interface {p1, v2, p2, v3}, Lcom/taobao/accs/IACCSManager;->registerDataListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    .line 160
    sget-object p1, Lcom/taobao/agoo/a/b;->b:Lcom/taobao/agoo/a/a;

    iget-object v2, p0, Lcom/taobao/agoo/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/taobao/agoo/a/a;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_64

    iget-object p1, p0, Lcom/taobao/agoo/b;->b:Landroid/content/Context;

    .line 161
    invoke-static {p1}, Lorg/android/agoo/common/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_64

    const-string p1, "agoo aready Registered return "

    .line 162
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iget-object p1, p0, Lcom/taobao/agoo/b;->a:Lcom/taobao/agoo/IRegister;

    if-eqz p1, :cond_63

    .line 164
    iget-object p1, p0, Lcom/taobao/agoo/b;->a:Lcom/taobao/agoo/IRegister;

    iget-object p2, p0, Lcom/taobao/agoo/b;->b:Landroid/content/Context;

    invoke-static {p2}, Lorg/android/agoo/common/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/taobao/agoo/IRegister;->onSuccess(Ljava/lang/String;)V

    :cond_63
    return-void

    .line 169
    :cond_64
    iget-object p1, p0, Lcom/taobao/agoo/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/agoo/b;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/agoo/b;->e:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/taobao/agoo/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_6e} :catch_be

    const-string v2, "503.1"

    if-nez p1, :cond_7e

    .line 171
    :try_start_72
    iget-object p1, p0, Lcom/taobao/agoo/b;->a:Lcom/taobao/agoo/IRegister;

    if-eqz p1, :cond_7d

    .line 172
    iget-object p1, p0, Lcom/taobao/agoo/b;->a:Lcom/taobao/agoo/IRegister;

    const-string p2, "req data null"

    invoke-virtual {p1, v2, p2}, Lcom/taobao/agoo/IRegister;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7d
    return-void

    .line 177
    :cond_7e
    new-instance v3, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p2, p1, v4}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/taobao/agoo/b;->c:Lcom/taobao/accs/IACCSManager;

    iget-object p2, p0, Lcom/taobao/agoo/b;->b:Landroid/content/Context;

    invoke-interface {p1, p2, v3}, Lcom/taobao/accs/IACCSManager;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9e

    .line 180
    iget-object p1, p0, Lcom/taobao/agoo/b;->a:Lcom/taobao/agoo/IRegister;

    if-eqz p1, :cond_c6

    .line 181
    iget-object p1, p0, Lcom/taobao/agoo/b;->a:Lcom/taobao/agoo/IRegister;

    const-string p2, "accs channel disabled!"

    invoke-virtual {p1, v2, p2}, Lcom/taobao/agoo/IRegister;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c6

    .line 185
    :cond_9e
    iget-object p2, p0, Lcom/taobao/agoo/b;->a:Lcom/taobao/agoo/IRegister;

    if-eqz p2, :cond_c6

    .line 186
    invoke-static {}, Lcom/taobao/agoo/TaobaoRegister;->access$000()Lcom/taobao/agoo/a/b;

    move-result-object p2

    iget-object p2, p2, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/taobao/agoo/b;->a:Lcom/taobao/agoo/IRegister;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c6

    .line 190
    :cond_ae
    iget-object p2, p0, Lcom/taobao/agoo/b;->a:Lcom/taobao/agoo/IRegister;

    if-eqz p2, :cond_c6

    .line 191
    iget-object p2, p0, Lcom/taobao/agoo/b;->a:Lcom/taobao/agoo/IRegister;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "accs bindapp error!"

    invoke-virtual {p2, p1, v2}, Lcom/taobao/agoo/IRegister;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_bd} :catch_be

    goto :goto_c6

    :catch_be
    move-exception p1

    .line 196
    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "register onBindApp"

    invoke-static {v0, v1, p1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_c6
    :goto_c6
    return-void
.end method

.method public onBindApp(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_8

    .line 142
    invoke-virtual {p0, p1, p3}, Lcom/taobao/agoo/b;->onBindApp(ILjava/lang/String;)V

    goto :goto_13

    .line 144
    :cond_8
    iget-object p3, p0, Lcom/taobao/agoo/b;->a:Lcom/taobao/agoo/IRegister;

    if-eqz p3, :cond_13

    .line 145
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/taobao/agoo/IRegister;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void
.end method
