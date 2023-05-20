.class public Lcom/xiaomi/push/service/aj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/aj$c;,
        Lcom/xiaomi/push/service/aj$b;,
        Lcom/xiaomi/push/service/aj$a;
    }
.end annotation


# static fields
.field public static a:J

.field private static volatile a:Lcom/xiaomi/push/service/ap;

.field private static final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/xiaomi/push/ir;",
            ">;>;"
        }
    .end annotation
.end field

.field private static a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/aj;->a:Ljava/util/LinkedList;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/service/aj;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    const-string v0, "pref_notify_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const v0, 0x7fffffff

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "drawable"

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/push/service/aj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-static {p0, p1}, Lcom/xiaomi/push/service/l;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/content/ComponentName;->hashCode()I

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/util/Map;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_c

    :cond_4
    const-string v0, "timeout"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_c
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    :try_start_13
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return v1
.end method

.method private static a(Landroid/app/Notification;)Landroid/app/Notification;
    .registers 5

    const-string v0, "extraNotification"

    invoke-static {p0, v0}, Lcom/xiaomi/push/bj;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "setCustomizedIcon"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/bj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/push/ir;Ljava/lang/String;[BI)Landroid/app/PendingIntent;
    .registers 12

    invoke-static {p0, p1, p2}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;Ljava/lang/String;)Z

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;Ljava/lang/String;[BIIZ)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/push/ir;Ljava/lang/String;[BIIZ)Landroid/app/PendingIntent;
    .registers 23

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->c(Lcom/xiaomi/push/ir;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v2, 0x3e8

    goto :goto_19

    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xbb8

    goto :goto_19

    :cond_18
    const/4 v2, -0x1

    :goto_19
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Lcom/xiaomi/push/ii;->a()Ljava/lang/String;

    move-result-object v4

    goto :goto_26

    :cond_24
    const-string v4, ""

    :goto_26
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Z

    move-result v5

    const-string v7, "eventMessageType"

    const-string v8, "messageId"

    const/high16 v9, 0x2000000

    const/high16 v10, 0x8000000

    const/16 v11, 0x1f

    const/4 v12, 0x0

    if-eqz v3, :cond_a5

    iget-object v13, v3, Lcom/xiaomi/push/ii;->e:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a5

    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/xiaomi/push/ii;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_4f
    new-instance v5, Ljava/net/URL;

    iget-object v13, v3, Lcom/xiaomi/push/ii;->e:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    const-string v13, "http"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6f

    const-string v13, "https"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    goto :goto_6f

    :cond_6b
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8c

    :cond_6f
    :goto_6f
    invoke-static {v6, v1}, Lcom/xiaomi/push/service/av;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_72
    .catch Ljava/net/MalformedURLException; {:try_start_4f .. :try_end_72} :catch_73

    goto :goto_8c

    :catch_73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "meet URL exception : "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/xiaomi/push/ii;->e:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_8c
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_a0

    invoke-static {v6, v12, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_a0
    invoke-static {v6, v12, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_a5
    const/4 v13, 0x1

    const-string v14, "mipush_notified"

    const-string v15, "mipush_payload"

    const-string v10, "com.xiaomi.mipush.sdk.PushMessageHandler"

    if-eqz v5, :cond_be

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    new-instance v12, Landroid/content/ComponentName;

    const-string v11, "com.xiaomi.xmsf"

    invoke-direct {v12, v11, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_cd

    :cond_be
    new-instance v9, Landroid/content/Intent;

    const-string v11, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v11, Landroid/content/ComponentName;

    invoke-direct {v11, v0, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_cd
    invoke-virtual {v9, v15, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {v9, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notification_click_button"

    move/from16 v10, p5

    invoke-virtual {v9, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v9, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v9, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v5, :cond_140

    if-eqz p6, :cond_140

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-static/range {p2 .. p2}, Lcom/xiaomi/push/service/aj;->a(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10800000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "mipush_serviceIntent"

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaomi/push/ir;Lcom/xiaomi/push/ii;Ljava/lang/String;I)V

    invoke-static {v7}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Intent;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_138

    const/high16 v0, 0x2000000

    const/4 v1, 0x0

    invoke-static {v6, v1, v7, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_138
    const/high16 v0, 0x8000000

    const/4 v1, 0x0

    invoke-static {v6, v1, v7, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_140
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p1

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaomi/push/ir;Lcom/xiaomi/push/ii;Ljava/lang/String;I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_158

    const/high16 v0, 0x2000000

    const/4 v1, 0x0

    invoke-static {v6, v1, v9, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_158
    const/high16 v0, 0x8000000

    const/4 v1, 0x0

    invoke-static {v6, v1, v9, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/push/ir;[BII)Landroid/app/PendingIntent;
    .registers 15

    invoke-virtual {p2}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    invoke-static {p0, p2, p1}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v8}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;Ljava/lang/String;[BIIZ)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_33

    :cond_1d
    invoke-static {p0, p1, v0, p5}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_33

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1f

    const/4 p4, 0x0

    if-lt p2, p3, :cond_2d

    const/high16 p2, 0x2000000

    goto :goto_2f

    :cond_2d
    const/high16 p2, 0x8000000

    :goto_2f
    invoke-static {p0, p4, p1, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :cond_33
    :goto_33
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.xiaomi.mipush.sdk.NotificationClickedActivity"

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Landroid/content/Intent;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    invoke-static {p2}, Lcom/xiaomi/push/service/aj;->b(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_48

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "cust_btn_%s_ne"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "cust_btn_%s_iu"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "cust_btn_%s_ic"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v3

    const-string p3, "cust_btn_%s_wu"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v4 .. v10}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_48
    if-eq p3, v1, :cond_85

    const/4 v0, 0x2

    if-eq p3, v0, :cond_75

    const/4 v0, 0x3

    if-eq p3, v0, :cond_65

    const/4 v0, 0x4

    if-eq p3, v0, :cond_55

    const/4 p0, 0x0

    return-object p0

    :cond_55
    const-string v3, "notification_colorful_button_notify_effect"

    const-string v4, "notification_colorful_button_intent_uri"

    const-string v5, "notification_colorful_button_intent_class"

    const-string v6, "notification_colorful_button_web_uri"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_65
    const-string v3, "notification_style_button_right_notify_effect"

    const-string v4, "notification_style_button_right_intent_uri"

    const-string v5, "notification_style_button_right_intent_class"

    const-string v6, "notification_style_button_right_web_uri"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_75
    const-string v3, "notification_style_button_mid_notify_effect"

    const-string v4, "notification_style_button_mid_intent_uri"

    const-string v5, "notification_style_button_mid_intent_class"

    const-string v6, "notification_style_button_mid_web_uri"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_85
    const-string v3, "notification_style_button_left_notify_effect"

    const-string v4, "notification_style_button_left_intent_uri"

    const-string v5, "notification_style_button_left_intent_class"

    const-string v6, "notification_style_button_left_web_uri"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return-object v1

    :cond_e
    sget-object v0, Lcom/xiaomi/push/service/bh;->a:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Cause: "

    if-eqz v0, :cond_3c

    :try_start_18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_20} :catch_23

    move-object p2, p1

    goto/16 :goto_108

    :catch_23
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    goto/16 :goto_107

    :cond_3c
    sget-object v0, Lcom/xiaomi/push/service/bh;->b:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {p2, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_6e

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_107

    const/4 p4, 0x1

    :try_start_53
    invoke-static {p2, p4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2
    :try_end_57
    .catch Ljava/net/URISyntaxException; {:try_start_53 .. :try_end_57} :catch_5e

    :try_start_57
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5a
    .catch Ljava/net/URISyntaxException; {:try_start_57 .. :try_end_5a} :catch_5c

    goto/16 :goto_108

    :catch_5c
    move-exception p1

    goto :goto_60

    :catch_5e
    move-exception p1

    move-object p2, v1

    :goto_60
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_fc

    :cond_6e
    invoke-interface {p2, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_107

    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    new-instance p5, Landroid/content/ComponentName;

    invoke-direct {p5, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object p2, p4

    goto/16 :goto_108

    :cond_8a
    sget-object p1, Lcom/xiaomi/push/service/bh;->c:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_107

    invoke-interface {p2, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_107

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "http://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_c1

    const-string p4, "https://"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_c1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_c1
    :try_start_c1
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string p4, "http"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_da

    const-string p4, "https"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_107

    :cond_da
    new-instance p2, Landroid/content/Intent;

    const-string p4, "android.intent.action.VIEW"

    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_e1
    .catch Ljava/net/MalformedURLException; {:try_start_c1 .. :try_end_e1} :catch_ee

    :try_start_e1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0, p2}, Lcom/xiaomi/push/service/av;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_eb
    .catch Ljava/net/MalformedURLException; {:try_start_e1 .. :try_end_eb} :catch_ec

    goto :goto_108

    :catch_ec
    move-exception p1

    goto :goto_f0

    :catch_ee
    move-exception p1

    move-object p2, v1

    :goto_f0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_fc
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    goto :goto_108

    :cond_107
    :goto_107
    move-object p2, v1

    :goto_108
    if-eqz p2, :cond_162

    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_10f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 p4, 0x10000

    invoke-virtual {p1, p2, p4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_11c

    return-object p2

    :cond_11c
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1e

    if-lt p1, p4, :cond_131

    invoke-static {p0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_131

    sget-object p0, Lcom/xiaomi/push/service/bh;->c:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_131

    return-object p2

    :cond_131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "not resolve activity:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "for buttons"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_14a} :catch_14b

    goto :goto_162

    :catch_14b
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    :cond_162
    :goto_162
    return-object v1
.end method

.method private static a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/push/service/aj;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 5

    sget-object v0, Lcom/xiaomi/push/service/aj;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/push/service/aj$a;

    invoke-direct {v1, p1, p0, p2}, Lcom/xiaomi/push/service/aj$a;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const-wide/16 p1, 0xb4

    const/4 v0, 0x1

    :try_start_e
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, p2, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_16} :catch_22
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_e .. :try_end_16} :catch_20
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_16} :catch_1e
    .catchall {:try_start_e .. :try_end_16} :catchall_1c

    if-nez p1, :cond_2a

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_2a

    :catchall_1c
    move-exception p1

    goto :goto_2b

    :catch_1e
    move-exception p1

    goto :goto_23

    :catch_20
    move-exception p1

    goto :goto_23

    :catch_22
    move-exception p1

    :goto_23
    :try_start_23
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_1c

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 p1, 0x0

    :cond_2a
    :goto_2a
    return-object p1

    :goto_2b
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    throw p1
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_13

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v2, :cond_1b

    move v1, v2

    :cond_1b
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/push/ir;[B)Landroid/widget/RemoteViews;
    .registers 12

    const-string p2, "time"

    const-string v0, "image"

    const-string v1, "text"

    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v2

    invoke-static {p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz v2, :cond_fa

    invoke-virtual {v2}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_19

    goto/16 :goto_fa

    :cond_19
    invoke-virtual {v2}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v2

    const-string v4, "layout_name"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "layout_value"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_fa

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3b

    goto/16 :goto_fa

    :cond_3b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_3f
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_43} :catch_f6

    const-string v5, "layout"

    invoke-virtual {p0, v4, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4c

    return-object v3

    :cond_4c
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-direct {v5, p1, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :try_start_51
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_51 .. :try_end_5a} :catch_f1

    const-string v6, "id"

    if-eqz v2, :cond_80

    :try_start_5e
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_66
    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v6, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_66

    invoke-virtual {v5, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_66

    :cond_80
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_8e
    :goto_8e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v6, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v8, "drawable"

    invoke-virtual {p0, v7, v8, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-lez v2, :cond_8e

    invoke-virtual {v5, v2, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_8e

    :cond_ae
    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f0

    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_bc
    :goto_bc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_d4

    const-string v2, "yy-MM-dd hh:mm"

    :cond_d4
    invoke-virtual {p0, v1, v6, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_bc

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_ef
    .catch Lorg/json/JSONException; {:try_start_5e .. :try_end_ef} :catch_f1

    goto :goto_bc

    :cond_f0
    return-object v5

    :catch_f1
    move-exception p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    return-object v3

    :catch_f6
    move-exception p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_fa
    :goto_fa
    return-object v3
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/push/ir;[BLjava/lang/String;I)Lcom/xiaomi/push/fd;
    .registers 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v6

    const-string v0, "notification_style_type"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    sget-object v2, Lcom/xiaomi/push/service/aj;->a:Lcom/xiaomi/push/service/ap;

    if-eqz v2, :cond_26

    sget-object v2, Lcom/xiaomi/push/service/aj;->a:Lcom/xiaomi/push/service/ap;

    invoke-virtual {v2, p0, p4, v1, v6}, Lcom/xiaomi/push/service/ap;->a(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/push/fd;

    move-result-object v2

    goto :goto_27

    :cond_26
    move-object v2, v3

    :goto_27
    if-eqz v2, :cond_2e

    invoke-virtual {v2, v6}, Lcom/xiaomi/push/fd;->a(Ljava/util/Map;)Lcom/xiaomi/push/fd;

    goto/16 :goto_15a

    :cond_2e
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_73

    new-instance v2, Lcom/xiaomi/push/fd;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/fd;-><init>(Landroid/content/Context;)V

    const-string p1, "notification_bigPic_uri"

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4c

    move-object p0, v3

    goto :goto_56

    :cond_4c
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1, v7}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_56
    if-nez p0, :cond_5e

    const-string p0, "can not get big picture."

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-object v2

    :cond_5e
    new-instance p1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {p1, v2}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {p1, p0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {p1, p3}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v2, p1}, Lcom/xiaomi/push/fd;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto/16 :goto_15a

    :cond_73
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    new-instance v2, Lcom/xiaomi/push/fd;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/fd;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p0, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/xiaomi/push/fd;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto/16 :goto_15a

    :cond_8e
    const-string p3, "4"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_dc

    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result p3

    if-eqz p3, :cond_dc

    new-instance v2, Lcom/xiaomi/push/fc;

    invoke-direct {v2, p0, v1}, Lcom/xiaomi/push/fc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "notification_banner_image_uri"

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_bc

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1, v7}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/xiaomi/push/fc;->a(Landroid/graphics/Bitmap;)Lcom/xiaomi/push/fc;

    :cond_bc
    const-string p1, "notification_banner_icon_uri"

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d7

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1, v7}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/xiaomi/push/fc;->b(Landroid/graphics/Bitmap;)Lcom/xiaomi/push/fc;

    :cond_d7
    invoke-virtual {v2, v6}, Lcom/xiaomi/push/fc;->a(Ljava/util/Map;)Lcom/xiaomi/push/fd;

    goto/16 :goto_15a

    :cond_dc
    const-string p3, "3"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_155

    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result p3

    if-eqz p3, :cond_155

    new-instance p3, Lcom/xiaomi/push/fe;

    invoke-direct {p3, p0, p4, v1}, Lcom/xiaomi/push/fe;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    const-string v8, "notification_colorful_button_text"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11d

    const/4 v5, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/push/ir;[BII)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_11d

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p3, p2, p1}, Lcom/xiaomi/push/fe;->a(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/xiaomi/push/fe;

    move-result-object p1

    const-string p2, "notification_colorful_button_bg_color"

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/xiaomi/push/fe;->a(Ljava/lang/String;)Lcom/xiaomi/push/fe;

    :cond_11d
    const-string p1, "notification_colorful_bg_color"

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_135

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p3, p0}, Lcom/xiaomi/push/fe;->b(Ljava/lang/String;)Lcom/xiaomi/push/fe;

    goto :goto_150

    :cond_135
    const-string p1, "notification_colorful_bg_image_uri"

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_150

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1, v7}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/xiaomi/push/fe;->a(Landroid/graphics/Bitmap;)Lcom/xiaomi/push/fe;

    :cond_150
    :goto_150
    invoke-virtual {p3, v6}, Lcom/xiaomi/push/fe;->a(Ljava/util/Map;)Lcom/xiaomi/push/fd;

    move-object v2, p3

    goto :goto_15a

    :cond_155
    new-instance v2, Lcom/xiaomi/push/fd;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/fd;-><init>(Landroid/content/Context;)V

    :goto_15a
    return-object v2
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/push/ir;[BLandroid/widget/RemoteViews;Landroid/app/PendingIntent;I)Lcom/xiaomi/push/service/aj$b;
    .registers 33
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p3

    new-instance v8, Lcom/xiaomi/push/service/aj$b;

    invoke-direct {v8}, Lcom/xiaomi/push/service/aj$b;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v11

    invoke-static {v7, v9}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Lcom/xiaomi/push/ii;)[Ljava/lang/String;

    move-result-object v12

    const-string v13, "notification_style_type"

    const/4 v14, 0x1

    if-eqz v0, :cond_2e

    new-instance v1, Lcom/xiaomi/push/fd;

    invoke-direct {v1, v7}, Lcom/xiaomi/push/fd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/fd;->a(Landroid/widget/RemoteViews;)Lcom/xiaomi/push/fd;

    move-object/from16 v15, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    move-object v4, v1

    goto :goto_4f

    :cond_2e
    if-eqz v11, :cond_43

    invoke-interface {v11, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    aget-object v0, v12, v14

    move-object/from16 v15, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    invoke-static {v7, v15, v5, v0, v6}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;[BLjava/lang/String;I)Lcom/xiaomi/push/fd;

    move-result-object v0

    goto :goto_4e

    :cond_43
    move-object/from16 v15, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    new-instance v0, Lcom/xiaomi/push/fd;

    invoke-direct {v0, v7}, Lcom/xiaomi/push/fd;-><init>(Landroid/content/Context;)V

    :goto_4e
    move-object v4, v0

    :goto_4f
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->b()Ljava/lang/String;

    move-result-object v3

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v14, v4

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/fd;Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/push/ir;[BI)V

    const/4 v1, 0x0

    aget-object v0, v12, v1

    invoke-virtual {v14, v0}, Lcom/xiaomi/push/fd;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v2, 0x1

    aget-object v0, v12, v2

    invoke-virtual {v14, v0}, Lcom/xiaomi/push/fd;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v14, v3, v4}, Lcom/xiaomi/push/fd;->setWhen(J)Landroid/app/Notification$Builder;

    const-string v0, "notification_show_when"

    invoke-static {v11, v0}, Lcom/xiaomi/push/service/aj;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v6, 0x18

    if-eqz v5, :cond_89

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_90

    invoke-virtual {v14, v2}, Lcom/xiaomi/push/fd;->setShowWhen(Z)Landroid/app/Notification$Builder;

    goto :goto_90

    :cond_89
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v14, v0}, Lcom/xiaomi/push/fd;->setShowWhen(Z)Landroid/app/Notification$Builder;

    :cond_90
    :goto_90
    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Lcom/xiaomi/push/fd;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const-string v0, "mipush_notification"

    invoke-static {v7, v10, v0}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v2, "mipush_small_notification"

    invoke-static {v7, v10, v2}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x17

    if-lez v0, :cond_b2

    if-lez v2, :cond_b2

    invoke-static {v7, v0}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/xiaomi/push/fd;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    invoke-virtual {v14, v2}, Lcom/xiaomi/push/fd;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_f8

    :cond_b2
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_de

    const-string v0, "fcm_icon_uri"

    invoke-static {v11, v0}, Lcom/xiaomi/push/service/aj;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "fcm_icon_color"

    invoke-static {v11, v2}, Lcom/xiaomi/push/service/aj;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_de

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_de

    invoke-static {v7, v10, v0}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_de

    invoke-virtual {v14, v0}, Lcom/xiaomi/push/fd;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v14, v2}, Lcom/xiaomi/push/fd;->a(Ljava/lang/String;)Lcom/xiaomi/push/fd;

    const/4 v0, 0x1

    goto :goto_df

    :cond_de
    move v0, v1

    :goto_df
    if-nez v0, :cond_f8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_f1

    invoke-static {v7, v10}, Lcom/xiaomi/push/service/av;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v10, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/xiaomi/push/fd;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    goto :goto_f8

    :cond_f1
    invoke-static {v7, v10}, Lcom/xiaomi/push/service/aj;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/xiaomi/push/fd;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :cond_f8
    :goto_f8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_167

    const-string v0, "notification_small_icon_uri"

    if-nez v11, :cond_103

    const/4 v5, 0x0

    const/4 v12, 0x1

    goto :goto_10e

    :cond_103
    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v12, 0x1

    invoke-static {v7, v5, v12}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_10e
    if-eqz v5, :cond_146

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v5, v2, v1

    const-string v5, "android.graphics.drawable.Icon"

    const-string v6, "createWithBitmap"

    invoke-static {v5, v6, v2}, Lcom/xiaomi/push/bj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_135

    new-array v0, v12, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v2, "setSmallIcon"

    invoke-static {v14, v2, v0}, Lcom/xiaomi/push/bj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "miui.isGrayscaleIcon"

    invoke-virtual {v0, v2, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v14, v0}, Lcom/xiaomi/push/fd;->a(Landroid/os/Bundle;)Lcom/xiaomi/push/fd;

    goto :goto_15e

    :cond_135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed te get small icon with url:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_154

    :cond_146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to get small icon url:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v0}, Lcom/xiaomi/push/service/aj;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_154
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :goto_15e
    const-string v0, "notification_small_icon_color"

    invoke-static {v11, v0}, Lcom/xiaomi/push/service/aj;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/xiaomi/push/fd;->a(Ljava/lang/String;)Lcom/xiaomi/push/fd;

    :cond_167
    const-string v0, "__dynamic_icon_uri"

    invoke-static {v11, v0}, Lcom/xiaomi/push/service/aj;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "__adiom"

    invoke-static {v11, v2}, Lcom/xiaomi/push/service/aj;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_182

    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result v2

    if-nez v2, :cond_180

    goto :goto_182

    :cond_180
    move v2, v1

    goto :goto_183

    :cond_182
    :goto_182
    const/4 v2, 0x1

    :goto_183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1ae

    if-eqz v2, :cond_1ae

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/4 v2, 0x1

    invoke-static {v7, v0, v2}, Lcom/xiaomi/push/service/at;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/xiaomi/push/service/at$b;

    move-result-object v0

    if-eqz v0, :cond_1a1

    iget-object v2, v0, Lcom/xiaomi/push/service/at$b;->a:Landroid/graphics/Bitmap;

    iget-wide v5, v0, Lcom/xiaomi/push/service/at$b;->a:J

    iput-wide v5, v8, Lcom/xiaomi/push/service/aj$b;->a:J

    goto :goto_1a7

    :cond_1a1
    const/4 v2, 0x0

    goto :goto_1a7

    :cond_1a3
    invoke-static {v7, v0}, Lcom/xiaomi/push/service/at;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1a7
    if-eqz v2, :cond_1ae

    invoke-virtual {v14, v2}, Lcom/xiaomi/push/fd;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    const/4 v2, 0x1

    goto :goto_1af

    :cond_1ae
    move v2, v1

    :goto_1af
    if-nez v11, :cond_1b3

    const/4 v0, 0x0

    goto :goto_1c0

    :cond_1b3
    const-string v0, "notification_large_icon_uri"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v7, v0, v5}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1c0
    if-eqz v0, :cond_1c5

    invoke-virtual {v14, v0}, Lcom/xiaomi/push/fd;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_1c5
    const-string v5, "com.xiaomi.xmsf"

    if-eqz v11, :cond_252

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v0, v6, :cond_252

    const-string v0, "notification_group"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "notification_is_summary"

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v12, "notification_group_disable_default"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_201

    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result v16

    if-nez v16, :cond_1fd

    if-nez v12, :cond_201

    :cond_1fd
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v0

    :cond_201
    move-object/from16 p2, v0

    const/4 v12, 0x1

    new-array v0, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v0, v1

    const-string v12, "setGroupSummary"

    invoke-static {v14, v12, v0}, Lcom/xiaomi/push/bj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24d

    const-string v12, "4"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_231

    const-string v12, "3"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24d

    :cond_231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_custom_"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    const/4 v1, 0x1

    const/4 v12, 0x1

    goto :goto_256

    :cond_24d
    move-object/from16 v13, p2

    move v12, v1

    const/4 v1, 0x1

    goto :goto_256

    :cond_252
    move v6, v1

    move v12, v6

    const/4 v1, 0x1

    const/4 v13, 0x0

    :goto_256
    invoke-virtual {v14, v1}, Lcom/xiaomi/push/fd;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz v11, :cond_270

    const-string v15, "ticker"

    invoke-interface {v11, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_270

    invoke-interface {v11, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Lcom/xiaomi/push/fd;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_270
    sget-wide v16, Lcom/xiaomi/push/service/aj;->a:J

    sub-long v16, v0, v16

    const-wide/16 v18, 0x2710

    cmp-long v15, v16, v18

    move-object/from16 v16, v8

    const-string v8, "sound_uri"

    move/from16 p3, v2

    if-lez v15, :cond_2c7

    sput-wide v0, Lcom/xiaomi/push/service/aj;->a:J

    iget v0, v9, Lcom/xiaomi/push/ii;->a:I

    invoke-static {v7, v10}, Lcom/xiaomi/push/service/aj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28e

    invoke-static {v7, v10}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :cond_28e
    invoke-virtual {v14, v0}, Lcom/xiaomi/push/fd;->setDefaults(I)Landroid/app/Notification$Builder;

    if-eqz v11, :cond_2c9

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2c9

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2c9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c9

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v14, v2}, Lcom/xiaomi/push/fd;->setDefaults(I)Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/xiaomi/push/fd;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    goto :goto_2c9

    :cond_2c7
    const/16 v0, -0x64

    :cond_2c9
    :goto_2c9
    const-string v1, "0"

    const/16 v2, 0x1a

    if-eqz v11, :cond_3c1

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v15, v2, :cond_3c1

    invoke-static {v7, v10}, Lcom/xiaomi/push/service/au;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/service/au;

    move-result-object v17

    invoke-static {v11}, Lcom/xiaomi/push/service/aj;->a(Ljava/util/Map;)I

    move-result v15

    if-lez v15, :cond_2f5

    move-object/from16 v25, v5

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    mul-int/lit16 v15, v15, 0x3e8

    move v2, v12

    move-object/from16 v26, v13

    int-to-long v12, v15

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v5, v13

    const-string v12, "setTimeoutAfter"

    invoke-static {v14, v12, v5}, Lcom/xiaomi/push/bj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2fa

    :cond_2f5
    move-object/from16 v25, v5

    move v2, v12

    move-object/from16 v26, v13

    :goto_2fa
    invoke-static {v9}, Lcom/xiaomi/push/service/aq;->a(Lcom/xiaomi/push/ii;)V

    const-string v5, "channel_id"

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_317

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v12, 0x1a

    if-lt v5, v12, :cond_394

    :cond_317
    invoke-static {v7, v10, v11}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v19

    invoke-static {v11}, Lcom/xiaomi/push/service/aj;->b(Ljava/util/Map;)I

    move-result v22

    iget v5, v9, Lcom/xiaomi/push/ii;->a:I

    const-string v9, "channel_description"

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v20, v9

    check-cast v20, Ljava/lang/String;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v23, v8

    check-cast v23, Ljava/lang/String;

    const-string v8, "channel_perm"

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v24, v8

    check-cast v24, Ljava/lang/String;

    invoke-static {v7, v11, v14, v3, v4}, Lcom/xiaomi/push/service/bz;->a(Landroid/content/Context;Ljava/util/Map;Lcom/xiaomi/push/fd;J)V

    move/from16 v21, v5

    invoke-static/range {v17 .. v24}, Lcom/xiaomi/push/service/aq;->a(Lcom/xiaomi/push/service/au;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v5, v4

    const-string v3, "setChannelId"

    invoke-static {v14, v3, v5}, Lcom/xiaomi/push/bj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, -0x64

    if-ne v0, v3, :cond_35e

    invoke-static {v11}, Lcom/xiaomi/push/service/av;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_35e

    invoke-static {v14, v6}, Lcom/xiaomi/push/service/av;->a(Landroid/app/Notification$Builder;Z)Z

    :cond_35e
    invoke-static {v11}, Lcom/xiaomi/push/service/av;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "pulldown"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37f

    invoke-static {v11}, Lcom/xiaomi/push/service/av;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_37f

    const-string v0, "pull_down_pop_type"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37f

    invoke-static {v14, v6}, Lcom/xiaomi/push/service/av;->a(Landroid/app/Notification$Builder;Z)Z

    :cond_37f
    invoke-static {v11}, Lcom/xiaomi/push/service/av;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "tts"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_394

    invoke-static {v11}, Lcom/xiaomi/push/service/av;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_394

    invoke-static {v14, v6}, Lcom/xiaomi/push/service/av;->a(Landroid/app/Notification$Builder;Z)Z

    :cond_394
    const-string v0, "background_color"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3e1

    :try_start_3a2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Lcom/xiaomi/push/fd;->setOngoing(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v14, v0}, Lcom/xiaomi/push/fd;->setColor(I)Landroid/app/Notification$Builder;

    const-string v0, "setColorized"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v3, 0x0

    aput-object v5, v4, v3

    invoke-static {v14, v0, v4}, Lcom/xiaomi/push/bj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3bb
    .catch Ljava/lang/Exception; {:try_start_3a2 .. :try_end_3bb} :catch_3bc

    goto :goto_3e1

    :catch_3bc
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto :goto_3e1

    :cond_3c1
    move-object/from16 v25, v5

    move v2, v12

    move-object/from16 v26, v13

    if-eqz v11, :cond_3e1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_3e1

    invoke-static {v11}, Lcom/xiaomi/push/service/aj;->c(Ljava/util/Map;)I

    move-result v0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v4, v3

    const-string v0, "setPriority"

    invoke-static {v14, v0, v4}, Lcom/xiaomi/push/bj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e1
    :goto_3e1
    if-eqz v26, :cond_3fe

    if-nez v2, :cond_3f0

    invoke-static {}, Lcom/xiaomi/push/service/ar;->a()Lcom/xiaomi/push/service/ar;

    move-result-object v0

    move-object/from16 v2, v26

    invoke-virtual {v0, v7, v14, v2}, Lcom/xiaomi/push/service/ar;->a(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_3f3

    :cond_3f0
    move-object/from16 v2, v26

    move-object v13, v2

    :goto_3f3
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v13, v0, v2

    const-string v2, "setGroup"

    invoke-static {v14, v2, v0}, Lcom/xiaomi/push/bj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3fe
    invoke-static {}, Lcom/xiaomi/push/l;->c()Z

    move-result v0

    if-eqz v0, :cond_427

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_427

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v0, v2

    const/4 v2, 0x1

    aput-object v14, v0, v2

    const/4 v2, 0x2

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "miui.util.NotificationHelper"

    const-string v3, "setTargetPkg"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/push/bj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_427
    invoke-virtual {v14}, Lcom/xiaomi/push/fd;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz p3, :cond_436

    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result v2

    if-eqz v2, :cond_436

    invoke-static {v0}, Lcom/xiaomi/push/service/aj;->a(Landroid/app/Notification;)Landroid/app/Notification;

    :cond_436
    if-eqz v11, :cond_4c0

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_443

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    :cond_443
    const-string v2, "enable_keyguard"

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45e

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/av;->b(Landroid/app/Notification;Z)V

    :cond_45e
    const-string v2, "enable_float"

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_479

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/av;->a(Landroid/app/Notification;Z)V

    :cond_479
    const-string v2, "float_small_win"

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49f

    const-string v2, "float_small_win"

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49f

    invoke-static {v7, v10}, Lcom/xiaomi/push/g;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49f

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/av;->a(Landroid/app/Notification;Z)V

    :cond_49f
    const-string v1, "section_is_prr"

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/xiaomi/push/v;->a(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "section_prr_cl"

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/xiaomi/push/v;->a(Ljava/lang/String;I)I

    move-result v2

    if-ltz v1, :cond_4c0

    if-ltz v2, :cond_4c0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/av;->a(Landroid/app/Notification;II)V

    :cond_4c0
    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/xiaomi/push/service/aj$b;->a:Landroid/app/Notification;

    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/push/ir;[B)Lcom/xiaomi/push/service/aj$c;
    .registers 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    new-instance v9, Lcom/xiaomi/push/service/aj$c;

    invoke-direct {v9}, Lcom/xiaomi/push/service/aj$c;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    invoke-static {v7, v0, v10}, Lcom/xiaomi/push/g;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/xiaomi/push/g$a;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_23

    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->c()I

    move-result v1

    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v2

    move-object v13, v2

    goto :goto_25

    :cond_23
    const/4 v1, 0x0

    move-object v13, v12

    :goto_25
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/xiaomi/push/v;->b(Ljava/lang/String;I)I

    move-result v14

    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_83

    sget-object v1, Lcom/xiaomi/push/g$a;->c:Lcom/xiaomi/push/g$a;

    if-ne v0, v1, :cond_83

    if-eqz v11, :cond_65

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->b(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "10:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not notify because user block "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u2018s notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7f
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-object v9

    :cond_83
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_ca

    sget-object v0, Lcom/xiaomi/push/service/aj;->a:Lcom/xiaomi/push/service/ap;

    if-eqz v0, :cond_ca

    sget-object v0, Lcom/xiaomi/push/service/aj;->a:Lcom/xiaomi/push/service/ap;

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v14, v1, v13}, Lcom/xiaomi/push/service/ap;->a(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_ca

    if-eqz v11, :cond_c7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->b(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "14:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c7
    const-string v0, "Do not notify because card notification is canceled or sequence incorrect"

    goto :goto_7f

    :cond_ca
    invoke-static/range {p0 .. p2}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;[B)Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->b()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p2

    invoke-static {v7, v8, v0, v3, v14}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;Ljava/lang/String;[BI)Landroid/app/PendingIntent;

    move-result-object v5

    if-nez v5, :cond_f8

    if-eqz v11, :cond_f5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->b(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "11"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f5
    const-string v0, "The click PendingIntent is null. "

    goto :goto_7f

    :cond_f8
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v6, v14

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;[BLandroid/widget/RemoteViews;Landroid/app/PendingIntent;I)Lcom/xiaomi/push/service/aj$b;

    move-result-object v0

    iget-wide v1, v0, Lcom/xiaomi/push/service/aj$b;->a:J

    iput-wide v1, v9, Lcom/xiaomi/push/service/aj$c;->a:J

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/xiaomi/push/service/aj$c;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/xiaomi/push/service/aj$b;->a:Landroid/app/Notification;

    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result v0

    if-eqz v0, :cond_19b

    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12a

    iget-object v0, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "message_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12a
    iget-object v0, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "local_paid"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "msg_busi_type"

    invoke-static {v13, v0, v2}, Lcom/xiaomi/push/service/av;->a(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v0, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "disable_notification_flags"

    invoke-static {v13, v0, v2}, Lcom/xiaomi/push/service/av;->a(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->b()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_14b

    move-object v0, v12

    goto :goto_157

    :cond_14b
    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->b()Ljava/util/Map;

    move-result-object v0

    const-string v2, "score_info"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_164

    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "score_info"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_164
    iget-object v0, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v2, v11, Lcom/xiaomi/push/ii;->a:Ljava/util/Map;

    const-string v3, "n_stats_expose"

    invoke-static {v2, v3}, Lcom/xiaomi/push/service/aj;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pushUid"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->c(Lcom/xiaomi/push/ir;)Z

    move-result v2

    if-eqz v2, :cond_17d

    const/16 v0, 0x3e8

    goto :goto_185

    :cond_17d
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Z

    move-result v2

    if-eqz v2, :cond_185

    const/16 v0, 0xbb8

    :cond_185
    :goto_185
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "eventMessageType"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "target_package"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19b
    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1a3

    move-object v0, v12

    goto :goto_1af

    :cond_1a3
    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v0

    const-string v2, "message_count"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1af
    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result v2

    if-eqz v2, :cond_1ef

    if-eqz v0, :cond_1ef

    :try_start_1b7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/av;->a(Landroid/app/Notification;I)V
    :try_end_1be
    .catch Ljava/lang/NumberFormatException; {:try_start_1b7 .. :try_end_1be} :catch_1bf

    goto :goto_1ef

    :catch_1bf
    move-exception v0

    if-eqz v11, :cond_1db

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->b(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "8"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/xiaomi/push/en;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1db
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to set message count. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    :cond_1ef
    :goto_1ef
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/l;->c()Z

    move-result v2

    if-nez v2, :cond_202

    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_202

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/av;->a(Landroid/app/Notification;Ljava/lang/String;)V

    :cond_202
    invoke-static {v7, v0}, Lcom/xiaomi/push/service/au;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/service/au;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_219

    sget-object v3, Lcom/xiaomi/push/service/aj;->a:Lcom/xiaomi/push/service/ap;

    if-eqz v3, :cond_219

    sget-object v3, Lcom/xiaomi/push/service/aj;->a:Lcom/xiaomi/push/service/ap;

    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v8, v4, v14, v1}, Lcom/xiaomi/push/service/ap;->a(Lcom/xiaomi/push/ir;Ljava/util/Map;ILandroid/app/Notification;)V

    :cond_219
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_235

    sget-object v3, Lcom/xiaomi/push/service/aj;->a:Lcom/xiaomi/push/service/ap;

    if-eqz v3, :cond_235

    sget-object v3, Lcom/xiaomi/push/service/aj;->a:Lcom/xiaomi/push/service/ap;

    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4, v14, v1}, Lcom/xiaomi/push/service/ap;->a(Ljava/util/Map;ILandroid/app/Notification;)Z

    move-result v3

    if-eqz v3, :cond_235

    const-string v3, "consume this notificaiton by agent"

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    goto :goto_257

    :cond_235
    invoke-virtual {v2, v14, v1}, Lcom/xiaomi/push/service/au;->a(ILandroid/app/Notification;)V

    iput-boolean v10, v9, Lcom/xiaomi/push/service/aj$c;->a:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is notifyied"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :goto_257
    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result v3

    if-eqz v3, :cond_271

    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_271

    invoke-static {}, Lcom/xiaomi/push/service/ar;->a()Lcom/xiaomi/push/service/ar;

    move-result-object v3

    invoke-virtual {v3, v7, v14, v1}, Lcom/xiaomi/push/service/ar;->a(Landroid/content/Context;ILandroid/app/Notification;)V

    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v0, v14, v3, v1}, Lcom/xiaomi/push/service/bz;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    :cond_271
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Z

    move-result v0

    if-eqz v0, :cond_292

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->b()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->b(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->a()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0xbba

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_292
    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->c(Lcom/xiaomi/push/ir;)Z

    move-result v0

    if-eqz v0, :cond_2b3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/push/ir;->b()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/push/service/aj;->b(Lcom/xiaomi/push/ir;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->a()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x3ea

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_2b3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_2ef

    if-eqz v11, :cond_2bf

    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->a()Ljava/lang/String;

    move-result-object v12

    :cond_2bf
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object v0

    invoke-virtual {v11}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/aj;->a(Ljava/util/Map;)I

    move-result v1

    if-lez v1, :cond_2ef

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "n_timeout_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/push/ak;->a(Ljava/lang/String;)Z

    new-instance v4, Lcom/xiaomi/push/service/ak;

    invoke-direct {v4, v3, v2, v14}, Lcom/xiaomi/push/service/ak;-><init>(Ljava/lang/String;Lcom/xiaomi/push/service/au;I)V

    invoke-virtual {v0, v4, v1}, Lcom/xiaomi/push/ak;->b(Lcom/xiaomi/push/ak$a;I)Z

    :cond_2ef
    new-instance v0, Landroid/util/Pair;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/xiaomi/push/service/aj;->a:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_2fb
    sget-object v2, Lcom/xiaomi/push/service/aj;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/push/service/aj;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_30f

    sget-object v0, Lcom/xiaomi/push/service/aj;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    :cond_30f
    monitor-exit v1

    return-object v9

    :catchall_311
    move-exception v0

    monitor-exit v1
    :try_end_313
    .catchall {:try_start_2fb .. :try_end_313} :catchall_311

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p2, :cond_17

    const-string v0, "channel_name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_17
    invoke-static {p0, p1}, Lcom/xiaomi/push/g;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/xiaomi/push/ir;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ir;->b:Ljava/lang/String;

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "miui_package_name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    return-object v0

    :cond_29
    iget-object p0, p0, Lcom/xiaomi/push/ir;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Ljava/util/Map;I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_6

    const-string p1, "notify_effect"

    goto :goto_35

    :cond_6
    invoke-static {p0}, Lcom/xiaomi/push/service/aj;->b(Ljava/util/Map;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "cust_btn_%s_ne"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_35

    :cond_1d
    if-ne p1, v2, :cond_22

    const-string p1, "notification_style_button_left_notify_effect"

    goto :goto_35

    :cond_22
    const/4 v1, 0x2

    if-ne p1, v1, :cond_28

    const-string p1, "notification_style_button_mid_notify_effect"

    goto :goto_35

    :cond_28
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2e

    const-string p1, "notification_style_button_right_notify_effect"

    goto :goto_35

    :cond_2e
    const/4 v1, 0x4

    if-ne p1, v1, :cond_34

    const-string p1, "notification_colorful_button_notify_effect"

    goto :goto_35

    :cond_34
    move-object p1, v0

    :goto_35
    if-eqz p0, :cond_40

    if-eqz p1, :cond_40

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_40
    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_9

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaomi/push/ir;Lcom/xiaomi/push/ii;Ljava/lang/String;I)V
    .registers 8

    if-eqz p2, :cond_7e

    if-eqz p3, :cond_7e

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_7e

    :cond_b
    invoke-virtual {p3}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/xiaomi/push/service/aj;->a(Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7e

    sget-object v1, Lcom/xiaomi/push/service/bh;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    sget-object v1, Lcom/xiaomi/push/service/bh;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    sget-object v1, Lcom/xiaomi/push/service/bh;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    :cond_31
    const-string v0, "messageId"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p4, p2, Lcom/xiaomi/push/ir;->a:Ljava/lang/String;

    const-string v0, "local_paid"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p4, p2, Lcom/xiaomi/push/ir;->b:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4c

    iget-object p4, p2, Lcom/xiaomi/push/ir;->b:Ljava/lang/String;

    const-string v0, "target_package"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4c
    invoke-virtual {p3}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object p4

    const-string v0, "jobkey"

    invoke-static {p4, v0}, Lcom/xiaomi/push/service/aj;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "job_key"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "target_component"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object p2, p2, Lcom/xiaomi/push/ir;->b:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object p3

    invoke-static {p0, p2, p3, p5}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)I

    move-result p0

    invoke-virtual {p1, p4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_7e
    :goto_7e
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;II)V
    .registers 10

    if-eqz p0, :cond_6a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    const/4 v0, -0x1

    if-ge p2, v0, :cond_c

    goto :goto_6a

    :cond_c
    invoke-static {p0, p1}, Lcom/xiaomi/push/service/au;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/service/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/au;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/push/v;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1b

    return-void

    :cond_1b
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const/4 v4, 0x0

    if-ne p2, v0, :cond_25

    const/4 p1, 0x1

    goto :goto_31

    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p1, p2

    move v5, v4

    move v4, p1

    move p1, v5

    :goto_31
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_35
    :goto_35
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    if-eqz p1, :cond_5c

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/au;->a(I)V

    goto :goto_35

    :cond_5c
    if-ne v4, v2, :cond_35

    invoke-static {p0, v0, p3}, Lcom/xiaomi/push/service/d;->a(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;I)V

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/au;->a(I)V

    :cond_67
    invoke-static {p0, v3}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/util/LinkedList;)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    if-eqz p0, :cond_7c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_7c

    :cond_15
    invoke-static {p0, p1}, Lcom/xiaomi/push/service/au;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/service/au;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/push/service/au;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/v;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_24

    return-void

    :cond_24
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    if-nez v3, :cond_40

    goto :goto_2d

    :cond_40
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-static {v3}, Lcom/xiaomi/push/service/av;->a(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/xiaomi/push/service/av;->b(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2d

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2d

    invoke-static {v5, p2}, Lcom/xiaomi/push/service/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-static {v3, p3}, Lcom/xiaomi/push/service/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v4}, Lcom/xiaomi/push/service/au;->a(I)V

    goto :goto_2d

    :cond_79
    invoke-static {p0, v1}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/util/LinkedList;)V

    :cond_7c
    :goto_7c
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/LinkedList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedList<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    int-to-long v3, p1

    const-string v1, "category_clear_notification"

    const-string v2, "clear_notification"

    const-string v5, ""

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/push/service/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_17
    return-void
.end method

.method private static a(Landroid/content/Intent;)V
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "addMiuiFlags"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_37

    :catch_22
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert flags error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    :goto_37
    return-void
.end method

.method private static a(Lcom/xiaomi/push/fd;Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/push/ir;[BI)V
    .registers 18
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    move-object v0, p0

    invoke-virtual {p3}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "notification_style_type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "3"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d4

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "4"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto/16 :goto_d4

    :cond_29
    invoke-static {v1}, Lcom/xiaomi/push/service/aj;->b(Ljava/util/Map;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_65

    const/4 v2, 0x1

    move v10, v2

    :goto_32
    const/4 v4, 0x3

    if-gt v10, v4, :cond_64

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "cust_btn_%s_n"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_61

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move v9, v10

    invoke-static/range {v4 .. v9}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/push/ir;[BII)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_61

    invoke-virtual {p0, v3, v11, v4}, Lcom/xiaomi/push/fd;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_61
    add-int/lit8 v10, v10, 0x1

    goto :goto_32

    :cond_64
    return-void

    :cond_65
    const-string v2, "notification_style_button_left_name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8a

    const/4 v10, 0x1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v5 .. v10}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/push/ir;[BII)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_8a

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3, v2, v4}, Lcom/xiaomi/push/fd;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_8a
    const-string v2, "notification_style_button_mid_name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_af

    const/4 v10, 0x2

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v5 .. v10}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/push/ir;[BII)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_af

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3, v2, v4}, Lcom/xiaomi/push/fd;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_af
    const-string v2, "notification_style_button_right_name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d4

    const/4 v10, 0x3

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v5 .. v10}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/push/ir;[BII)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_d4

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3, v1, v4}, Lcom/xiaomi/push/fd;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_d4
    :goto_d4
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/push/ir;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v1

    if-eqz v1, :cond_3c

    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_3c

    :cond_1a
    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object p1

    const-string v1, "use_clicked_activity"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3b

    invoke-static {p2}, Lcom/xiaomi/push/service/aj;->a(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/push/service/l;->a(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_3b

    const/4 v0, 0x1

    :cond_3b
    return v0

    :cond_3c
    :goto_3c
    const-string p0, "should clicked activity params are null."

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_32

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_12

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lcom/xiaomi/push/ii;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_22

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const-string v1, "satuigmo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0
.end method

.method public static a(Lcom/xiaomi/push/ir;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ii;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/xiaomi/push/ii;->l()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static a(Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_18

    const-string v0, "notify_foreground"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_18

    :cond_b
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_18
    :goto_18
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/push/ii;)[Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/push/ii;->a()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_73

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, v2

    div-float/2addr v2, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->intValue()I

    move-result p0

    const/16 v2, 0x140

    if-gt p0, v2, :cond_51

    const-string p0, "title_short"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    move-object v0, p0

    :cond_42
    const-string p0, "description_short"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_73

    goto :goto_72

    :cond_51
    const/16 v2, 0x168

    if-le p0, v2, :cond_73

    const-string p0, "title_long"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_64

    move-object v0, p0

    :cond_64
    const-string p0, "description_long"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_73

    :goto_72
    move-object v1, p0

    :cond_73
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    const/4 p1, 0x1

    aput-object v1, p0, p1

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    const-string v0, "mipush_notification"

    invoke-static {p0, p1, v0}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "mipush_small_notification"

    invoke-static {p0, p1, v1}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez v0, :cond_f

    goto :goto_19

    :cond_f
    if-lez p1, :cond_13

    move v0, p1

    goto :goto_19

    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    :goto_19
    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->logo:I

    :cond_21
    return v0
.end method

.method private static b(Ljava/util/Map;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x3

    if-eqz p0, :cond_3f

    const-string v1, "channel_importance"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "importance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_29} :catch_2a

    goto :goto_3f

    :catch_2a
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsing channel importance error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    :cond_3f
    :goto_3f
    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Landroid/content/Intent;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    :cond_4
    if-eqz p3, :cond_b

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_b
    const-string p3, "notify_effect"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return-object v0

    :cond_14
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const/4 v1, -0x1

    const-string v2, "intent_flag"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_47

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_2d} :catch_2e

    goto :goto_47

    :catch_2e
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cause by intent_flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    :cond_47
    :goto_47
    sget-object v2, Lcom/xiaomi/push/service/bh;->a:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Cause: "

    if-eqz v2, :cond_75

    :try_start_51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_59} :catch_5c

    move-object p2, p1

    goto/16 :goto_143

    :catch_5c
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    goto/16 :goto_142

    :cond_75
    sget-object v2, Lcom/xiaomi/push/service/bh;->b:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    const-string v2, "intent_uri"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a9

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_142

    const/4 v2, 0x1

    :try_start_8e
    invoke-static {p2, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2
    :try_end_92
    .catch Ljava/net/URISyntaxException; {:try_start_8e .. :try_end_92} :catch_99

    :try_start_92
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_95
    .catch Ljava/net/URISyntaxException; {:try_start_92 .. :try_end_95} :catch_97

    goto/16 :goto_143

    :catch_97
    move-exception p1

    goto :goto_9b

    :catch_99
    move-exception p1

    move-object p2, v0

    :goto_9b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_137

    :cond_a9
    const-string v2, "class_name"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_142

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object p2, v2

    goto/16 :goto_143

    :cond_c7
    sget-object p1, Lcom/xiaomi/push/service/bh;->c:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_142

    const-string p1, "web_uri"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_142

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "http://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_fc

    const-string v2, "https://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_fc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_fc
    :try_start_fc
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string v2, "http"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_115

    const-string v2, "https"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_142

    :cond_115
    new-instance p2, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_11c
    .catch Ljava/net/MalformedURLException; {:try_start_fc .. :try_end_11c} :catch_129

    :try_start_11c
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0, p2}, Lcom/xiaomi/push/service/av;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_126
    .catch Ljava/net/MalformedURLException; {:try_start_11c .. :try_end_126} :catch_127

    goto :goto_143

    :catch_127
    move-exception p1

    goto :goto_12b

    :catch_129
    move-exception p1

    move-object p2, v0

    :goto_12b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_137
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    goto :goto_143

    :cond_142
    :goto_142
    move-object p2, v0

    :goto_143
    if-eqz p2, :cond_19d

    if-ltz v1, :cond_14a

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_14a
    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_14f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v1, 0x10000

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_15c

    return-object p2

    :cond_15c
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt p1, v1, :cond_171

    invoke-static {p0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_171

    sget-object p0, Lcom/xiaomi/push/service/bh;->c:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_171

    return-object p2

    :cond_171
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "not resolve activity:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_185} :catch_186

    goto :goto_19d

    :catch_186
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    :cond_19d
    :goto_19d
    return-object v0
.end method

.method public static b(Lcom/xiaomi/push/ir;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "E100002"

    return-object p0

    :cond_9
    invoke-static {p0}, Lcom/xiaomi/push/service/aj;->c(Lcom/xiaomi/push/ir;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "E100000"

    return-object p0

    :cond_12
    invoke-static {p0}, Lcom/xiaomi/push/service/aj;->b(Lcom/xiaomi/push/ir;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p0, "E100001"

    return-object p0

    :cond_1b
    invoke-static {p0}, Lcom/xiaomi/push/service/aj;->d(Lcom/xiaomi/push/ir;)Z

    move-result p0

    if-eqz p0, :cond_24

    const-string p0, "E100003"

    return-object p0

    :cond_24
    const-string p0, ""

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_16

    sget-object p0, Lcom/xiaomi/push/service/aj;->a:Lcom/xiaomi/push/service/ap;

    if-eqz p0, :cond_16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_16

    :cond_11
    sget-object p0, Lcom/xiaomi/push/service/aj;->a:Lcom/xiaomi/push/service/ap;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/ap;->a(Ljava/lang/String;)V

    :cond_16
    :goto_16
    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    const-string v0, "pref_notify_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "pref_notify_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/xiaomi/push/ir;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ii;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    iget v0, v0, Lcom/xiaomi/push/ii;->b:I

    if-ne v0, v2, :cond_16

    invoke-static {p0}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    return v2
.end method

.method private static b(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-nez p0, :cond_9

    const-string p0, "meta extra is null"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_9
    const-string v0, "notification_style_type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static c(Ljava/util/Map;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    const-string v1, "notification_priority"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_29} :catch_2a

    goto :goto_3f

    :catch_2a
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsing notification priority error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    :cond_3f
    :goto_3f
    return v0
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "pref_notify_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static c(Lcom/xiaomi/push/ir;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ii;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget v0, v0, Lcom/xiaomi/push/ii;->b:I

    if-nez v0, :cond_16

    invoke-static {p0}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static d(Lcom/xiaomi/push/ir;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/hv;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/push/hv;->a:Lcom/xiaomi/push/hv;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static e(Lcom/xiaomi/push/ir;)Z
    .registers 2

    invoke-static {p0}, Lcom/xiaomi/push/service/aj;->a(Lcom/xiaomi/push/ir;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/xiaomi/push/service/aj;->c(Lcom/xiaomi/push/ir;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/xiaomi/push/service/aj;->b(Lcom/xiaomi/push/ir;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method
