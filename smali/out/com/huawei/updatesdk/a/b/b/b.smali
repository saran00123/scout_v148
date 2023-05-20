.class public final Lcom/huawei/updatesdk/a/b/b/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/updatesdk/a/b/b/b;->a:Landroid/content/Intent;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/huawei/updatesdk/a/b/b/b;
    .registers 2

    new-instance v0, Lcom/huawei/updatesdk/a/b/b/b;

    invoke-direct {v0, p0}, Lcom/huawei/updatesdk/a/b/b/b;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .registers 4

    invoke-virtual {p0}, Lcom/huawei/updatesdk/a/b/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/b/b;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    return p1

    :catch_d
    const-string p1, "SecureIntent"

    const-string v0, "getIntExtra exception!"

    invoke-static {p1, v0}, Lcom/huawei/updatesdk/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return p2
.end method

.method public a()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/huawei/updatesdk/a/b/b/b;->d()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/b/b;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_12

    :cond_11
    move-object v1, v0

    :cond_12
    :goto_12
    return-object v1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/huawei/updatesdk/a/b/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/b/b;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    const-string p1, "SecureIntent"

    const-string v0, "getStringExtra exception!"

    invoke-static {p1, v0}, Lcom/huawei/updatesdk/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const-string p1, ""

    return-object p1
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 4

    invoke-virtual {p0}, Lcom/huawei/updatesdk/a/b/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/b/b;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    return p1

    :catch_d
    const-string p1, "SecureIntent"

    const-string v0, "getBooleanExtra exception!"

    invoke-static {p1, v0}, Lcom/huawei/updatesdk/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return p2
.end method

.method public b(Ljava/lang/String;I)J
    .registers 6

    invoke-virtual {p0}, Lcom/huawei/updatesdk/a/b/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/b/b;->a:Landroid/content/Intent;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_e

    return-wide p1

    :catch_e
    const-string p1, "SecureIntent"

    const-string v0, "getIntExtra exception!"

    invoke-static {p1, v0}, Lcom/huawei/updatesdk/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    int-to-long p1, p2

    return-wide p1
.end method

.method public b()Landroid/os/Bundle;
    .registers 2

    invoke-virtual {p0}, Lcom/huawei/updatesdk/a/b/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/b/b;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/b/b;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/a/b/b/b;->a:Landroid/content/Intent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
