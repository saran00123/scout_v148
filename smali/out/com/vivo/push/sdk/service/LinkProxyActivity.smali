.class public Lcom/vivo/push/sdk/service/LinkProxyActivity;
.super Landroid/app/Activity;
.source "LinkProxyActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/vivo/push/sdk/service/LinkProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "LinkProxyActivity"

    if-nez p1, :cond_14

    const-string p1, "enter RequestPermissionsActivity onCreate, intent is null, finish"

    .line 29
    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0}, Lcom/vivo/push/sdk/service/LinkProxyActivity;->finish()V

    return-void

    :cond_14
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    :try_start_16
    invoke-virtual {p0}, Lcom/vivo/push/sdk/service/LinkProxyActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x800033

    .line 36
    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 37
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 38
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 39
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 40
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 41
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 42
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_2f} :catch_30

    goto :goto_36

    :catch_30
    move-exception v3

    const-string v4, "enter onCreate error "

    .line 44
    invoke-static {v0, v4, v3}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    :goto_36
    invoke-virtual {p0}, Lcom/vivo/push/sdk/service/LinkProxyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " enter onCreate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "com.vivo.abe"

    .line 48
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "previous_intent"

    if-eqz v3, :cond_94

    if-nez p1, :cond_68

    :try_start_61
    const-string p1, "adapterToService intent is null"

    .line 1083
    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ee

    .line 1086
    :cond_68
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_75

    const-string p1, "adapterToService getExtras() is null"

    .line 1087
    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ee

    .line 1090
    :cond_75
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_87

    const-string p1, "adapterToService proxyIntent is null"

    .line 1093
    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ee

    .line 1096
    :cond_87
    invoke-static {p0, p1}, Lcom/vivo/push/util/y;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_8a} :catch_8b

    goto :goto_ee

    :catch_8b
    move-exception p1

    .line 1098
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ee

    .line 2058
    :cond_94
    :try_start_94
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_ee

    .line 2059
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_ce

    .line 2119
    invoke-virtual {p0}, Lcom/vivo/push/sdk/service/LinkProxyActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_ce

    const/16 v4, 0x240

    .line 2123
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_ce

    .line 2125
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_bb

    goto :goto_ce

    .line 2129
    :cond_bb
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_ce

    .line 2130
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_ce

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v3, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v3, :cond_ce

    move v2, v1

    :cond_ce
    :goto_ce
    if-eqz v2, :cond_d4

    .line 2062
    invoke-virtual {p0, p1}, Lcom/vivo/push/sdk/service/LinkProxyActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_ee

    .line 2064
    :cond_d4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "service\'s exported is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_e5} :catch_e6

    goto :goto_ee

    :catch_e6
    move-exception p1

    .line 2068
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :cond_ee
    :goto_ee
    invoke-virtual {p0}, Lcom/vivo/push/sdk/service/LinkProxyActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " onDestory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vivo/push/sdk/service/LinkProxyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinkProxyActivity"

    invoke-static {v1, v0}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
