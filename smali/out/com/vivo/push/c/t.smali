.class public final Lcom/vivo/push/c/t;
.super Lcom/vivo/push/e;
.source "SendCommandTask.java"


# direct methods
.method public constructor <init>(Lcom/vivo/push/g;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/vivo/push/e;-><init>(Lcom/vivo/push/g;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/vivo/push/g;)V
    .registers 14

    .line 33
    iget-object v0, p0, Lcom/vivo/push/c/t;->a:Landroid/content/Context;

    const-string v1, "SendCommandTask "

    const-string v2, "SendCommandTask"

    if-nez v0, :cond_1d

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ; mContext is Null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    if-nez p1, :cond_25

    const-string p1, "SendCommandTask pushCommand is Null"

    .line 38
    invoke-static {v2, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 42
    :cond_25
    iget-object v0, p0, Lcom/vivo/push/c/t;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/push/util/r;->a(Landroid/content/Context;)Lcom/vivo/push/model/b;

    move-result-object v0

    .line 1035
    iget v3, p1, Lcom/vivo/push/g;->a:I

    if-eqz v3, :cond_c7

    const/16 v4, 0x7d9

    if-eq v3, v4, :cond_7a

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_66

    packed-switch v3, :pswitch_data_1b4

    goto/16 :goto_16a

    :pswitch_3c
    if-eqz v0, :cond_56

    .line 5038
    iget-boolean v3, v0, Lcom/vivo/push/model/b;->e:Z

    if-eqz v3, :cond_43

    goto :goto_56

    .line 85
    :cond_43
    move-object v3, p1

    check-cast v3, Lcom/vivo/push/b/c;

    .line 86
    invoke-static {v3}, Lcom/vivo/push/util/q;->a(Lcom/vivo/push/b/c;)I

    move-result v4

    if-eqz v4, :cond_16a

    .line 88
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object p1

    .line 6114
    iget-object v0, v3, Lcom/vivo/push/b/c;->e:Ljava/lang/String;

    .line 88
    invoke-virtual {p1, v0, v4}, Lcom/vivo/push/d;->a(Ljava/lang/String;I)V

    return-void

    .line 82
    :cond_56
    :goto_56
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lcom/vivo/push/b/c;

    .line 5114
    iget-object v4, v4, Lcom/vivo/push/b/c;->e:Ljava/lang/String;

    const/16 v5, 0x3ed

    .line 82
    invoke-virtual {v3, v4, v5}, Lcom/vivo/push/d;->a(Ljava/lang/String;I)V

    goto/16 :goto_16a

    .line 52
    :cond_66
    iget-object v3, p0, Lcom/vivo/push/c/t;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->getInstance(Landroid/content/Context;)Lcom/vivo/push/cache/ClientConfigManagerImpl;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lcom/vivo/push/b/w;

    .line 3024
    iget v4, v4, Lcom/vivo/push/b/w;->c:I

    .line 52
    invoke-virtual {v3, v4}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->isDebug(I)Z

    move-result v3

    invoke-static {v3}, Lcom/vivo/push/util/n;->a(Z)V

    goto/16 :goto_16a

    .line 55
    :cond_7a
    iget-object v3, p0, Lcom/vivo/push/c/t;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->getInstance(Landroid/content/Context;)Lcom/vivo/push/cache/ClientConfigManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->isDebug()Z

    move-result v3

    invoke-static {v3}, Lcom/vivo/push/util/n;->a(Z)V

    .line 56
    invoke-static {}, Lcom/vivo/push/util/n;->a()Z

    move-result v3

    if-eqz v3, :cond_16a

    .line 58
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v3

    .line 3510
    iget-object v3, v3, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    invoke-virtual {v3}, Lcom/vivo/push/util/a;->a()V

    .line 61
    new-instance v3, Lcom/vivo/push/util/a;

    invoke-direct {v3}, Lcom/vivo/push/util/a;-><init>()V

    .line 62
    iget-object v4, p0, Lcom/vivo/push/c/t;->a:Landroid/content/Context;

    const-string v5, "com.vivo.push_preferences.hybridapptoken_v1"

    invoke-virtual {v3, v4, v5}, Lcom/vivo/push/util/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v3}, Lcom/vivo/push/util/a;->a()V

    .line 66
    new-instance v3, Lcom/vivo/push/util/a;

    invoke-direct {v3}, Lcom/vivo/push/util/a;-><init>()V

    .line 67
    iget-object v4, p0, Lcom/vivo/push/c/t;->a:Landroid/content/Context;

    const-string v5, "com.vivo.push_preferences.appconfig_v1"

    invoke-virtual {v3, v4, v5}, Lcom/vivo/push/util/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v3}, Lcom/vivo/push/util/a;->a()V

    .line 70
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v3

    .line 4263
    iget-boolean v3, v3, Lcom/vivo/push/d;->j:Z

    if-nez v3, :cond_16a

    .line 72
    iget-object v3, p0, Lcom/vivo/push/c/t;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->getInstance(Landroid/content/Context;)Lcom/vivo/push/cache/ClientConfigManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->clearPush()V

    goto/16 :goto_16a

    .line 46
    :cond_c7
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v3

    .line 1263
    iget-boolean v3, v3, Lcom/vivo/push/d;->j:Z

    if-eqz v3, :cond_16a

    .line 47
    iget-object v3, p0, Lcom/vivo/push/c/t;->a:Landroid/content/Context;

    .line 2027
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2028
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2029
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.vivo.push.sdk.service.CommandService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2030
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    .line 2031
    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v8, "ModuleUtil"

    const/4 v9, 0x2

    if-eqz v4, :cond_11b

    .line 2032
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_fe

    goto :goto_11b

    .line 2036
    :cond_fe
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 2037
    new-instance v11, Landroid/content/ComponentName;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2038
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    if-eq v3, v9, :cond_120

    .line 2040
    invoke-virtual {v10, v11, v9, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_120

    :cond_11b
    :goto_11b
    const-string v3, "disableDeprecatedService is null"

    .line 2033
    invoke-static {v8, v3}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_120
    :goto_120
    iget-object v3, p0, Lcom/vivo/push/c/t;->a:Landroid/content/Context;

    .line 2051
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2052
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2053
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.vivo.push.sdk.service.LinkProxyActivity"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2054
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 2055
    invoke-virtual {v10, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_165

    .line 2056
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_148

    goto :goto_165

    .line 2060
    :cond_148
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 2061
    new-instance v8, Landroid/content/ComponentName;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2062
    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    if-eq v3, v9, :cond_16a

    .line 2064
    invoke-virtual {v6, v8, v9, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_16a

    :cond_165
    :goto_165
    const-string v3, "disableDeprecatedActivity is null"

    .line 2057
    invoke-static {v8, v3}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16a
    :goto_16a
    if-nez v0, :cond_181

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ; pushPkgInfo is Null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7023
    :cond_181
    iget-object v3, v0, Lcom/vivo/push/model/b;->a:Ljava/lang/String;

    .line 7038
    iget-boolean v0, v0, Lcom/vivo/push/model/b;->e:Z

    if-eqz v0, :cond_1ad

    .line 103
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    check-cast p1, Lcom/vivo/push/b/c;

    .line 7114
    iget-object p1, p1, Lcom/vivo/push/b/c;->e:Ljava/lang/String;

    const/16 v4, 0x3ec

    .line 103
    invoke-virtual {v0, p1, v4}, Lcom/vivo/push/d;->a(Ljava/lang/String;I)V

    .line 104
    new-instance p1, Lcom/vivo/push/b/e;

    invoke-direct {p1}, Lcom/vivo/push/b/e;-><init>()V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ; pkgName is InBlackList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1ad
    iget-object v0, p0, Lcom/vivo/push/c/t;->a:Landroid/content/Context;

    invoke-static {v0, v3, p1}, Lcom/vivo/push/a/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/vivo/push/g;)V

    return-void

    nop

    :pswitch_data_1b4
    .packed-switch 0x7d2
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
.end method
