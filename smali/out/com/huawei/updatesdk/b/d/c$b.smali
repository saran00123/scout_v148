.class Lcom/huawei/updatesdk/b/d/c$b;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/updatesdk/b/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/updatesdk/b/d/c$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/huawei/updatesdk/b/d/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/huawei/updatesdk/b/d/b;

    if-nez v1, :cond_a

    return-void

    :cond_a
    check-cast v0, Lcom/huawei/updatesdk/b/d/b;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v1}, Lcom/huawei/updatesdk/a/b/b/b;->a(Landroid/content/Intent;)Lcom/huawei/updatesdk/a/b/b/b;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5f

    const/4 v4, 0x3

    if-eq v3, v4, :cond_48

    const/4 v4, 0x4

    if-eq v3, v4, :cond_24

    const/4 v0, 0x5

    if-eq v3, v0, :cond_48

    goto :goto_78

    :cond_24
    invoke-static {}, Lcom/huawei/updatesdk/a/b/a/a;->c()Lcom/huawei/updatesdk/a/b/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/updatesdk/a/b/a/a;->a()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huawei/updatesdk/b/d/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/appmarket.apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/huawei/updatesdk/b/d/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/huawei/updatesdk/b/d/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget p1, p1, Landroid/os/Message;->what:I

    const-string v3, "download_status_param"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/huawei/updatesdk/b/f/c;->b()Lcom/huawei/updatesdk/b/f/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/huawei/updatesdk/b/f/c;->b(Lcom/huawei/updatesdk/a/b/b/b;)V

    goto :goto_78

    :cond_5f
    invoke-virtual {v0}, Lcom/huawei/updatesdk/b/d/b;->e()J

    move-result-wide v3

    const-string p1, "download_apk_size"

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/huawei/updatesdk/b/d/b;->a()J

    move-result-wide v3

    const-string p1, "download_apk_already"

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Lcom/huawei/updatesdk/b/f/c;->b()Lcom/huawei/updatesdk/b/f/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/huawei/updatesdk/b/f/c;->a(Lcom/huawei/updatesdk/a/b/b/b;)V

    :goto_78
    return-void
.end method
