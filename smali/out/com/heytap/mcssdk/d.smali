.class public Lcom/heytap/mcssdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/heytap/mcssdk/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/mcssdk/d$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "push_register"

.field public static final b:Ljava/lang/String; = "push_transmit"

.field private static final c:[I

.field private static final d:[I

.field private static final e:Ljava/lang/String; = "com.mcs.action.RECEIVE_SDK_MESSAGE"

.field private static final f:Ljava/lang/String; = "type"

.field private static final g:I = 0x3fb

.field private static final h:Ljava/lang/String; = "eventID"

.field private static final i:Ljava/lang/String; = "taskID"

.field private static final j:Ljava/lang/String; = "appPackage"

.field private static final k:Ljava/lang/String; = "extra"

.field private static final l:Ljava/lang/String; = "messageType"

.field private static final m:Ljava/lang/String; = "messageID"

.field private static final n:Ljava/lang/String; = "globalID"

.field private static final o:Ljava/lang/String; = "supportOpenPush"

.field private static final p:Ljava/lang/String; = "versionName"

.field private static final q:Ljava/lang/String; = "versionCode"

.field private static final r:Ljava/lang/String; = "pushSdkVersion"

.field private static final s:I = 0x17

.field private static final t:I = 0x3b

.field private static final u:I = 0x18

.field private static final v:I = 0x3e8

.field private static w:I

.field private static x:Ljava/lang/String;

.field private static y:Z


# instance fields
.field private A:Landroid/content/Context;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/heytap/mcssdk/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/heytap/mcssdk/d/d;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Lcom/heytap/msp/push/callback/ICallBackResultService;

.field private final z:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/heytap/mcssdk/d;->c:[I

    const/16 v0, 0x2d

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    sput-object v0, Lcom/heytap/mcssdk/d;->d:[I

    const/4 v0, 0x0

    sput v0, Lcom/heytap/mcssdk/d;->w:I

    return-void

    :array_16
    .array-data 4
        0x63
        0x6f
        0x6d
        0x2e
        0x63
        0x6f
        0x6c
        0x6f
        0x72
        0x6f
        0x73
        0x2e
        0x6d
        0x63
        0x73
    .end array-data

    :array_38
    .array-data 4
        0x63
        0x6f
        0x6d
        0x2e
        0x63
        0x6f
        0x6c
        0x6f
        0x72
        0x6f
        0x73
        0x2e
        0x6d
        0x63
        0x73
        0x73
        0x64
        0x6b
        0x2e
        0x61
        0x63
        0x74
        0x69
        0x6f
        0x6e
        0x2e
        0x52
        0x45
        0x43
        0x45
        0x49
        0x56
        0x45
        0x5f
        0x53
        0x44
        0x4b
        0x5f
        0x4d
        0x45
        0x53
        0x53
        0x41
        0x47
        0x45
    .end array-data
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/heytap/mcssdk/d;->z:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heytap/mcssdk/d;->B:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heytap/mcssdk/d;->C:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/mcssdk/d;->F:Ljava/lang/String;

    const-class v0, Lcom/heytap/mcssdk/d;

    monitor-enter v0

    :try_start_1e
    sget v1, Lcom/heytap/mcssdk/d;->w:I

    if-gtz v1, :cond_4a

    sget v1, Lcom/heytap/mcssdk/d;->w:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/heytap/mcssdk/d;->w:I

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_52

    new-instance v0, Lcom/heytap/mcssdk/d/b;

    invoke-direct {v0}, Lcom/heytap/mcssdk/d/b;-><init>()V

    invoke-direct {p0, v0}, Lcom/heytap/mcssdk/d;->a(Lcom/heytap/mcssdk/d/d;)V

    new-instance v0, Lcom/heytap/mcssdk/d/a;

    invoke-direct {v0}, Lcom/heytap/mcssdk/d/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/heytap/mcssdk/d;->a(Lcom/heytap/mcssdk/d/d;)V

    new-instance v0, Lcom/heytap/mcssdk/e/b;

    invoke-direct {v0}, Lcom/heytap/mcssdk/e/b;-><init>()V

    invoke-direct {p0, v0}, Lcom/heytap/mcssdk/d;->a(Lcom/heytap/mcssdk/e/c;)V

    new-instance v0, Lcom/heytap/mcssdk/e/a;

    invoke-direct {v0}, Lcom/heytap/mcssdk/e/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/heytap/mcssdk/d;->a(Lcom/heytap/mcssdk/e/c;)V

    return-void

    :cond_4a
    :try_start_4a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "PushService can\'t create again!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_52

    throw v1
.end method

.method synthetic constructor <init>(Lcom/heytap/mcssdk/d$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/heytap/mcssdk/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/heytap/mcssdk/d;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    return-object p0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mcs.action.RECEIVE_SDK_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_57

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_1b
    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    :try_start_2b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_3c

    move v2, v4

    goto :goto_3d

    :cond_3c
    move v2, v3

    :goto_3d
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android"

    invoke-virtual {v6, v7, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v6
    :try_end_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_4f} :catch_1b

    if-ne v5, v6, :cond_52

    move v3, v4

    :cond_52
    if-nez v2, :cond_56

    if-eqz v3, :cond_1b

    :cond_56
    return-object v1

    :cond_57
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    iget-object v0, p0, Lcom/heytap/mcssdk/d;->z:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/mcssdk/d;->b(ILjava/lang/String;Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public static a(Landroid/content/Context;Lcom/heytap/msp/push/mode/MessageStat;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/heytap/mcssdk/f/e;->a(Landroid/content/Context;Lcom/heytap/msp/push/mode/MessageStat;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/heytap/msp/push/mode/MessageStat;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/heytap/mcssdk/f/e;->a(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/heytap/mcssdk/d/d;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_c

    :try_start_3
    iget-object v0, p0, Lcom/heytap/mcssdk/d;->C:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    goto :goto_c

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_c
    :goto_c
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized a(Lcom/heytap/mcssdk/e/c;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_c

    :try_start_3
    iget-object v0, p0, Lcom/heytap/mcssdk/d;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    goto :goto_c

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_c
    :goto_c
    monitor-exit p0

    return-void
.end method

.method private b(ILjava/lang/String;Lorg/json/JSONObject;)Landroid/content/Intent;
    .registers 9

    const-string v0, "extra"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/heytap/mcssdk/d;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/heytap/mcssdk/d;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1f
    const-string v2, "versionName"

    iget-object v3, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    iget-object v4, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/heytap/mcssdk/f/g;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "versionCode"

    iget-object v3, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    iget-object v4, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/heytap/mcssdk/f/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_68

    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_5e} :catch_68
    .catchall {:try_start_1f .. :try_end_5e} :catchall_5f

    goto :goto_4b

    :catchall_5f
    move-exception p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    throw p2

    :catch_68
    :cond_68
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "params"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "appPackage"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/heytap/mcssdk/d;->D:Ljava/lang/String;

    const-string p2, "appKey"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/heytap/mcssdk/d;->E:Ljava/lang/String;

    const-string p2, "appSecret"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/heytap/mcssdk/d;->F:Ljava/lang/String;

    const-string p2, "registerID"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/heytap/mcssdk/d;->s()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdkVersion"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method

.method private b(ILorg/json/JSONObject;)V
    .registers 4

    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/heytap/mcssdk/d;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/heytap/msp/push/mode/MessageStat;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_start"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/heytap/msp/push/mode/MessageStat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/heytap/mcssdk/d;->a(Landroid/content/Context;Lcom/heytap/msp/push/mode/MessageStat;)V

    return-void
.end method

.method public static k()Lcom/heytap/mcssdk/d;
    .registers 1

    invoke-static {}, Lcom/heytap/mcssdk/d$a;->a()Lcom/heytap/mcssdk/d;

    move-result-object v0

    return-object v0
.end method

.method public static s()Ljava/lang/String;
    .registers 1

    const-string v0, "2.1.0"

    return-object v0
.end method

.method private v()Z
    .registers 2

    iget-object v0, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private w()Z
    .registers 2

    iget-object v0, p0, Lcom/heytap/mcssdk/d;->F:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private x()Z
    .registers 2

    invoke-direct {p0}, Lcom/heytap/mcssdk/d;->v()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/heytap/mcssdk/d;->w()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Lcom/heytap/mcssdk/d;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    new-instance p1, Lcom/heytap/mcssdk/b/a;

    invoke-direct {p1}, Lcom/heytap/mcssdk/b/a;-><init>()V

    iget-object v0, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/heytap/mcssdk/b/a;->a(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/heytap/mcssdk/f/c;->f(Z)V

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/heytap/mcssdk/d;->F:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/heytap/mcssdk/d;->a(ILorg/json/JSONObject;)V

    return-void
.end method

.method public a(ILorg/json/JSONObject;)V
    .registers 5

    invoke-direct {p0}, Lcom/heytap/mcssdk/d;->x()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x3013

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/heytap/mcssdk/d;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_24

    :cond_1d
    const-string p1, "mcssdk---"

    const-string p2, "please call the register first!"

    invoke-static {p1, p2}, Lcom/heytap/mcssdk/f/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/heytap/msp/push/callback/ICallBackResultService;)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/heytap/mcssdk/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/heytap/msp/push/callback/ICallBackResultService;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/heytap/msp/push/callback/ICallBackResultService;)V
    .registers 11

    const/4 v0, -0x2

    const/4 v1, 0x0

    if-nez p1, :cond_a

    if-eqz p5, :cond_9

    invoke-interface {p5, v0, v1}, Lcom/heytap/msp/push/callback/ICallBackResultService;->onRegister(ILjava/lang/String;)V

    :cond_9
    return-void

    :cond_a
    new-instance v2, Lcom/heytap/msp/push/mode/MessageStat;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "push_register"

    invoke-direct {v2, v3, v4, v1}, Lcom/heytap/msp/push/mode/MessageStat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/heytap/mcssdk/d;->a(Landroid/content/Context;Lcom/heytap/msp/push/mode/MessageStat;)V

    invoke-virtual {p0}, Lcom/heytap/mcssdk/d;->n()Z

    move-result v2

    if-nez v2, :cond_24

    if-eqz p5, :cond_23

    invoke-interface {p5, v0, v1}, Lcom/heytap/msp/push/callback/ICallBackResultService;->onRegister(ILjava/lang/String;)V

    :cond_23
    return-void

    :cond_24
    iput-object p2, p0, Lcom/heytap/mcssdk/d;->D:Ljava/lang/String;

    iput-object p3, p0, Lcom/heytap/mcssdk/d;->E:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    iput-object p5, p0, Lcom/heytap/mcssdk/d;->G:Lcom/heytap/msp/push/callback/ICallBackResultService;

    const/16 p1, 0x3001

    invoke-direct {p0, p1, p4}, Lcom/heytap/mcssdk/d;->b(ILorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lcom/heytap/msp/push/callback/ICallBackResultService;)V
    .registers 2

    iput-object p1, p0, Lcom/heytap/mcssdk/d;->G:Lcom/heytap/msp/push/callback/ICallBackResultService;

    return-void
.end method

.method public a(Lcom/heytap/msp/push/mode/DataMessage;Ljava/lang/String;I)V
    .registers 7

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/heytap/mcssdk/d;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/heytap/mcssdk/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    const/16 v2, 0x3003

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "taskID"

    invoke-virtual {p1}, Lcom/heytap/msp/push/mode/DataMessage;->getTaskID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appPackage"

    invoke-virtual {p1}, Lcom/heytap/msp/push/mode/DataMessage;->getAppPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "messageID"

    invoke-virtual {p1}, Lcom/heytap/msp/push/mode/DataMessage;->getMessageID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "messageType"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "eventID"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_5e

    :catch_45
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "statisticMessage--Exception"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/mcssdk/f/c;->e(Ljava/lang/String;)V

    :goto_5e
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/heytap/mcssdk/d;->F:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/heytap/mcssdk/d;->D:Ljava/lang/String;

    iput-object p2, p0, Lcom/heytap/mcssdk/d;->E:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;IIII)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IIII)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/heytap/mcssdk/d;->a(Ljava/util/List;IIIILorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/util/List;IIIILorg/json/JSONObject;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IIII",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/heytap/mcssdk/d;->x()Z

    move-result v0

    if-eqz v0, :cond_5d

    if-eqz p1, :cond_55

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_55

    if-ltz p2, :cond_55

    if-ltz p3, :cond_55

    if-lt p4, p2, :cond_55

    const/16 v0, 0x17

    if-gt p4, v0, :cond_55

    if-lt p5, p3, :cond_55

    const/16 v0, 0x3b

    if-gt p5, v0, :cond_55

    :try_start_1e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "weekDays"

    invoke-static {p1}, Lcom/heytap/mcssdk/c/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "startHour"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "startMin"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "endHour"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "endMin"

    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 p1, 0x300a

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p6}, Lcom/heytap/mcssdk/d;->a(ILjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_49} :catch_4a

    goto :goto_6d

    :catch_4a
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mcssdk---"

    invoke-static {p2, p1}, Lcom/heytap/mcssdk/f/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params are not all right,please check params"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5d
    invoke-virtual {p0}, Lcom/heytap/mcssdk/d;->q()Lcom/heytap/msp/push/callback/ICallBackResultService;

    move-result-object p1

    if-eqz p1, :cond_6d

    invoke-virtual {p0}, Lcom/heytap/mcssdk/d;->q()Lcom/heytap/msp/push/callback/ICallBackResultService;

    move-result-object p1

    const/4 p2, -0x2

    const-string p3, "please call the register first!"

    invoke-interface {p1, p2, p3}, Lcom/heytap/msp/push/callback/ICallBackResultService;->onSetPushTime(ILjava/lang/String;)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 4

    invoke-direct {p0}, Lcom/heytap/mcssdk/d;->v()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x3001

    invoke-direct {p0, v0, p1}, Lcom/heytap/mcssdk/d;->b(ILorg/json/JSONObject;)V

    goto :goto_1b

    :cond_c
    invoke-virtual {p0}, Lcom/heytap/mcssdk/d;->q()Lcom/heytap/msp/push/callback/ICallBackResultService;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/heytap/mcssdk/d;->q()Lcom/heytap/msp/push/callback/ICallBackResultService;

    move-result-object p1

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/heytap/msp/push/callback/ICallBackResultService;->onRegister(ILjava/lang/String;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heytap/mcssdk/d;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public b(I)V
    .registers 5

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/heytap/mcssdk/d;->b(ILjava/lang/String;Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    new-instance v1, Lcom/heytap/mcssdk/d$1;

    invoke-direct {v1, p0, p1}, Lcom/heytap/mcssdk/d$1;-><init>(Lcom/heytap/mcssdk/d;Landroid/content/Intent;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/heytap/msp/push/callback/ICallBackResultService;)V
    .registers 6

    iput-object p2, p0, Lcom/heytap/mcssdk/d;->D:Ljava/lang/String;

    iput-object p3, p0, Lcom/heytap/mcssdk/d;->E:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    iput-object p5, p0, Lcom/heytap/mcssdk/d;->G:Lcom/heytap/msp/push/callback/ICallBackResultService;

    invoke-virtual {p0, p4}, Lcom/heytap/mcssdk/d;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Lcom/heytap/mcssdk/d;->v()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x3002

    invoke-direct {p0, v0, p1}, Lcom/heytap/mcssdk/d;->b(ILorg/json/JSONObject;)V

    goto :goto_1a

    :cond_c
    invoke-virtual {p0}, Lcom/heytap/mcssdk/d;->q()Lcom/heytap/msp/push/callback/ICallBackResultService;

    move-result-object p1

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lcom/heytap/mcssdk/d;->q()Lcom/heytap/msp/push/callback/ICallBackResultService;

    move-result-object p1

    const/4 v0, -0x2

    invoke-interface {p1, v0}, Lcom/heytap/msp/push/callback/ICallBackResultService;->onUnRegister(I)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heytap/mcssdk/d;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .registers 4

    invoke-direct {p0}, Lcom/heytap/mcssdk/d;->x()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x3015

    invoke-direct {p0, v0, p1}, Lcom/heytap/mcssdk/d;->b(ILorg/json/JSONObject;)V

    goto :goto_1b

    :cond_c
    invoke-virtual {p0}, Lcom/heytap/mcssdk/d;->q()Lcom/heytap/msp/push/callback/ICallBackResultService;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/heytap/mcssdk/d;->q()Lcom/heytap/msp/push/callback/ICallBackResultService;

    move-result-object p1

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/heytap/msp/push/callback/ICallBackResultService;->onGetNotificationStatus(II)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heytap/mcssdk/d;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method public d(Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Lcom/heytap/mcssdk/d;->x()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x3014

    invoke-direct {p0, v0, p1}, Lcom/heytap/mcssdk/d;->b(ILorg/json/JSONObject;)V

    goto :goto_13

    :cond_c
    const-string p1, "mcssdk---"

    const-string v0, "please call the register first!"

    invoke-static {p1, v0}, Lcom/heytap/mcssdk/f/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heytap/mcssdk/d;->d(Lorg/json/JSONObject;)V

    return-void
.end method

.method public e(Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Lcom/heytap/mcssdk/d;->v()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x3017

    invoke-direct {p0, v0, p1}, Lcom/heytap/mcssdk/d;->b(ILorg/json/JSONObject;)V

    goto :goto_13

    :cond_c
    const-string p1, "mcssdk---"

    const-string v0, "please call the register first!"

    invoke-static {p1, v0}, Lcom/heytap/mcssdk/f/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heytap/mcssdk/d;->e(Lorg/json/JSONObject;)V

    return-void
.end method

.method public f(Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Lcom/heytap/mcssdk/d;->x()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x3016

    invoke-direct {p0, v0, p1}, Lcom/heytap/mcssdk/d;->b(ILorg/json/JSONObject;)V

    goto :goto_13

    :cond_c
    const-string p1, "mcssdk---"

    const-string v0, "please call the register first!"

    invoke-static {p1, v0}, Lcom/heytap/mcssdk/f/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method public g()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heytap/mcssdk/d;->f(Lorg/json/JSONObject;)V

    return-void
.end method

.method public g(Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Lcom/heytap/mcssdk/d;->x()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x300b

    invoke-direct {p0, v0, p1}, Lcom/heytap/mcssdk/d;->b(ILorg/json/JSONObject;)V

    goto :goto_13

    :cond_c
    const-string p1, "mcssdk---"

    const-string v0, "please call the register first!"

    invoke-static {p1, v0}, Lcom/heytap/mcssdk/f/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heytap/mcssdk/d;->g(Lorg/json/JSONObject;)V

    return-void
.end method

.method public h(Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Lcom/heytap/mcssdk/d;->x()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x300c

    invoke-direct {p0, v0, p1}, Lcom/heytap/mcssdk/d;->b(ILorg/json/JSONObject;)V

    goto :goto_13

    :cond_c
    const-string p1, "mcssdk---"

    const-string v0, "please call the register first!"

    invoke-static {p1, v0}, Lcom/heytap/mcssdk/f/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heytap/mcssdk/d;->h(Lorg/json/JSONObject;)V

    return-void
.end method

.method public j()V
    .registers 3

    invoke-direct {p0}, Lcom/heytap/mcssdk/d;->v()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x3019

    invoke-virtual {p0, v0}, Lcom/heytap/mcssdk/d;->b(I)V

    goto :goto_13

    :cond_c
    const-string v0, "mcssdk---"

    const-string v1, "please call the register first!"

    invoke-static {v0, v1}, Lcom/heytap/mcssdk/f/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method public l()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/heytap/mcssdk/d;->x:Ljava/lang/String;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/heytap/mcssdk/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/heytap/mcssdk/d;->c:[I

    invoke-static {v0}, Lcom/heytap/mcssdk/f/g;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heytap/mcssdk/d;->x:Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_19

    :cond_16
    sput-object v0, Lcom/heytap/mcssdk/d;->x:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_19
    sput-boolean v0, Lcom/heytap/mcssdk/d;->y:Z

    :cond_1b
    sget-object v0, Lcom/heytap/mcssdk/d;->x:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/heytap/mcssdk/d;->x:Ljava/lang/String;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/heytap/mcssdk/d;->a(Landroid/content/Context;)Ljava/lang/String;

    :cond_9
    sget-boolean v0, Lcom/heytap/mcssdk/d;->y:Z

    if-eqz v0, :cond_10

    const-string v0, "com.mcs.action.RECEIVE_SDK_MESSAGE"

    return-object v0

    :cond_10
    sget-object v0, Lcom/heytap/mcssdk/d;->d:[I

    invoke-static {v0}, Lcom/heytap/mcssdk/f/g;->a([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .registers 4

    invoke-virtual {p0}, Lcom/heytap/mcssdk/d;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/heytap/mcssdk/f/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/heytap/mcssdk/f/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3fb

    if-lt v1, v2, :cond_22

    iget-object v1, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    const-string v2, "supportOpenPush"

    invoke-static {v1, v0, v2}, Lcom/heytap/mcssdk/f/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public o()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/heytap/mcssdk/d/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/heytap/mcssdk/d;->C:Ljava/util/List;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/heytap/mcssdk/e/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/heytap/mcssdk/d;->B:Ljava/util/List;

    return-object v0
.end method

.method public q()Lcom/heytap/msp/push/callback/ICallBackResultService;
    .registers 2

    iget-object v0, p0, Lcom/heytap/mcssdk/d;->G:Lcom/heytap/msp/push/callback/ICallBackResultService;

    return-object v0
.end method

.method public r()V
    .registers 4

    invoke-direct {p0}, Lcom/heytap/mcssdk/d;->x()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x3012

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/heytap/mcssdk/d;->b(ILorg/json/JSONObject;)V

    goto :goto_1c

    :cond_d
    invoke-virtual {p0}, Lcom/heytap/mcssdk/d;->q()Lcom/heytap/msp/push/callback/ICallBackResultService;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/heytap/mcssdk/d;->q()Lcom/heytap/msp/push/callback/ICallBackResultService;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/heytap/msp/push/callback/ICallBackResultService;->onGetPushStatus(II)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public t()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/heytap/mcssdk/d;->v()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/heytap/mcssdk/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/mcssdk/f/g;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    const-string v0, ""

    return-object v0
.end method

.method public u()I
    .registers 3

    invoke-direct {p0}, Lcom/heytap/mcssdk/d;->v()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/heytap/mcssdk/d;->A:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/heytap/mcssdk/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/mcssdk/f/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method
