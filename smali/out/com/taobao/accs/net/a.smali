.class public Lcom/taobao/accs/net/a;
.super Lcom/taobao/accs/net/f;
.source "Taobao"


# instance fields
.field private c:Landroid/app/PendingIntent;

.field private d:Landroid/app/AlarmManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 27
    invoke-direct {p0, p1}, Lcom/taobao/accs/net/f;-><init>(Landroid/content/Context;)V

    .line 29
    :try_start_3
    iget-object p1, p0, Lcom/taobao/accs/net/a;->a:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/taobao/accs/net/a;->d:Landroid/app/AlarmManager;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_f} :catch_10

    goto :goto_19

    :catch_10
    move-exception p1

    const/4 v0, 0x0

    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AlarmHeartBeatMgr"

    invoke-static {v1, v1, p1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_19
    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 6

    .line 38
    iget-object v0, p0, Lcom/taobao/accs/net/a;->d:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 39
    iget-object v0, p0, Lcom/taobao/accs/net/a;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/taobao/accs/net/a;->d:Landroid/app/AlarmManager;

    .line 42
    :cond_10
    iget-object v0, p0, Lcom/taobao/accs/net/a;->d:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    .line 43
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "AlarmHeartBeatMgr"

    const-string v1, "setInner null"

    invoke-static {v0, v1, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 47
    :cond_1f
    iget-object v0, p0, Lcom/taobao/accs/net/a;->c:Landroid/app/PendingIntent;

    if-nez v0, :cond_56

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    iget-object v2, p0, Lcom/taobao/accs/net/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.taobao.accs.intent.action.COMMAND"

    .line 50
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0xc9

    const-string v3, "command"

    .line 51
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_4e

    .line 53
    iget-object v2, p0, Lcom/taobao/accs/net/a;->a:Landroid/content/Context;

    const/high16 v3, 0x4000000

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/a;->c:Landroid/app/PendingIntent;

    goto :goto_56

    .line 55
    :cond_4e
    iget-object v2, p0, Lcom/taobao/accs/net/a;->a:Landroid/content/Context;

    invoke-static {v2, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/a;->c:Landroid/app/PendingIntent;

    .line 58
    :cond_56
    :goto_56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xd

    .line 60
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 61
    iget-object p1, p0, Lcom/taobao/accs/net/a;->d:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/taobao/accs/net/a;->c:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method
