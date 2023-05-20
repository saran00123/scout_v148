.class Lcom/xiaomi/push/ei;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/ef;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Service;Landroid/content/Intent;)V
    .registers 7

    const-string v0, "awake_info"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "B get a incorrect message"

    const/16 v2, 0x3f0

    const-string v3, "service"

    if-nez v0, :cond_28

    invoke-static {p2}, Lcom/xiaomi/push/dx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x3ef

    const-string v1, "play with service successfully"

    invoke-static {p1, p2, v0, v1}, Lcom/xiaomi/push/dy;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2f

    :cond_28
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, v2, v1}, Lcom/xiaomi/push/dy;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    :goto_2f
    return-void
.end method

.method private b(Landroid/content/Context;Lcom/xiaomi/push/eb;)V
    .registers 9

    invoke-virtual {p2}, Lcom/xiaomi/push/eb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/push/eb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xiaomi/push/eb;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/xiaomi/push/eb;->a()I

    move-result p2

    const/16 v3, 0x3f0

    if-eqz p1, :cond_8b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_8b

    :cond_27
    invoke-static {p1, v0, v1}, Lcom/xiaomi/push/service/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    const/16 p2, 0x3eb

    const-string v0, "B is not ready"

    invoke-static {p1, v2, p2, v0}, Lcom/xiaomi/push/dy;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_35
    const/16 v4, 0x3ea

    const-string v5, "B is ready"

    invoke-static {p1, v2, v4, v5}, Lcom/xiaomi/push/dy;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x3ec

    const-string v5, "A is ready"

    invoke-static {p1, v2, v4, v5}, Lcom/xiaomi/push/dy;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    :try_start_43
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "awake_info"

    invoke-static {v2}, Lcom/xiaomi/push/dx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_66

    invoke-static {p1}, Lcom/xiaomi/push/ec;->a(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_66

    const-string p2, "A not in foreground"

    invoke-static {p1, v2, v3, p2}, Lcom/xiaomi/push/dy;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_66
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_7b

    const/16 p2, 0x3ed

    const-string v0, "A is successful"

    invoke-static {p1, v2, p2, v0}, Lcom/xiaomi/push/dy;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_73} :catch_81

    const/16 p2, 0x3ee

    const-string v0, "The job is finished"

    invoke-static {p1, v2, p2, v0}, Lcom/xiaomi/push/dy;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_7b
    :try_start_7b
    const-string p2, "A is fail to help B\'s service"

    invoke-static {p1, v2, v3, p2}, Lcom/xiaomi/push/dy;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_80} :catch_81

    return-void

    :catch_81
    move-exception p2

    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    const-string p2, "A meet a exception when help B\'s service"

    invoke-static {p1, v2, v3, p2}, Lcom/xiaomi/push/dy;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_8b
    :goto_8b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "argument error"

    if-eqz p2, :cond_99

    const-string p2, "service"

    invoke-static {p1, p2, v3, v0}, Lcom/xiaomi/push/dy;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_9c

    :cond_99
    invoke-static {p1, v2, v3, v0}, Lcom/xiaomi/push/dy;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    :goto_9c
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_c

    instance-of p3, p1, Landroid/app/Service;

    if-eqz p3, :cond_c

    check-cast p1, Landroid/app/Service;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/ei;->a(Landroid/app/Service;Landroid/content/Intent;)V

    goto :goto_15

    :cond_c
    const/16 p2, 0x3f0

    const-string p3, "service"

    const-string v0, "A receive incorrect message"

    invoke-static {p1, p3, p2, v0}, Lcom/xiaomi/push/dy;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    :goto_15
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/xiaomi/push/eb;)V
    .registers 5

    if-eqz p2, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/ei;->b(Landroid/content/Context;Lcom/xiaomi/push/eb;)V

    goto :goto_f

    :cond_6
    const/16 p2, 0x3f0

    const-string v0, "service"

    const-string v1, "A receive incorrect message"

    invoke-static {p1, v0, p2, v1}, Lcom/xiaomi/push/dy;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    :goto_f
    return-void
.end method
