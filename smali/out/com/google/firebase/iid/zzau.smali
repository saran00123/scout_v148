.class public final Lcom/google/firebase/iid/zzau;
.super Ljava/lang/Object;


# static fields
.field private static zzdd:Lcom/google/firebase/iid/zzau;


# instance fields
.field private final zzde:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "serviceClassNames"
    .end annotation
.end field

.field private zzdf:Ljava/lang/Boolean;

.field private zzdg:Ljava/lang/Boolean;

.field final zzdh:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdi:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzau;->zzde:Landroidx/collection/SimpleArrayMap;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/firebase/iid/zzau;->zzdf:Ljava/lang/Boolean;

    .line 7
    iput-object v0, p0, Lcom/google/firebase/iid/zzau;->zzdg:Ljava/lang/Boolean;

    .line 8
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzau;->zzdh:Ljava/util/Queue;

    .line 9
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzau;->zzdi:Ljava/util/Queue;

    return-void
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 5

    .line 15
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "wrapped_intent"

    .line 17
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static declared-synchronized zzai()Lcom/google/firebase/iid/zzau;
    .registers 2

    const-class v0, Lcom/google/firebase/iid/zzau;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/firebase/iid/zzau;->zzdd:Lcom/google/firebase/iid/zzau;

    if-nez v1, :cond_e

    .line 2
    new-instance v1, Lcom/google/firebase/iid/zzau;

    invoke-direct {v1}, Lcom/google/firebase/iid/zzau;-><init>()V

    sput-object v1, Lcom/google/firebase/iid/zzau;->zzdd:Lcom/google/firebase/iid/zzau;

    .line 3
    :cond_e
    sget-object v1, Lcom/google/firebase/iid/zzau;->zzdd:Lcom/google/firebase/iid/zzau;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static zzb(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string v0, "com.google.firebase.INSTANCE_ID_EVENT"

    .line 11
    invoke-static {p0, v0, p1}, Lcom/google/firebase/iid/zzau;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static zzc(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    .line 13
    invoke-static {p0, v0, p1}, Lcom/google/firebase/iid/zzau;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private final zzd(Landroid/content/Context;Landroid/content/Intent;)I
    .registers 7

    .line 33
    iget-object v0, p0, Lcom/google/firebase/iid/zzau;->zzde:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 34
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/iid/zzau;->zzde:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12f

    if-nez v1, :cond_ac

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_a4

    .line 38
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_23

    goto/16 :goto_a4

    .line 41
    :cond_23
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_36

    goto :goto_6e

    .line 45
    :cond_36
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v1, "."

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5c

    :cond_57
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_5c
    :goto_5c
    move-object v1, v0

    .line 47
    iget-object v2, p0, Lcom/google/firebase/iid/zzau;->zzde:Landroidx/collection/SimpleArrayMap;

    monitor-enter v2

    .line 48
    :try_start_60
    iget-object v0, p0, Lcom/google/firebase/iid/zzau;->zzde:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    monitor-exit v2

    goto :goto_ac

    :catchall_6b
    move-exception p1

    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_60 .. :try_end_6d} :catchall_6b

    throw p1

    .line 43
    :cond_6e
    :goto_6e
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error resolving target intent service, skipping classname enforcement. Resolved service was: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseInstanceId"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8

    :cond_a4
    :goto_a4
    const-string v0, "FirebaseInstanceId"

    const-string v1, "Failed to resolve target intent service, skipping classname enforcement"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8

    :cond_ac
    :goto_ac
    const/4 v0, 0x3

    const-string v2, "FirebaseInstanceId"

    .line 50
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d1

    const-string v0, "Restricting intent to a specific service: "

    .line 51
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c6

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_cc

    :cond_c6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_cc
    const-string v2, "FirebaseInstanceId"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_d1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :goto_d8
    :try_start_d8
    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/zzau;->zzd(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 54
    invoke-static {p1, p2}, Landroidx/legacy/content/WakefulBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_ee

    .line 55
    :cond_e3
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    const-string p2, "FirebaseInstanceId"

    const-string v0, "Missing wake lock permission, service start may be delayed"

    .line 56
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ee
    if-nez p1, :cond_fa

    const-string p1, "FirebaseInstanceId"

    const-string p2, "Error while delivering the message: ServiceIntent not found."

    .line 58
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catch Ljava/lang/SecurityException; {:try_start_d8 .. :try_end_f7} :catch_124
    .catch Ljava/lang/IllegalStateException; {:try_start_d8 .. :try_end_f7} :catch_fc

    const/16 p1, 0x194

    return p1

    :cond_fa
    const/4 p1, -0x1

    return p1

    :catch_fc
    move-exception p1

    .line 65
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Failed to start service while in background: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FirebaseInstanceId"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x192

    return p1

    :catch_124
    move-exception p1

    const-string p2, "FirebaseInstanceId"

    const-string v0, "Error while delivering the message to the serviceIntent"

    .line 62
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x191

    return p1

    :catchall_12f
    move-exception p1

    .line 35
    :try_start_130
    monitor-exit v0
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12f

    throw p1
.end method


# virtual methods
.method public final zzaj()Landroid/content/Intent;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/firebase/iid/zzau;->zzdi:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public final zzb(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I
    .registers 9

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "Starting service: "

    .line 21
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_1a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const/4 v1, -0x1

    .line 22
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x32362dbf

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3e

    const v3, 0x279bd20

    if-eq v2, v3, :cond_34

    goto :goto_47

    :cond_34
    const-string v2, "com.google.firebase.MESSAGING_EVENT"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    move v1, v4

    goto :goto_47

    :cond_3e
    const-string v2, "com.google.firebase.INSTANCE_ID_EVENT"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    const/4 v1, 0x0

    :cond_47
    :goto_47
    if-eqz v1, :cond_6e

    if-eq v1, v4, :cond_68

    const-string p1, "Unknown service action: "

    .line 27
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_5c

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_62

    :cond_5c
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_62
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1f4

    return p1

    .line 25
    :cond_68
    iget-object v0, p0, Lcom/google/firebase/iid/zzau;->zzdi:Ljava/util/Queue;

    invoke-interface {v0, p3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_73

    .line 23
    :cond_6e
    iget-object v0, p0, Lcom/google/firebase/iid/zzau;->zzdh:Ljava/util/Queue;

    invoke-interface {v0, p3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 29
    :goto_73
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-direct {p0, p1, p3}, Lcom/google/firebase/iid/zzau;->zzd(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p1

    return p1
.end method

.method final zzd(Landroid/content/Context;)Z
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/google/firebase/iid/zzau;->zzdf:Ljava/lang/Boolean;

    if-nez v0, :cond_15

    const-string v0, "android.permission.WAKE_LOCK"

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzau;->zzdf:Ljava/lang/Boolean;

    .line 70
    :cond_15
    iget-object p1, p0, Lcom/google/firebase/iid/zzau;->zzdf:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2b

    const/4 p1, 0x3

    const-string v0, "FirebaseInstanceId"

    .line 71
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string p1, "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    .line 72
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_2b
    iget-object p1, p0, Lcom/google/firebase/iid/zzau;->zzdf:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method final zze(Landroid/content/Context;)Z
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/google/firebase/iid/zzau;->zzdg:Ljava/lang/Boolean;

    if-nez v0, :cond_15

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzau;->zzdg:Ljava/lang/Boolean;

    .line 77
    :cond_15
    iget-object p1, p0, Lcom/google/firebase/iid/zzau;->zzdf:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2b

    const/4 p1, 0x3

    const-string v0, "FirebaseInstanceId"

    .line 78
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string p1, "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    .line 79
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_2b
    iget-object p1, p0, Lcom/google/firebase/iid/zzau;->zzdg:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
