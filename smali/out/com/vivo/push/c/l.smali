.class public final Lcom/vivo/push/c/l;
.super Lcom/vivo/push/c/o;
.source "OnNotificationArrivedReceiveTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/push/c/l$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/vivo/push/g;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/vivo/push/c/o;-><init>(Lcom/vivo/push/g;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/push/c/l;)Landroid/content/Context;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/vivo/push/c/l;Ljava/lang/String;)V
    .registers 5

    .line 4192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "1"

    const-string v2, "srt"

    .line 4193
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message_id"

    .line 4194
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4195
    iget-object p1, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/vivo/push/util/y;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4196
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_28

    const-string p1, "app_id"

    .line 4197
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    const-string p0, "type"

    .line 4199
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "dtp"

    .line 4200
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p0, 0x6

    .line 4201
    invoke-static {p0, p1, v0}, Lcom/vivo/push/util/d;->a(JLjava/util/HashMap;)Z

    return-void
.end method

.method static synthetic a(Lcom/vivo/push/c/l;Ljava/lang/String;I)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/vivo/push/c/l;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 5

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "messageID"

    .line 179
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object p1, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/vivo/push/util/y;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "remoteAppId"

    .line 182
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    int-to-long p1, p2

    .line 184
    invoke-static {p1, p2, v0}, Lcom/vivo/push/util/d;->a(JLjava/util/HashMap;)Z

    return-void
.end method

.method static synthetic b(Lcom/vivo/push/c/l;)Landroid/content/Context;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/vivo/push/c/l;)Landroid/content/Context;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/vivo/push/c/l;)Landroid/content/Context;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/vivo/push/c/l;)Landroid/content/Context;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/vivo/push/c/l;)Landroid/content/Context;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lcom/vivo/push/c/l;)Landroid/content/Context;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic h(Lcom/vivo/push/c/l;)Landroid/content/Context;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/vivo/push/c/l;)Landroid/content/Context;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic j(Lcom/vivo/push/c/l;)Landroid/content/Context;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected final a(Lcom/vivo/push/g;)V
    .registers 9

    const-string v0, "OnNotificationArrivedTask"

    if-nez p1, :cond_a

    const-string p1, "command is null"

    .line 41
    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 44
    :cond_a
    iget-object v1, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->getInstance(Landroid/content/Context;)Lcom/vivo/push/cache/ClientConfigManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->isEnablePush()Z

    move-result v1

    .line 45
    check-cast p1, Lcom/vivo/push/b/q;

    .line 1022
    iget-wide v2, p1, Lcom/vivo/push/b/v;->e:J

    .line 47
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.vivo.pushservice.action.RECEIVE"

    .line 1442
    invoke-static {v3, v4, v5}, Lcom/vivo/push/util/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32

    const/16 p1, 0x835

    .line 51
    invoke-direct {p0, v2, p1}, Lcom/vivo/push/c/l;->a(Ljava/lang/String;I)V

    return-void

    .line 55
    :cond_32
    new-instance v3, Lcom/vivo/push/b/h;

    .line 2022
    iget-wide v4, p1, Lcom/vivo/push/b/v;->e:J

    .line 55
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vivo/push/b/h;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PushMessageReceiver "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isEnablePush :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_6b

    const/16 p1, 0x3fc

    .line 60
    invoke-direct {p0, v2, p1}, Lcom/vivo/push/c/l;->a(Ljava/lang/String;I)V

    return-void

    .line 63
    :cond_6b
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v1

    .line 2286
    iget-boolean v1, v1, Lcom/vivo/push/d;->f:Z

    if-eqz v1, :cond_8b

    .line 63
    iget-object v1, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/push/util/y;->d(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vivo/push/b/q;->c()Ljava/lang/String;

    move-result-object v3

    .line 3030
    iget-object v4, p1, Lcom/vivo/push/b/v;->d:Ljava/lang/String;

    .line 63
    invoke-virtual {p0, v1, v3, v4}, Lcom/vivo/push/c/l;->a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8b

    const/16 p1, 0x3fd

    .line 64
    invoke-direct {p0, v2, p1}, Lcom/vivo/push/c/l;->a(Ljava/lang/String;I)V

    return-void

    .line 68
    :cond_8b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_112

    .line 71
    iget-object v1, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const-string v3, "pkg name : "

    if-eqz v1, :cond_cd

    .line 73
    invoke-virtual {v1}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v4

    if-nez v4, :cond_cd

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " notify switch is false"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p1, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    const-string/jumbo v0, "\u901a\u77e5\u5f00\u5173\u5173\u95ed\uff0c\u5bfc\u81f4\u901a\u77e5\u65e0\u6cd5\u5c55\u793a\uff0c\u8bf7\u5230\u8bbe\u7f6e\u9875\u6253\u5f00\u5e94\u7528\u901a\u77e5\u5f00\u5173"

    invoke-static {p1, v0}, Lcom/vivo/push/util/n;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p1, 0x838

    .line 77
    invoke-direct {p0, v2, p1}, Lcom/vivo/push/c/l;->a(Ljava/lang/String;I)V

    return-void

    .line 82
    :cond_cd
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_112

    if-eqz v1, :cond_112

    :try_start_d5
    const-string/jumbo v4, "vivo_push_channel"

    .line 85
    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_112

    .line 86
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-nez v1, :cond_112

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " notify channel switch is false"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    const-string/jumbo v3, "\u901a\u77e5\u901a\u9053\u5f00\u5173\u5173\u95ed\uff0c\u5bfc\u81f4\u901a\u77e5\u65e0\u6cd5\u5c55\u793a\uff0c\u8bf7\u5230\u8bbe\u7f6e\u9875\u6253\u5f00\u5e94\u7528\u901a\u77e5\u5f00\u5173"

    invoke-static {v1, v3}, Lcom/vivo/push/util/n;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v1, 0x849

    .line 89
    invoke-direct {p0, v2, v1}, Lcom/vivo/push/c/l;->a(Ljava/lang/String;I)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_10b} :catch_10c

    return-void

    :catch_10c
    const-string/jumbo v1, "\u5224\u65ad\u901a\u77e5\u901a\u9053\u51fa\u73b0\u7cfb\u7edf\u9519\u8bef"

    .line 93
    invoke-static {v0, v1}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_112
    invoke-virtual {p1}, Lcom/vivo/push/b/q;->b()Lcom/vivo/push/model/InsideNotificationItem;

    move-result-object v1

    if-eqz v1, :cond_142

    .line 102
    invoke-virtual {v1}, Lcom/vivo/push/model/InsideNotificationItem;->getTargetType()I

    move-result v3

    .line 103
    invoke-virtual {v1}, Lcom/vivo/push/model/InsideNotificationItem;->getTragetContent()Ljava/lang/String;

    move-result-object v4

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "targetType is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ; target is "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v0, Lcom/vivo/push/c/l$1;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/vivo/push/c/l$1;-><init>(Lcom/vivo/push/c/l;Lcom/vivo/push/model/InsideNotificationItem;Ljava/lang/String;Lcom/vivo/push/b/q;)V

    invoke-static {v0}, Lcom/vivo/push/f;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_142
    const-string v1, "notify is null"

    .line 153
    invoke-static {v0, v1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/vivo/push/c/l;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u901a\u77e5\u5185\u5bb9\u4e3a\u7a7a\uff0c"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4022
    iget-wide v3, p1, Lcom/vivo/push/b/v;->e:J

    .line 154
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->c(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p1, 0x403

    .line 155
    invoke-direct {p0, v2, p1}, Lcom/vivo/push/c/l;->a(Ljava/lang/String;I)V

    return-void
.end method
