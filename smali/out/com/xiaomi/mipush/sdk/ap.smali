.class Lcom/xiaomi/mipush/sdk/ap;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xiaomi/mipush/sdk/ao;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/ao;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_8

    goto/16 :goto_169

    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-class v1, Lcom/xiaomi/mipush/sdk/af;

    monitor-enter v1

    :try_start_11
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/af;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_168

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/af;->a(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_15b

    sget-object v2, Lcom/xiaomi/mipush/sdk/au;->a:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/au;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, p1, :cond_5e

    const-string v2, "syncing"

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/mipush/sdk/au;->a:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {v5, v6}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    sget-object v2, Lcom/xiaomi/mipush/sdk/au;->a:Lcom/xiaomi/mipush/sdk/au;

    :goto_59
    invoke-static {p1, v0, v2, v4, v3}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/au;ZLjava/util/HashMap;)V

    goto/16 :goto_14d

    :cond_5e
    sget-object v2, Lcom/xiaomi/mipush/sdk/au;->b:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/au;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_83

    const-string v2, "syncing"

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/mipush/sdk/au;->b:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {v5, v6}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    sget-object v2, Lcom/xiaomi/mipush/sdk/au;->b:Lcom/xiaomi/mipush/sdk/au;

    goto :goto_59

    :cond_83
    sget-object v2, Lcom/xiaomi/mipush/sdk/au;->c:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/au;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, p1, :cond_b9

    const-string v2, "syncing"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/mipush/sdk/au;->c:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {v4, v5}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    sget-object v2, Lcom/xiaomi/mipush/sdk/au;->c:Lcom/xiaomi/mipush/sdk/au;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/mipush/sdk/e;->a:Lcom/xiaomi/mipush/sdk/e;

    invoke-static {v4, v5}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/e;)Ljava/util/HashMap;

    move-result-object v4

    :goto_b4
    invoke-static {p1, v0, v2, v3, v4}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/au;ZLjava/util/HashMap;)V

    goto/16 :goto_14d

    :cond_b9
    sget-object v2, Lcom/xiaomi/mipush/sdk/au;->d:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/au;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_ea

    const-string v2, "syncing"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/mipush/sdk/au;->d:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {v4, v5}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    sget-object v2, Lcom/xiaomi/mipush/sdk/au;->d:Lcom/xiaomi/mipush/sdk/au;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/mipush/sdk/e;->b:Lcom/xiaomi/mipush/sdk/e;

    invoke-static {v4, v5}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/e;)Ljava/util/HashMap;

    move-result-object v4

    goto :goto_b4

    :cond_ea
    sget-object v2, Lcom/xiaomi/mipush/sdk/au;->e:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/au;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_11b

    const-string v2, "syncing"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/mipush/sdk/au;->e:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {v4, v5}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    sget-object v2, Lcom/xiaomi/mipush/sdk/au;->e:Lcom/xiaomi/mipush/sdk/au;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/mipush/sdk/e;->c:Lcom/xiaomi/mipush/sdk/e;

    invoke-static {v4, v5}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/e;)Ljava/util/HashMap;

    move-result-object v4

    goto :goto_b4

    :cond_11b
    sget-object v2, Lcom/xiaomi/mipush/sdk/au;->f:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/au;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_14d

    const-string p1, "syncing"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v2

    sget-object v4, Lcom/xiaomi/mipush/sdk/au;->f:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {v2, v4}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14d

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    sget-object v2, Lcom/xiaomi/mipush/sdk/au;->f:Lcom/xiaomi/mipush/sdk/au;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/mipush/sdk/e;->d:Lcom/xiaomi/mipush/sdk/e;

    invoke-static {v4, v5}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/e;)Ljava/util/HashMap;

    move-result-object v4

    goto/16 :goto_b4

    :cond_14d
    :goto_14d
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/mipush/sdk/af;->b(Ljava/lang/String;)V

    goto :goto_168

    :cond_15b
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/ap;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/ao;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/mipush/sdk/af;->c(Ljava/lang/String;)V

    :cond_168
    :goto_168
    monitor-exit v1

    :goto_169
    return-void

    :catchall_16a
    move-exception p1

    monitor-exit v1
    :try_end_16c
    .catchall {:try_start_11 .. :try_end_16c} :catchall_16a

    throw p1
.end method
