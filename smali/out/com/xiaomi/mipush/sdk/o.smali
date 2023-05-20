.class public Lcom/xiaomi/mipush/sdk/o;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V
    .registers 9

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/ao;->a()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/ec;->a(Landroid/content/Context;)Lcom/xiaomi/push/ec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/ec;->a()Lcom/xiaomi/push/eg;

    move-result-object v0

    if-nez v0, :cond_5b

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/ec;->a(Landroid/content/Context;)Lcom/xiaomi/push/ec;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/push/ia;->aF:Lcom/xiaomi/push/ia;

    invoke-virtual {v4}, Lcom/xiaomi/push/ia;->a()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/push/service/ax;->a(II)I

    move-result v3

    new-instance v4, Lcom/xiaomi/mipush/sdk/c;

    invoke-direct {v4}, Lcom/xiaomi/mipush/sdk/c;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/ec;->a(Ljava/lang/String;Ljava/lang/String;ILcom/xiaomi/push/eg;)V

    invoke-static {p0}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/q;

    const/16 v2, 0x66

    const-string v3, "awake online config"

    invoke-direct {v1, v2, v3, p0}, Lcom/xiaomi/mipush/sdk/q;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/ax;->a(Lcom/xiaomi/push/service/ax$a;)V

    :cond_5b
    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_70

    if-eqz p1, :cond_70

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/push/ec;->a(Landroid/content/Context;)Lcom/xiaomi/push/ec;

    move-result-object p2

    sget-object v0, Lcom/xiaomi/push/ee;->a:Lcom/xiaomi/push/ee;

    :goto_6c
    invoke-virtual {p2, v0, p0, p1, v1}, Lcom/xiaomi/push/ec;->a(Lcom/xiaomi/push/ee;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_b5

    :cond_70
    instance-of v0, p0, Landroid/app/Service;

    if-eqz v0, :cond_98

    if-eqz p1, :cond_98

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.xiaomi.mipush.sdk.WAKEUP"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8d

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/push/ec;->a(Landroid/content/Context;)Lcom/xiaomi/push/ec;

    move-result-object p2

    sget-object v0, Lcom/xiaomi/push/ee;->c:Lcom/xiaomi/push/ee;

    goto :goto_6c

    :cond_8d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/push/ec;->a(Landroid/content/Context;)Lcom/xiaomi/push/ec;

    move-result-object p2

    sget-object v0, Lcom/xiaomi/push/ee;->b:Lcom/xiaomi/push/ee;

    goto :goto_6c

    :cond_98
    if-eqz p2, :cond_b5

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/ec;->a(Landroid/content/Context;)Lcom/xiaomi/push/ec;

    move-result-object p1

    sget-object v0, Lcom/xiaomi/push/ee;->d:Lcom/xiaomi/push/ee;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p0, v1, p2}, Lcom/xiaomi/push/ec;->a(Lcom/xiaomi/push/ee;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_b5
    :goto_b5
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/push/iu;)V
    .registers 6

    invoke-static {p0}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/ia;->aG:Lcom/xiaomi/push/ia;

    invoke-virtual {v1}, Lcom/xiaomi/push/ia;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/ax;->a(IZ)Z

    move-result v0

    invoke-static {p0}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v1

    sget-object v3, Lcom/xiaomi/push/ia;->aH:Lcom/xiaomi/push/ia;

    invoke-virtual {v3}, Lcom/xiaomi/push/ia;->a()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/push/service/ax;->a(II)I

    move-result v1

    const/16 v3, 0x1e

    if-ltz v1, :cond_29

    if-ge v1, v3, :cond_29

    const-string v1, "aw_ping: frquency need > 30s."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    move v1, v3

    :cond_29
    if-gez v1, :cond_2c

    move v0, v2

    :cond_2c
    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result v2

    if-nez v2, :cond_36

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/mipush/sdk/o;->a(Landroid/content/Context;Lcom/xiaomi/push/jg;ZI)V

    goto :goto_48

    :cond_36
    if-eqz v0, :cond_48

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/mipush/sdk/p;

    invoke-direct {v2, p1, p0}, Lcom/xiaomi/mipush/sdk/p;-><init>(Lcom/xiaomi/push/iu;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/push/ak;->a(Lcom/xiaomi/push/ak$a;I)Z

    :cond_48
    :goto_48
    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/xiaomi/push/jg;ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaomi/push/jg<",
            "TT;*>;>(",
            "Landroid/content/Context;",
            "TT;ZI)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;)[B

    move-result-object p1

    if-nez p1, :cond_c

    const-string p0, "send message fail, because msgBytes is null."

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "action_help_ping"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_help_ping_switch"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "extra_help_ping_frequency"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "mipush_payload"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string p2, "com.xiaomi.mipush.MESSAGE_CACHE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "aw_ping : send aw_ping cmd and content to push service from 3rd app"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "awake_info"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x270f

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "event_type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "description"

    const-string v1, "ping message"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/xiaomi/push/iu;

    invoke-direct {p1}, Lcom/xiaomi/push/iu;-><init>()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaomi/push/iu;->b(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaomi/push/iu;->d(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    sget-object v1, Lcom/xiaomi/push/if;->I:Lcom/xiaomi/push/if;

    iget-object v1, v1, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/xiaomi/push/iu;->c(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    invoke-static {}, Lcom/xiaomi/push/service/ba;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaomi/push/iu;->a(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    iput-object v0, p1, Lcom/xiaomi/push/iu;->a:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/o;->a(Landroid/content/Context;Lcom/xiaomi/push/iu;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/xiaomi/push/iu;

    invoke-direct {v0}, Lcom/xiaomi/push/iu;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/iu;->b(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/iu;->a(Ljava/util/Map;)Lcom/xiaomi/push/iu;

    invoke-virtual {v0}, Lcom/xiaomi/push/iu;->a()Ljava/util/Map;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "extra_aw_app_online_cmd"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xiaomi/push/iu;->a()Ljava/util/Map;

    move-result-object p1

    const-string p2, "extra_help_aw_info"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/push/service/ba;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/iu;->a(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    invoke-static {v0}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;)[B

    move-result-object p1

    if-nez p1, :cond_39

    const-string p0, "send message fail, because msgBytes is null."

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void

    :cond_39
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "action_aw_app_logic"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "mipush_payload"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Intent;)V

    return-void
.end method
