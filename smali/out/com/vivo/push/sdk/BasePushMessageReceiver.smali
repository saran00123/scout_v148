.class public abstract Lcom/vivo/push/sdk/BasePushMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BasePushMessageReceiver.java"

# interfaces
.implements Lcom/vivo/push/sdk/PushMessageCallback;


# annotations
.annotation build Lcom/vivo/push/NoPorGuard;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PushMessageReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public isAllowNet(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    const-string v1, "PushMessageReceiver"

    if-nez p1, :cond_b

    const-string p1, "isAllowNet sContext is null"

    .line 107
    invoke-static {v1, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 110
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string p1, "isAllowNet pkgName is null"

    .line 112
    invoke-static {v1, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 115
    :cond_1b
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.vivo.pushservice.action.PUSH_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x240

    .line 119
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_38

    goto :goto_3d

    .line 125
    :cond_38
    invoke-static {p1, v2}, Lcom/vivo/push/util/r;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3d
    :goto_3d
    const-string p1, "this is client sdk"

    .line 121
    invoke-static {v1, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public onBind(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onDelAlias(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onDelTags(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onListTags(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onLog(Landroid/content/Context;Ljava/lang/String;IZ)V
    .registers 5

    return-void
.end method

.method public onPublish(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string v0, "PushMessageReceiver"

    .line 31
    invoke-static {p1}, Lcom/vivo/push/util/ContextDelegate;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 32
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vivo/push/d;->a(Landroid/content/Context;)V

    :try_start_11
    const-string v1, "method"

    const/4 v2, -0x1

    .line 35
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "req_id"

    .line 36
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PushMessageReceiver "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ; type = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ; requestId = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_43} :catch_b9

    .line 44
    :try_start_43
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object p1

    .line 1867
    iget-object v0, p1, Lcom/vivo/push/d;->k:Lcom/vivo/push/IPushClientFactory;

    invoke-interface {v0, p2}, Lcom/vivo/push/IPushClientFactory;->createReceiverCommand(Landroid/content/Intent;)Lcom/vivo/push/g;

    move-result-object p2

    .line 1878
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    .line 2294
    iget-object v0, v0, Lcom/vivo/push/d;->e:Landroid/content/Context;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_53} :catch_b4

    const-string v1, "PushClientManager"

    if-nez p2, :cond_64

    :try_start_57
    const-string p1, "sendCommand, null command!"

    .line 1880
    invoke-static {v1, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_63

    const-string p1, "[\u6267\u884c\u6307\u4ee4\u5931\u8d25]\u6307\u4ee4\u7a7a\uff01"

    .line 1882
    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_63
    return-void

    .line 1887
    :cond_64
    iget-object p1, p1, Lcom/vivo/push/d;->k:Lcom/vivo/push/IPushClientFactory;

    invoke-interface {p1, p2}, Lcom/vivo/push/IPushClientFactory;->createReceiveTask(Lcom/vivo/push/g;)Lcom/vivo/push/c/o;

    move-result-object p1

    if-nez p1, :cond_96

    .line 1889
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "sendCommand, null command task! pushCommand = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_95

    .line 1891
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[\u6267\u884c\u6307\u4ee4\u5931\u8d25]\u6307\u4ee4"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\u4efb\u52a1\u7a7a\uff01"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_95
    return-void

    :cond_96
    if-eqz v0, :cond_ad

    .line 1896
    instance-of v1, p2, Lcom/vivo/push/b/n;

    if-nez v1, :cond_ad

    .line 1897
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[\u63a5\u6536\u6307\u4ee4]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/vivo/push/util/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1899
    :cond_ad
    invoke-virtual {p1, p0}, Lcom/vivo/push/c/o;->a(Lcom/vivo/push/sdk/PushMessageCallback;)V

    .line 1900
    invoke-static {p1}, Lcom/vivo/push/f;->a(Lcom/vivo/push/e;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_b3} :catch_b4

    return-void

    :catch_b4
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catch_b9
    move-exception p1

    const-string p2, "get method error"

    .line 39
    invoke-static {v0, p2, p1}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onSetAlias(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onSetTags(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onTransmissionMessage(Landroid/content/Context;Lcom/vivo/push/model/UnvarnishedMessage;)V
    .registers 3

    return-void
.end method

.method public onUnBind(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    return-void
.end method
