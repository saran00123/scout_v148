.class public Lcom/xiaomi/mipush/sdk/ao;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/ao$a;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/mipush/sdk/ao; = null

.field private static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/mipush/sdk/ao$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z = false


# instance fields
.field private a:Landroid/content/Context;

.field private a:Landroid/content/Intent;

.field private a:Landroid/os/Handler;

.field private a:Landroid/os/Messenger;

.field private a:Ljava/lang/Integer;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/os/Handler;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/util/List;

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/ao;->c:Z

    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Intent;

    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Z

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->d()Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/mipush/sdk/ao;->b:Z

    new-instance v0, Lcom/xiaomi/mipush/sdk/ap;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mipush/sdk/ap;-><init>(Lcom/xiaomi/mipush/sdk/ao;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/os/Handler;

    invoke-static {p1}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_43

    new-instance p1, Lcom/xiaomi/mipush/sdk/aq;

    invoke-direct {p1, p0}, Lcom/xiaomi/mipush/sdk/aq;-><init>(Lcom/xiaomi/mipush/sdk/ao;)V

    invoke-static {p1}, Lcom/xiaomi/push/service/i;->a(Lcom/xiaomi/push/service/i$b;)V

    :cond_43
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->b()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4c

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/ao;->b(Landroid/content/Intent;)V

    :cond_4c
    return-void
.end method

.method private declared-synchronized a()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "service_boot_mode"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/ao;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a()Landroid/content/Intent;
    .registers 3

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->d()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_19
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->e()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Intent;)Landroid/os/Message;
    .registers 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/ao;)Landroid/os/Messenger;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/ao;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/os/Messenger;

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;
    .registers 3

    const-class v0, Lcom/xiaomi/mipush/sdk/ao;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/xiaomi/mipush/sdk/ao;->a:Lcom/xiaomi/mipush/sdk/ao;

    if-nez v1, :cond_e

    new-instance v1, Lcom/xiaomi/mipush/sdk/ao;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/ao;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/mipush/sdk/ao;->a:Lcom/xiaomi/mipush/sdk/ao;

    :cond_e
    sget-object p0, Lcom/xiaomi/mipush/sdk/ao;->a:Lcom/xiaomi/mipush/sdk/ao;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/ao;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/lang/Integer;

    return-object p1
.end method

.method private a()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v1, 0x6a

    if-lt v0, v1, :cond_16

    const-string v0, "com.xiaomi.push.service.XMPushService"
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    :cond_16
    const-string v0, "com.xiaomi.xmsf.push.service.XMPushService"

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/ao;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/au;ZLjava/util/HashMap;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mipush/sdk/ao;->a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/au;ZLjava/util/HashMap;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/au;ZLjava/util/HashMap;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/mipush/sdk/au;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_164

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/bi;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_164

    :cond_16
    new-instance v0, Lcom/xiaomi/push/iu;

    invoke-direct {v0}, Lcom/xiaomi/push/iu;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/iu;->a(Z)Lcom/xiaomi/push/iu;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()Landroid/content/Intent;

    move-result-object v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4b

    invoke-static {}, Lcom/xiaomi/push/service/ba;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/iu;->a(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    if-eqz p3, :cond_39

    new-instance v3, Lcom/xiaomi/push/iu;

    invoke-direct {v3, p1, v1}, Lcom/xiaomi/push/iu;-><init>(Ljava/lang/String;Z)V

    goto :goto_3a

    :cond_39
    move-object v3, v4

    :goto_3a
    const-class v5, Lcom/xiaomi/mipush/sdk/af;

    monitor-enter v5

    :try_start_3d
    iget-object v6, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/xiaomi/mipush/sdk/af;->a(Ljava/lang/String;)V

    monitor-exit v5

    goto :goto_57

    :catchall_48
    move-exception p1

    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_48

    throw p1

    :cond_4b
    invoke-virtual {v0, p1}, Lcom/xiaomi/push/iu;->a(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    if-eqz p3, :cond_56

    new-instance v3, Lcom/xiaomi/push/iu;

    invoke-direct {v3, p1, v1}, Lcom/xiaomi/push/iu;-><init>(Ljava/lang/String;Z)V

    goto :goto_57

    :cond_56
    move-object v3, v4

    :goto_57
    sget-object v5, Lcom/xiaomi/mipush/sdk/at;->a:[I

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/au;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_166

    goto :goto_a4

    :pswitch_63
    sget-object v5, Lcom/xiaomi/push/if;->N:Lcom/xiaomi/push/if;

    iget-object v5, v5, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/xiaomi/push/iu;->c(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    if-eqz p4, :cond_a4

    invoke-virtual {v0, p4}, Lcom/xiaomi/push/iu;->a(Ljava/util/Map;)Lcom/xiaomi/push/iu;

    goto :goto_a4

    :pswitch_70
    sget-object v5, Lcom/xiaomi/push/if;->F:Lcom/xiaomi/push/if;

    iget-object v5, v5, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/xiaomi/push/iu;->c(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    sget-object v5, Lcom/xiaomi/push/if;->F:Lcom/xiaomi/push/if;

    iget-object v5, v5, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/xiaomi/push/iu;->c(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    if-eqz p4, :cond_86

    invoke-virtual {v0, p4}, Lcom/xiaomi/push/iu;->a(Ljava/util/Map;)Lcom/xiaomi/push/iu;

    invoke-virtual {v3, p4}, Lcom/xiaomi/push/iu;->a(Ljava/util/Map;)Lcom/xiaomi/push/iu;

    :cond_86
    const-string p4, "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE"

    goto :goto_a1

    :pswitch_89
    sget-object v5, Lcom/xiaomi/push/if;->E:Lcom/xiaomi/push/if;

    iget-object v5, v5, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/xiaomi/push/iu;->c(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    sget-object v5, Lcom/xiaomi/push/if;->E:Lcom/xiaomi/push/if;

    iget-object v5, v5, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/xiaomi/push/iu;->c(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    if-eqz p4, :cond_9f

    invoke-virtual {v0, p4}, Lcom/xiaomi/push/iu;->a(Ljava/util/Map;)Lcom/xiaomi/push/iu;

    invoke-virtual {v3, p4}, Lcom/xiaomi/push/iu;->a(Ljava/util/Map;)Lcom/xiaomi/push/iu;

    :cond_9f
    const-string p4, "com.xiaomi.mipush.DISABLE_PUSH_MESSAGE"

    :goto_a1
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_a4
    :goto_a4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type:"

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/xiaomi/channel/commonutils/logger/b;->e(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {p4}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object p4

    invoke-virtual {p4}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/xiaomi/push/iu;->b(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    iget-object p4, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/xiaomi/push/iu;->d(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    sget-object p4, Lcom/xiaomi/push/hv;->i:Lcom/xiaomi/push/hv;

    const/4 v5, 0x0

    invoke-virtual {p0, v0, p4, v5, v4}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZLcom/xiaomi/push/ii;)V

    if-eqz p3, :cond_14d

    iget-object p3, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/xiaomi/push/iu;->b(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    iget-object p3, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/xiaomi/push/iu;->d(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    sget-object v7, Lcom/xiaomi/push/hv;->i:Lcom/xiaomi/push/hv;

    const/4 v8, 0x0

    iget-object p3, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object p3, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object v10

    move-object v6, v3

    invoke-static/range {v5 .. v10}, Lcom/xiaomi/mipush/sdk/ai;->a(Landroid/content/Context;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/ir;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;)[B

    move-result-object p3

    if-eqz p3, :cond_14d

    iget-object p4, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/push/hv;->i:Lcom/xiaomi/push/hv;

    array-length v5, p3

    invoke-static {p4, v0, v3, v4, v5}, Lcom/xiaomi/push/da;->a(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;I)V

    const-string p4, "mipush_payload"

    invoke-virtual {v2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p3, "com.xiaomi.mipush.MESSAGE_CACHE"

    invoke-virtual {v2, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p3, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object p3

    const-string p4, "mipush_app_id"

    invoke-virtual {v2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p3, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/mipush/sdk/b;->b()Ljava/lang/String;

    move-result-object p3

    const-string p4, "mipush_app_token"

    invoke-virtual {v2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/xiaomi/mipush/sdk/ao;->c(Landroid/content/Intent;)V

    :cond_14d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p3

    const/16 p4, 0x13

    iput p4, p3, Landroid/os/Message;->what:I

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/au;->ordinal()I

    move-result p2

    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, p3, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_164
    :goto_164
    return-void

    nop

    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_89
        :pswitch_70
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
    .end packed-switch
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/ao;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/xiaomi/mipush/sdk/ao;->c:Z

    return p1
.end method

.method private b()Landroid/content/Intent;
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->c()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_13
    const-string v0, "pushChannel xmsf create own channel"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->e()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Intent;)V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result v0

    if-nez v0, :cond_10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_10

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/ao;->d(Landroid/content/Intent;)V

    goto :goto_1a

    :cond_10
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :goto_1a
    return-void
.end method

.method private c()Landroid/content/Intent;
    .registers 2

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "pushChannel app start miui china channel"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->d()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_10
    const-string v0, "pushChannel app start  own channel"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->e()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized c(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "service_boot_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c(Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/ia;->T:Lcom/xiaomi/push/ia;

    invoke-virtual {v1}, Lcom/xiaomi/push/ia;->a()I

    move-result v1

    sget-object v2, Lcom/xiaomi/push/hw;->a:Lcom/xiaomi/push/hw;

    invoke-virtual {v2}, Lcom/xiaomi/push/hw;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/ax;->a(II)I

    move-result v0

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()I

    move-result v1

    sget-object v2, Lcom/xiaomi/push/hw;->b:Lcom/xiaomi/push/hw;

    invoke-virtual {v2}, Lcom/xiaomi/push/hw;->a()I

    move-result v2

    if-ne v0, v2, :cond_28

    sget-boolean v0, Lcom/xiaomi/mipush/sdk/ao;->b:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    if-eqz v0, :cond_2e

    sget-object v2, Lcom/xiaomi/push/hw;->b:Lcom/xiaomi/push/hw;

    goto :goto_30

    :cond_2e
    sget-object v2, Lcom/xiaomi/push/hw;->a:Lcom/xiaomi/push/hw;

    :goto_30
    invoke-virtual {v2}, Lcom/xiaomi/push/hw;->a()I

    move-result v2

    if-eq v2, v1, :cond_39

    invoke-virtual {p0, v2}, Lcom/xiaomi/mipush/sdk/ao;->a(I)Z

    :cond_39
    if-eqz v0, :cond_3f

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/ao;->d(Landroid/content/Intent;)V

    goto :goto_42

    :cond_3f
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/ao;->b(Landroid/content/Intent;)V

    :goto_42
    return-void
.end method

.method private c()Z
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_7
    const-string v2, "com.xiaomi.xmsf"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_11

    return v1

    :cond_11
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_13} :catch_1a

    const/16 v2, 0x69

    if-ge v0, v2, :cond_18

    return v1

    :cond_18
    const/4 v0, 0x1

    return v0

    :catch_1a
    return v1
.end method

.method private d()Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_app_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->g()V

    return-object v0
.end method

.method private declared-synchronized d(Landroid/content/Intent;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/xiaomi/mipush/sdk/ao;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x32

    if-lt v0, v2, :cond_19

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_19
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_53

    monitor-exit p0

    return-void

    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/os/Messenger;

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    new-instance v1, Lcom/xiaomi/mipush/sdk/as;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/as;-><init>(Lcom/xiaomi/mipush/sdk/ao;)V

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v2, p0, Lcom/xiaomi/mipush/sdk/ao;->c:Z

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_42
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object p1
    :try_end_46
    .catchall {:try_start_20 .. :try_end_46} :catchall_53

    :try_start_46
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c
    .catchall {:try_start_46 .. :try_end_4b} :catchall_53

    goto :goto_51

    :catch_4c
    const/4 p1, 0x0

    :try_start_4d
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/os/Messenger;

    iput-boolean v1, p0, Lcom/xiaomi/mipush/sdk/ao;->c:Z
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_53

    :goto_51
    monitor-exit p0

    return-void

    :catchall_53
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private d()Z
    .registers 5

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    :try_start_7
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.xiaomi.xmsf"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_1d

    const/16 v2, 0x6c

    if-lt v0, v2, :cond_1b

    return v1

    :cond_1b
    const/4 v0, 0x0

    return v0

    :catch_1d
    :cond_1d
    return v1
.end method

.method private e()Landroid/content/Intent;
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->h()V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    const-string v4, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "mipush_app_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private e()Z
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_25

    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_25

    :cond_18
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :cond_25
    :goto_25
    return v2
.end method

.method private g()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    const-string v3, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    return-void

    :cond_17
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1b

    :catch_1b
    return-void
.end method

.method private h()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    const-string v3, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    return-void

    :cond_17
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1a

    :catch_1a
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ao;->b(Landroid/content/Intent;)V

    return-void
.end method

.method public a(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/mipush/sdk/ao;->a(II)V

    return-void
.end method

.method a(II)V
    .registers 6

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/bh;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/bh;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/xiaomi/push/service/bh;->E:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ao;->c(Landroid/content/Intent;)V

    return-void
.end method

.method a(ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.xiaomi.mipush.thirdparty"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.xiaomi.mipush.thirdparty_LEVEL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.xiaomi.mipush.thirdparty_DESC"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ao;->b(Landroid/content/Intent;)V

    return-void
.end method

.method a(Landroid/content/Intent;)V
    .registers 4

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/ao;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Lcom/xiaomi/push/hz;)V
    .registers 4

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;)[B

    move-result-object p1

    if-nez p1, :cond_10

    const-string p1, "send TinyData failed, because tinyDataBytes is null."

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void

    :cond_10
    const-string v1, "com.xiaomi.mipush.SEND_TINYDATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mipush_payload"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ao;->b(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Lcom/xiaomi/push/iv;Z)V
    .registers 10

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->a()Ljava/lang/String;

    move-result-object v4

    const-string v3, "E100003"

    const/16 v5, 0x1771

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/iv;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mipush/sdk/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/push/hv;->a:Lcom/xiaomi/push/hv;

    invoke-static {v1, p1, v2}, Lcom/xiaomi/mipush/sdk/ai;->a(Landroid/content/Context;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;)Lcom/xiaomi/push/ir;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;)[B

    move-result-object p1

    if-nez p1, :cond_43

    const-string p1, "register fail, because msgBytes is null."

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void

    :cond_43
    const-string v1, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mipush_app_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mipush_payload"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/lang/String;

    const-string v1, "mipush_session"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "mipush_env_chanage"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/b;->a()I

    move-result p1

    const-string p2, "mipush_env_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/push/bi;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_89

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/ao;->b()Z

    move-result p1

    if-eqz p1, :cond_89

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ao;->c(Landroid/content/Intent;)V

    goto :goto_8b

    :cond_89
    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Intent;

    :goto_8b
    return-void
.end method

.method public final a(Lcom/xiaomi/push/jb;)V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    sget-object v1, Lcom/xiaomi/push/hv;->b:Lcom/xiaomi/push/hv;

    invoke-static {v0, p1, v1}, Lcom/xiaomi/mipush/sdk/ai;->a(Landroid/content/Context;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;)Lcom/xiaomi/push/ir;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;)[B

    move-result-object p1

    if-nez p1, :cond_14

    const-string p1, "unregister fail, because msgBytes is null."

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void

    :cond_14
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mipush_app_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mipush_payload"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ao;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;Lcom/xiaomi/push/ii;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaomi/push/jg<",
            "TT;*>;>(TT;",
            "Lcom/xiaomi/push/hv;",
            "Lcom/xiaomi/push/ii;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/push/hv;->a:Lcom/xiaomi/push/hv;

    invoke-virtual {p2, v0}, Lcom/xiaomi/push/hv;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZLcom/xiaomi/push/ii;)V

    return-void
.end method

.method public a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaomi/push/jg<",
            "TT;*>;>(TT;",
            "Lcom/xiaomi/push/hv;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/mipush/sdk/ao$a;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/ao$a;-><init>()V

    iput-object p1, v0, Lcom/xiaomi/mipush/sdk/ao$a;->a:Lcom/xiaomi/push/jg;

    iput-object p2, v0, Lcom/xiaomi/mipush/sdk/ao$a;->a:Lcom/xiaomi/push/hv;

    iput-boolean p3, v0, Lcom/xiaomi/mipush/sdk/ao$a;->a:Z

    sget-object p1, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_e
    sget-object p2, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p2, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 p3, 0xa

    if-le p2, p3, :cond_23

    sget-object p2, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_23
    monitor-exit p1

    return-void

    :catchall_25
    move-exception p2

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_25

    throw p2
.end method

.method public final a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZLcom/xiaomi/push/ii;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaomi/push/jg<",
            "TT;*>;>(TT;",
            "Lcom/xiaomi/push/hv;",
            "Z",
            "Lcom/xiaomi/push/ii;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZZLcom/xiaomi/push/ii;Z)V

    return-void
.end method

.method public final a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZLcom/xiaomi/push/ii;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaomi/push/jg<",
            "TT;*>;>(TT;",
            "Lcom/xiaomi/push/hv;",
            "Z",
            "Lcom/xiaomi/push/ii;",
            "Z)V"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZZLcom/xiaomi/push/ii;Z)V

    return-void
.end method

.method public final a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZZLcom/xiaomi/push/ii;Z)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaomi/push/jg<",
            "TT;*>;>(TT;",
            "Lcom/xiaomi/push/hv;",
            "ZZ",
            "Lcom/xiaomi/push/ii;",
            "Z)V"
        }
    .end annotation

    move-object v9, p0

    iget-object v0, v9, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v9, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZZLcom/xiaomi/push/ii;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZZLcom/xiaomi/push/ii;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaomi/push/jg<",
            "TT;*>;>(TT;",
            "Lcom/xiaomi/push/hv;",
            "ZZ",
            "Lcom/xiaomi/push/ii;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZZLcom/xiaomi/push/ii;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZZLcom/xiaomi/push/ii;ZLjava/lang/String;Ljava/lang/String;Z)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaomi/push/jg<",
            "TT;*>;>(TT;",
            "Lcom/xiaomi/push/hv;",
            "ZZ",
            "Lcom/xiaomi/push/ii;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZZLcom/xiaomi/push/ii;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZZLcom/xiaomi/push/ii;ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaomi/push/jg<",
            "TT;*>;>(TT;",
            "Lcom/xiaomi/push/hv;",
            "ZZ",
            "Lcom/xiaomi/push/ii;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p5

    if-eqz p10, :cond_1c

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/b;->c()Z

    move-result v2

    if-nez v2, :cond_1c

    if-eqz p4, :cond_16

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;Z)V

    goto :goto_6f

    :cond_16
    const-string v1, "drop the message before initialization."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_6f

    :cond_1c
    if-eqz p9, :cond_2c

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/mipush/sdk/ai;->a(Landroid/content/Context;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/ir;

    move-result-object v2

    goto :goto_39

    :cond_2c
    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v3 .. v8}, Lcom/xiaomi/mipush/sdk/ai;->b(Landroid/content/Context;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/ir;

    move-result-object v2

    :goto_39
    if-eqz v1, :cond_3e

    invoke-virtual {v2, p5}, Lcom/xiaomi/push/ir;->a(Lcom/xiaomi/push/ii;)Lcom/xiaomi/push/ir;

    :cond_3e
    invoke-static {v2}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;)[B

    move-result-object v1

    if-nez v1, :cond_4a

    const-string v1, "send message fail, because msgBytes is null."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void

    :cond_4a
    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    array-length v4, v1

    move-object v5, p1

    move-object v6, p2

    invoke-static {v2, v3, p1, p2, v4}, Lcom/xiaomi/push/da;->a(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;I)V

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "mipush_payload"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "com.xiaomi.mipush.MESSAGE_CACHE"

    move v3, p6

    invoke-virtual {v2, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/xiaomi/mipush/sdk/ao;->c(Landroid/content/Intent;)V

    :goto_6f
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/au;Lcom/xiaomi/mipush/sdk/e;)V
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object v0

    const-string v1, "syncing"

    invoke-virtual {v0, p2, v1}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/e;)Ljava/util/HashMap;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/xiaomi/mipush/sdk/ao;->a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/au;ZLjava/util/HashMap;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/bh;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/bh;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/xiaomi/push/service/bh;->J:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ao;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/mipush/sdk/ao;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, ""

    const-string v3, "syncing"

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object p1

    sget-object v4, Lcom/xiaomi/mipush/sdk/au;->a:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {p1, v4, v3}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object p1

    sget-object v3, Lcom/xiaomi/mipush/sdk/au;->b:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {p1, v3, v2}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;Ljava/lang/String;)V

    sget-object p1, Lcom/xiaomi/mipush/sdk/au;->a:Lcom/xiaomi/mipush/sdk/au;

    goto :goto_39

    :cond_21
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object p1

    sget-object v4, Lcom/xiaomi/mipush/sdk/au;->b:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {p1, v4, v3}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/af;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;

    move-result-object p1

    sget-object v3, Lcom/xiaomi/mipush/sdk/au;->a:Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {p1, v3, v2}, Lcom/xiaomi/mipush/sdk/af;->a(Lcom/xiaomi/mipush/sdk/au;Ljava/lang/String;)V

    sget-object p1, Lcom/xiaomi/mipush/sdk/au;->b:Lcom/xiaomi/mipush/sdk/au;

    :goto_39
    invoke-direct {p0, p2, p1, v1, v0}, Lcom/xiaomi/mipush/sdk/ao;->a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/au;ZLjava/util/HashMap;)V

    return-void
.end method

.method public a()Z
    .registers 3

    iget-boolean v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/b;->a()I

    move-result v0

    if-ne v1, v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public a(I)Z
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/b;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    :cond_e
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/ao;->c(I)V

    new-instance v0, Lcom/xiaomi/push/iu;

    invoke-direct {v0}, Lcom/xiaomi/push/iu;-><init>()V

    invoke-static {}, Lcom/xiaomi/push/service/ba;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/iu;->a(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/iu;->b(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/iu;->d(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    sget-object v2, Lcom/xiaomi/push/if;->G:Lcom/xiaomi/push/if;

    iget-object v2, v2, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/iu;->c(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/xiaomi/push/iu;->a:Ljava/util/Map;

    iget-object v2, v0, Lcom/xiaomi/push/iu;->a:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "boot_mode"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object p1

    sget-object v2, Lcom/xiaomi/push/hv;->i:Lcom/xiaomi/push/hv;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZLcom/xiaomi/push/ii;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b()V
    .registers 3

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.xiaomi.mipush.DISABLE_PUSH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ao;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public b(I)V
    .registers 6

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/bh;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/bh;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/bh;->H:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/bn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ao;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public b()Z
    .registers 6

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_55

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->e()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/bk;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/bk;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4b

    new-instance v0, Lcom/xiaomi/mipush/sdk/ar;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v3}, Lcom/xiaomi/mipush/sdk/ar;-><init>(Lcom/xiaomi/mipush/sdk/ao;Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/bk;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/bk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/bk;->a()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_4b
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_54

    goto :goto_55

    :cond_54
    move v1, v2

    :cond_55
    :goto_55
    return v1
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Intent;

    if-eqz v0, :cond_a

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ao;->c(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Intent;

    :cond_a
    return-void
.end method

.method public d()V
    .registers 12

    sget-object v0, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    sget-object v2, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_1a
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/mipush/sdk/ao$a;

    iget-object v5, v3, Lcom/xiaomi/mipush/sdk/ao$a;->a:Lcom/xiaomi/push/jg;

    iget-object v6, v3, Lcom/xiaomi/mipush/sdk/ao$a;->a:Lcom/xiaomi/push/hv;

    iget-boolean v7, v3, Lcom/xiaomi/mipush/sdk/ao$a;->a:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZZLcom/xiaomi/push/ii;Z)V
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_42

    if-nez v1, :cond_1a

    const-wide/16 v3, 0x64

    :try_start_37
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3a} :catch_1a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    goto :goto_1a

    :cond_3b
    :try_start_3b
    sget-object v1, Lcom/xiaomi/mipush/sdk/ao;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_42

    throw v1
.end method

.method public e()V
    .registers 6

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.xiaomi.mipush.CLEAR_HEADSUPNOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "android.app.ActivityThread"

    const-string v3, "currentApplication"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/push/bj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_57

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "application package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", not equals context package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_58

    :cond_57
    move-object v1, v2

    :goto_58
    sget-object v2, Lcom/xiaomi/push/service/bh;->C:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ao;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public f()V
    .registers 4

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ao;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/bh;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/bh;->H:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ao;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/push/bn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ao;->c(Landroid/content/Intent;)V

    return-void
.end method
