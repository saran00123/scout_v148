.class public Lcom/huawei/hms/push/p;
.super Ljava/lang/Thread;
.source "PushSelfShowThread.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/huawei/hms/push/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/push/k;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/push/p;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/huawei/hms/push/p;->b:Lcom/huawei/hms/push/k;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/huawei/hms/push/k;)Landroid/content/Intent;
    .registers 7

    const-string v0, "PushSelfShowLog"

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return-object v1

    .line 1
    :cond_6
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/huawei/hms/push/q;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->n()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_62

    .line 3
    :try_start_14
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->n()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_48

    const-string v4, "Intent.parseUri(msg.intentUri, 0), action:"

    :try_start_27
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Lcom/huawei/hms/push/q;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_44} :catch_48

    if-eqz p0, :cond_87

    move-object v2, v3

    goto :goto_87

    :catch_48
    move-exception p0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intentUri error,"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    .line 8
    :cond_62
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 9
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/huawei/hms/push/q;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_80

    move-object v2, v0

    .line 11
    :cond_80
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_87
    :goto_87
    return-object v2
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/huawei/hms/push/p;->b:Lcom/huawei/hms/push/k;

    invoke-virtual {v0}, Lcom/huawei/hms/push/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hms/push/q;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b(Landroid/content/Context;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/p;->b:Lcom/huawei/hms/push/k;

    invoke-virtual {v0}, Lcom/huawei/hms/push/k;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cosa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {p0, p1}, Lcom/huawei/hms/push/p;->a(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Landroid/content/Context;Lcom/huawei/hms/push/k;)Z
    .registers 5

    .line 3
    invoke-virtual {p2}, Lcom/huawei/hms/push/k;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cosa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4
    invoke-static {p1, p2}, Lcom/huawei/hms/push/p;->a(Landroid/content/Context;Lcom/huawei/hms/push/k;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1b

    const-string p1, "PushSelfShowLog"

    const-string p2, "launchCosaApp,intent == null"

    .line 5
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    return p1
.end method

.method public run()V
    .registers 4

    const-string v0, "PushSelfShowLog"

    const-string v1, "enter run()"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_7
    iget-object v1, p0, Lcom/huawei/hms/push/p;->a:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/huawei/hms/push/p;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/push/p;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/hms/push/p;->b:Lcom/huawei/hms/push/k;

    invoke-virtual {p0, v1, v2}, Lcom/huawei/hms/push/p;->b(Landroid/content/Context;Lcom/huawei/hms/push/k;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-void

    .line 4
    :cond_1a
    iget-object v1, p0, Lcom/huawei/hms/push/p;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/hms/push/p;->b:Lcom/huawei/hms/push/k;

    invoke-static {v1, v2}, Lcom/huawei/hms/push/o;->a(Landroid/content/Context;Lcom/huawei/hms/push/k;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_21} :catch_22

    goto :goto_2a

    :catch_22
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    return-void
.end method
