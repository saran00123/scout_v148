.class final Lcom/vivo/push/c/m$5;
.super Ljava/lang/Object;
.source "OnNotificationClickTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/push/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/vivo/push/c/m;


# direct methods
.method constructor <init>(Lcom/vivo/push/c/m;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    .line 183
    iput-object p1, p0, Lcom/vivo/push/c/m$5;->d:Lcom/vivo/push/c/m;

    iput-object p2, p0, Lcom/vivo/push/c/m$5;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/vivo/push/c/m$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/push/c/m$5;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    const-string v0, "OnNotificationClickTask"

    .line 186
    iget-object v1, p0, Lcom/vivo/push/c/m$5;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/vivo/push/c/m$5;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 188
    iget-object v1, p0, Lcom/vivo/push/c/m$5;->b:Ljava/lang/String;

    .line 190
    :cond_12
    iget-object v2, p0, Lcom/vivo/push/c/m$5;->a:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const/16 v3, 0x64

    .line 192
    :try_start_1e
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 194
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 195
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 196
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "topClassName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 201
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10200000

    .line 202
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 203
    iget-object v2, p0, Lcom/vivo/push/c/m$5;->c:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/vivo/push/c/m;->a(Landroid/content/Intent;Ljava/util/Map;)Landroid/content/Intent;

    .line 204
    iget-object v2, p0, Lcom/vivo/push/c/m$5;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_6c} :catch_6d

    return-void

    :catch_6d
    move-exception v1

    const-string v2, "start recentIntent is error"

    .line 210
    invoke-static {v0, v2, v1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    :cond_73
    iget-object v1, p0, Lcom/vivo/push/c/m$5;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/push/c/m$5;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_84

    iget-object v2, p0, Lcom/vivo/push/c/m$5;->b:Ljava/lang/String;

    goto :goto_8a

    :cond_84
    iget-object v2, p0, Lcom/vivo/push/c/m$5;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_8a
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_a0

    const/high16 v0, 0x10000000

    .line 215
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    iget-object v0, p0, Lcom/vivo/push/c/m$5;->c:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/vivo/push/c/m;->a(Landroid/content/Intent;Ljava/util/Map;)Landroid/content/Intent;

    .line 217
    iget-object v0, p0, Lcom/vivo/push/c/m$5;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_a0
    const-string v1, "LaunchIntent is null"

    .line 219
    invoke-static {v0, v1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
