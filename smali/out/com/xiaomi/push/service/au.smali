.class public Lcom/xiaomi/push/service/au;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static a:Ljava/lang/Object;

.field private static a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaomi/push/service/au;",
            ">;"
        }
    .end annotation
.end field

.field private static a:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/au;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/au;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_12

    :try_start_6
    sget-object v0, Lcom/xiaomi/push/service/au;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    return p0

    :catch_12
    :cond_12
    const/4 p0, -0x1

    return p0
.end method

.method private static a()Landroid/app/NotificationManager;
    .registers 2

    sget-object v0, Lcom/xiaomi/push/service/au;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/service/au;
    .registers 4

    invoke-static {p0}, Lcom/xiaomi/push/service/au;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sget-object v0, Lcom/xiaomi/push/service/au;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/au;

    if-nez v0, :cond_23

    new-instance v0, Lcom/xiaomi/push/service/au;

    invoke-direct {v0, p1}, Lcom/xiaomi/push/service/au;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/xiaomi/push/service/au;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-object v0
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_16

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getList"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/Object;
    .registers 6

    const-string v0, "android.content.pm.ParceledListSlice"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/util/List;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, ""

    const-string v1, "mipush|%s|%s"

    invoke-static {v1, p1, v0}, Lcom/xiaomi/push/service/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "mipush_%s_%s"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/push/service/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1e
    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/xiaomi/push/service/au;->a:Landroid/content/Context;

    if-nez v0, :cond_4a

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/push/service/au;->a:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/push/service/au;->a()Landroid/app/NotificationManager;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "xmsf_fake_condition_provider_path"

    aput-object v2, v0, v1

    const-string v2, "isSystemConditionProviderEnabled"

    invoke-static {p0, v2, v0}, Lcom/xiaomi/push/bj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fwk is support.init:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/push/service/au;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3a

    :cond_39
    move v0, v1

    :goto_3a
    sput-boolean v0, Lcom/xiaomi/push/service/au;->a:Z

    sget-boolean v0, Lcom/xiaomi/push/service/au;->a:Z

    if-eqz v0, :cond_4a

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getService"

    invoke-static {p0, v1, v0}, Lcom/xiaomi/push/bj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/push/service/au;->a:Ljava/lang/Object;

    :cond_4a
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NMHelper:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static a()Z
    .registers 4

    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/xiaomi/push/service/au;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/push/ia;->aZ:Lcom/xiaomi/push/ia;

    invoke-virtual {v2}, Lcom/xiaomi/push/ia;->a()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/push/service/ax;->a(IZ)Z

    move-result v0

    if-nez v0, :cond_1c

    return v1

    :cond_1c
    sget-boolean v0, Lcom/xiaomi/push/service/au;->a:Z

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 1

    invoke-static {p0}, Lcom/xiaomi/push/service/au;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/push/service/au;->a()Z

    move-result p0

    return p0
.end method

.method private a()[Landroid/service/notification/StatusBarNotification;
    .registers 7

    invoke-virtual {p0}, Lcom/xiaomi/push/service/au;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    :try_start_b
    invoke-virtual {p0}, Lcom/xiaomi/push/service/au;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/push/service/au;->a:Ljava/lang/Object;

    const-string v3, "getActiveNotifications"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/xiaomi/push/bj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, [Landroid/service/notification/StatusBarNotification;

    if-eqz v2, :cond_3e

    check-cast v0, [Landroid/service/notification/StatusBarNotification;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_27} :catch_29

    move-object v1, v0

    goto :goto_3e

    :catch_29
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllNotifications error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/au;->a(Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-object v1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/xiaomi/push/service/au;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "mipush|%s|%s"

    goto :goto_b

    :cond_9
    const-string v0, "mipush_%s_%s"

    :goto_b
    iget-object v1, p0, Lcom/xiaomi/push/service/au;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/xiaomi/push/service/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/xiaomi/push/service/au;->a()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Lcom/xiaomi/push/service/au;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_48

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object v0, v2

    goto :goto_48

    :cond_29
    invoke-static {}, Lcom/xiaomi/push/service/au;->a()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_33

    move-object v0, p1

    goto :goto_48

    :catch_33
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNotificationChannel error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/service/au;->a(Ljava/lang/String;)V

    :cond_48
    :goto_48
    return-object v0
.end method

.method public a()Landroid/content/Context;
    .registers 2

    sget-object v0, Lcom/xiaomi/push/service/au;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/service/au;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/xiaomi/push/service/au;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/push/service/au;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_19
    :goto_19
    return-object p1
.end method

.method a()Ljava/util/List;
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/push/service/au;->a:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/xiaomi/push/service/au;->a()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-static {v0}, Lcom/xiaomi/push/service/au;->a(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3b

    sget-object v3, Lcom/xiaomi/push/service/au;->a:Ljava/lang/Object;

    const-string v4, "getNotificationChannelsForPackage"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    const/4 v2, 0x2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/xiaomi/push/bj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/push/service/au;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_32} :catch_7a

    :try_start_32
    const-string v1, "mipush|%s|%s"
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_34} :catch_38

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_47

    :catch_38
    move-exception v0

    move-object v1, v2

    goto :goto_7b

    :cond_3b
    move-object v2, v1

    goto :goto_47

    :cond_3d
    :try_start_3d
    invoke-static {}, Lcom/xiaomi/push/service/au;->a()Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v1

    const-string v2, "mipush_%s_%s"

    :goto_47
    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result v3

    if-eqz v3, :cond_8f

    if-eqz v1, :cond_8f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, ""

    invoke-static {v2, v0, v4}, Lcom/xiaomi/push/service/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5e
    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_77} :catch_7a

    goto :goto_5e

    :cond_78
    move-object v1, v3

    goto :goto_8f

    :catch_7a
    move-exception v0

    :goto_7b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNotificationChannels error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/au;->a(Ljava/lang/String;)V

    :cond_8f
    :goto_8f
    return-object v1
.end method

.method public a(I)V
    .registers 14

    iget-object v0, p0, Lcom/xiaomi/push/service/au;->a:Ljava/lang/String;

    :try_start_2
    invoke-static {}, Lcom/xiaomi/push/service/au;->a()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-static {}, Lcom/xiaomi/push/i;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/push/service/au;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_71

    const/16 v4, 0x1e

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x4

    const-string v11, "cancelNotificationWithTag"

    if-lt v3, v4, :cond_3d

    :try_start_22
    sget-object v3, Lcom/xiaomi/push/service/au;->a:Ljava/lang/Object;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v9

    aput-object v2, v4, v8

    aput-object v7, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-static {v3, v11, v4}, Lcom/xiaomi/push/bj;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    :cond_3d
    sget-object v2, Lcom/xiaomi/push/service/au;->a:Ljava/lang/Object;

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v9

    aput-object v7, v3, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v11, v3}, Lcom/xiaomi/push/bj;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel succ:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/service/au;->a(Ljava/lang/String;)V

    goto :goto_86

    :cond_69
    invoke-static {}, Lcom/xiaomi/push/service/au;->a()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_70} :catch_71

    goto :goto_86

    :catch_71
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/service/au;->a(Ljava/lang/String;)V

    :goto_86
    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .registers 8

    iget-object v0, p0, Lcom/xiaomi/push/service/au;->a:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/push/service/au;->a()Landroid/app/NotificationManager;

    move-result-object v1

    :try_start_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Lcom/xiaomi/push/service/au;->a()Z

    move-result v3

    if-eqz v3, :cond_22

    const/16 v3, 0x13

    if-lt v2, v3, :cond_19

    iget-object v3, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "xmsf_target_package"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const/16 v3, 0x1d

    if-lt v2, v3, :cond_22

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1, p2}, Landroid/app/NotificationManager;->notifyAsPackage(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_25

    :cond_22
    invoke-virtual {v1, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_25} :catch_25

    :catch_25
    :goto_25
    return-void
.end method

.method a(Landroid/app/NotificationChannel;)V
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/push/service/au;->a:Ljava/lang/String;

    :try_start_2
    invoke-static {}, Lcom/xiaomi/push/service/au;->a()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-static {v0}, Lcom/xiaomi/push/service/au;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_50

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/app/NotificationChannel;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/service/au;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    sget-object v3, Lcom/xiaomi/push/service/au;->a:Ljava/lang/Object;

    const-string v5, "createNotificationChannelsForPackage"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    const/4 v0, 0x2

    aput-object p1, v6, v0

    invoke-static {v3, v5, v6}, Lcom/xiaomi/push/bj;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    :cond_33
    invoke-static {}, Lcom/xiaomi/push/service/au;->a()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_3b

    goto :goto_50

    :catch_3b
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createNotificationChannel error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/service/au;->a(Ljava/lang/String;)V

    :cond_50
    :goto_50
    return-void
.end method

.method a(Landroid/app/NotificationChannel;Z)V
    .registers 8

    iget-object v0, p0, Lcom/xiaomi/push/service/au;->a:Ljava/lang/String;

    if-eqz p2, :cond_23

    :try_start_4
    invoke-static {v0}, Lcom/xiaomi/push/service/au;->a(Ljava/lang/String;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3c

    sget-object v1, Lcom/xiaomi/push/service/au;->a:Ljava/lang/Object;

    const-string v2, "updateNotificationChannelForPackage"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v0

    const/4 p2, 0x2

    aput-object p1, v3, p2

    invoke-static {v1, v2, v3}, Lcom/xiaomi/push/bj;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    :cond_23
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/au;->a(Landroid/app/NotificationChannel;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_26} :catch_27

    goto :goto_3c

    :catch_27
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateNotificationChannel error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/service/au;->a(Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/service/au;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/au;->b:Ljava/lang/String;

    :cond_10
    iget-object v0, p0, Lcom/xiaomi/push/service/au;->b:Ljava/lang/String;

    return-object v0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/xiaomi/push/service/au;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    move-object p1, p2

    :goto_8
    return-object p1
.end method

.method public b()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/push/service/au;->a:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/push/service/au;->a()Landroid/app/NotificationManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_7
    invoke-static {}, Lcom/xiaomi/push/service/au;->a()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_31

    invoke-static {}, Lcom/xiaomi/push/i;->a()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_83

    sget-object v3, Lcom/xiaomi/push/service/au;->a:Ljava/lang/Object;

    const-string v5, "getAppActiveNotifications"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    invoke-static {v3, v5, v6}, Lcom/xiaomi/push/bj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/au;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    goto :goto_83

    :cond_31
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v3, v5, :cond_3c

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    goto :goto_40

    :cond_3c
    invoke-direct {p0}, Lcom/xiaomi/push/service/au;->a()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    :goto_40
    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result v3

    if-eqz v1, :cond_83

    array-length v5, v1

    if-lez v5, :cond_83

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_4e} :catch_6e

    :try_start_4e
    array-length v2, v1

    :goto_4f
    if-ge v4, v2, :cond_69

    aget-object v6, v1, v4

    if-eqz v3, :cond_63

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/push/service/av;->c(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    :cond_63
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_66} :catch_6b

    :cond_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_69
    move-object v2, v5

    goto :goto_83

    :catch_6b
    move-exception v0

    move-object v2, v5

    goto :goto_6f

    :catch_6e
    move-exception v0

    :goto_6f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveNotifications error "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/au;->a(Ljava/lang/String;)V

    :cond_83
    :goto_83
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationManagerHelper{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/service/au;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
