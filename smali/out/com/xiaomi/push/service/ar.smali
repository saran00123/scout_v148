.class Lcom/xiaomi/push/service/ar;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/ar$a;,
        Lcom/xiaomi/push/service/ar$b;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/push/service/ar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/xiaomi/push/service/ar;

    invoke-direct {v0}, Lcom/xiaomi/push/service/ar;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/ar;->a:Lcom/xiaomi/push/service/ar;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupSummary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    return p1
.end method

.method public static a()Lcom/xiaomi/push/service/ar;
    .registers 1

    sget-object v0, Lcom/xiaomi/push/service/ar;->a:Lcom/xiaomi/push/service/ar;

    return-object v0
.end method

.method private a(Landroid/app/Notification;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_f

    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_f

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "push_src_group_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/xiaomi/push/service/au;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/push/service/au;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/xiaomi/push/service/au;->b()Ljava/util/List;

    move-result-object p1

    goto :goto_9

    :cond_8
    move-object p1, v0

    :goto_9
    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_13

    :cond_12
    return-object p1

    :cond_13
    :goto_13
    return-object v0
.end method

.method private a(Landroid/content/Context;ILandroid/app/Notification;Z)V
    .registers 12

    invoke-static {p3}, Lcom/xiaomi/push/service/av;->c(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "group auto not extract pkg from notification:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1b
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void

    :cond_1f
    invoke-static {p1, v0}, Lcom/xiaomi/push/service/au;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/service/au;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/ar;->a(Lcom/xiaomi/push/service/au;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2c

    const-string p1, "group auto not get notifications"

    goto :goto_1b

    :cond_2c
    invoke-direct {p0, p3}, Lcom/xiaomi/push/service/ar;->b(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    if-nez v5, :cond_4c

    goto :goto_39

    :cond_4c
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    if-eq v5, p2, :cond_39

    invoke-direct {p0, v3, v4}, Lcom/xiaomi/push/service/ar;->a(Ljava/util/Map;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_39

    :cond_56
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5e
    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_77

    goto :goto_5e

    :cond_77
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/push/service/ar$a;

    if-eqz p4, :cond_9e

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    invoke-direct {p0, p3}, Lcom/xiaomi/push/service/ar;->b(Landroid/app/Notification;)Z

    move-result v5

    if-nez v5, :cond_9e

    new-instance v5, Lcom/xiaomi/push/service/ar$b;

    invoke-direct {v5, p0, p2, p3}, Lcom/xiaomi/push/service/ar$b;-><init>(Lcom/xiaomi/push/service/ar;ILandroid/app/Notification;)V

    invoke-direct {p0, p3}, Lcom/xiaomi/push/service/ar;->a(Landroid/app/Notification;)Z

    move-result v6

    if-eqz v6, :cond_99

    iget-object v6, v3, Lcom/xiaomi/push/service/ar$a;->b:Ljava/util/List;

    goto :goto_9b

    :cond_99
    iget-object v6, v3, Lcom/xiaomi/push/service/ar$a;->a:Ljava/util/List;

    :goto_9b
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9e
    iget-object v5, v3, Lcom/xiaomi/push/service/ar$a;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, v3, Lcom/xiaomi/push/service/ar$a;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_c0

    if-eqz p4, :cond_5e

    const/4 v6, 0x2

    if-lt v5, v6, :cond_5e

    iget-object v3, v3, Lcom/xiaomi/push/service/ar$a;->a:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/push/service/ar$b;

    iget-object v3, v3, Lcom/xiaomi/push/service/ar$b;->a:Landroid/app/Notification;

    invoke-direct {p0, p1, v0, v4, v3}, Lcom/xiaomi/push/service/ar;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/Notification;)V

    goto :goto_5e

    :cond_c0
    if-gtz v5, :cond_5e

    invoke-direct {p0, p1, v0, v4}, Lcom/xiaomi/push/service/ar;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    :cond_c6
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group cancel summary:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/push/service/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-static {p1, p2}, Lcom/xiaomi/push/service/au;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/service/au;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/xiaomi/push/service/au;->a(I)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/Notification;)V
    .registers 11

    const-string v0, "GroupSummary"

    const-string v1, "groupSummary"

    :try_start_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string p1, "group show summary group is null"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void

    :cond_10
    invoke-static {p1, p2}, Lcom/xiaomi/push/service/av;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "group show summary not get icon from "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void

    :cond_2b
    invoke-static {p1, p2}, Lcom/xiaomi/push/service/au;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/service/au;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_5a

    invoke-virtual {p4}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4, v1}, Lcom/xiaomi/push/service/au;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4}, Lcom/xiaomi/push/service/au;->a(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    if-nez v4, :cond_54

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v4, "group_summary"

    const/4 v5, 0x3

    invoke-direct {v1, p4, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v3, v1}, Lcom/xiaomi/push/service/au;->a(Landroid/app/NotificationChannel;)V

    :cond_54
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1, p4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_69

    :cond_5a
    new-instance p4, Landroid/app/Notification$Builder;

    invoke-direct {p4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p4

    const/4 v1, -0x1

    invoke-virtual {p4, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    :goto_69
    const/4 p4, 0x1

    invoke-static {v1, p4}, Lcom/xiaomi/push/service/av;->a(Landroid/app/Notification$Builder;Z)Z

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {p2, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object p4

    invoke-virtual {p4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p4

    invoke-static {}, Lcom/xiaomi/push/l;->c()Z

    move-result v0

    if-nez v0, :cond_a2

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    invoke-static {p4, p2}, Lcom/xiaomi/push/service/av;->a(Landroid/app/Notification;Ljava/lang/String;)V

    :cond_a2
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/push/service/ar;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1, p4}, Lcom/xiaomi/push/service/au;->a(ILandroid/app/Notification;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "group show summary notify:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_bd} :catch_be

    goto :goto_d3

    :catch_be
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "group show summary error "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :goto_d3
    return-void
.end method

.method private a(Ljava/util/Map;Landroid/service/notification/StatusBarNotification;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/push/service/ar$a;",
            ">;",
            "Landroid/service/notification/StatusBarNotification;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/ar;->b(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/service/ar$a;

    if-nez v1, :cond_19

    new-instance v1, Lcom/xiaomi/push/service/ar$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/push/service/ar$a;-><init>(Lcom/xiaomi/push/service/ar;Lcom/xiaomi/push/service/as;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    new-instance p1, Lcom/xiaomi/push/service/ar$b;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-direct {p1, p0, v0, v2}, Lcom/xiaomi/push/service/ar$b;-><init>(Lcom/xiaomi/push/service/ar;ILandroid/app/Notification;)V

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/ar;->a(Landroid/app/Notification;)Z

    move-result p2

    if-eqz p2, :cond_33

    iget-object p2, v1, Lcom/xiaomi/push/service/ar$a;->b:Ljava/util/List;

    goto :goto_35

    :cond_33
    iget-object p2, v1, Lcom/xiaomi/push/service/ar$a;->a:Ljava/util/List;

    :goto_35
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private a(Landroid/app/Notification;)Z
    .registers 4

    if-eqz p1, :cond_16

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    const-string v1, "isGroupSummary"

    invoke-static {p1, v1, v0}, Lcom/xiaomi/push/bj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/content/Context;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/ar;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {p1}, Lcom/xiaomi/push/service/au;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-static {p1}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object p1

    sget-object v0, Lcom/xiaomi/push/ia;->aX:Lcom/xiaomi/push/ia;

    invoke-virtual {v0}, Lcom/xiaomi/push/ia;->a()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/service/ax;->a(IZ)Z

    move-result p1

    return p1
.end method

.method private b(Landroid/app/Notification;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-virtual {p1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/ar;->b(Landroid/app/Notification;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/ar;->a(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method private b(Landroid/content/Context;ILandroid/app/Notification;)V
    .registers 9

    invoke-static {p3}, Lcom/xiaomi/push/service/av;->c(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "group restore not extract pkg from notification:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1b
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void

    :cond_1f
    invoke-static {p1, p3}, Lcom/xiaomi/push/service/au;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/service/au;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/xiaomi/push/service/ar;->a(Lcom/xiaomi/push/service/au;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2c

    const-string p1, "group restore not get notifications"

    goto :goto_1b

    :cond_2c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_30
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    if-nez v2, :cond_43

    goto :goto_30

    :cond_43
    invoke-direct {p0, v2}, Lcom/xiaomi/push/service/ar;->b(Landroid/app/Notification;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-eq v3, p2, :cond_30

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/xiaomi/push/service/ar;->a(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-direct {p0, v2}, Lcom/xiaomi/push/service/ar;->a(Landroid/app/Notification;)Z

    move-result v2

    invoke-static {v3, v2}, Lcom/xiaomi/push/service/av;->a(Landroid/app/Notification$Builder;Z)Z

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lcom/xiaomi/push/service/au;->a(ILandroid/app/Notification;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group restore notification:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    goto :goto_30

    :cond_89
    return-void
.end method

.method private b(Landroid/app/Notification;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_e

    goto :goto_35

    :cond_e
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "push_src_group_time"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/ar;->a(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object v3, v4, v0

    const-string v0, "pushmask_%s_%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_35
    :goto_35
    return v0
.end method

.method private b(Landroid/content/Context;)Z
    .registers 4

    invoke-static {p1}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object p1

    sget-object v0, Lcom/xiaomi/push/ia;->aW:Lcom/xiaomi/push/ia;

    invoke-virtual {v0}, Lcom/xiaomi/push/ia;->a()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/service/ax;->a(IZ)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-direct {p0}, Lcom/xiaomi/push/service/ar;->a()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/ar;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "push_src_group_name"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "push_src_group_time"

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x1

    aput-object p3, p1, p2

    const-string p2, "pushmask_%s_%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_32
    return-object p3
.end method

.method public a(Landroid/content/Context;ILandroid/app/Notification;)V
    .registers 7

    invoke-direct {p0}, Lcom/xiaomi/push/service/ar;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/ar;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    :try_start_d
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/ar;->b(Landroid/content/Context;ILandroid/app/Notification;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_26

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group notify handle restore error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_26
    :goto_26
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/ar;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    :try_start_2d
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/push/service/ar;->a(Landroid/content/Context;ILandroid/app/Notification;Z)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_46

    :catch_31
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "group notify handle auto error "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_46
    :goto_46
    return-void
.end method
