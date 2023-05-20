.class Lcom/heytap/mcssdk/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/mcssdk/d;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/heytap/mcssdk/d;


# direct methods
.method constructor <init>(Lcom/heytap/mcssdk/d;Landroid/content/Intent;)V
    .registers 3

    iput-object p1, p0, Lcom/heytap/mcssdk/d$1;->b:Lcom/heytap/mcssdk/d;

    iput-object p2, p0, Lcom/heytap/mcssdk/d$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/heytap/mcssdk/d$1;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :try_start_e
    invoke-static {p2}, Lcom/mcs/aidl/IMcsSdkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mcs/aidl/IMcsSdkService;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mcs/aidl/IMcsSdkService;->process(Landroid/os/Bundle;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_2b

    :catch_16
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindMcsService exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/mcssdk/f/c;->b(Ljava/lang/String;)V

    :goto_2b
    iget-object p1, p0, Lcom/heytap/mcssdk/d$1;->b:Lcom/heytap/mcssdk/d;

    invoke-static {p1}, Lcom/heytap/mcssdk/d;->a(Lcom/heytap/mcssdk/d;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
