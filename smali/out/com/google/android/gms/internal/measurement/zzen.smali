.class public final Lcom/google/android/gms/internal/measurement/zzen;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzer;


# static fields
.field public static final zza:[Ljava/lang/String;

.field private static final zzb:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "ConfigurationContentLoader.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/internal/measurement/zzen;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzc:Landroid/content/ContentResolver;

.field private final zzd:Landroid/net/Uri;

.field private final zze:Landroid/database/ContentObserver;

.field private final zzf:Ljava/lang/Object;

.field private volatile zzg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzh:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzeo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzen;->zzb:Ljava/util/Map;

    const-string v0, "key"

    const-string/jumbo v1, "value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzen;->zza:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzem;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzem;-><init>(Lcom/google/android/gms/internal/measurement/zzen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen;->zze:Landroid/database/ContentObserver;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzf:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzh:Ljava/util/List;

    if-eqz p1, :cond_29

    if-eqz p2, :cond_28

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzc:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzd:Landroid/net/Uri;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzen;->zze:Landroid/database/ContentObserver;

    .line 3
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    .line 4
    :cond_28
    throw v1

    .line 5
    :cond_29
    throw v1
.end method

.method public static zza(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/zzen;
    .registers 5

    const-class v0, Lcom/google/android/gms/internal/measurement/zzen;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzen;->zzb:Ljava/util/Map;

    .line 1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzen;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1a

    if-nez v1, :cond_18

    :try_start_d
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzen;

    .line 2
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/measurement/zzen;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_12} :catch_18
    .catchall {:try_start_d .. :try_end_12} :catchall_1a

    :try_start_12
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzen;->zzb:Ljava/util/Map;

    .line 3
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_17} :catch_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1a

    :catch_17
    move-object v1, v2

    .line 4
    :catch_18
    :cond_18
    :try_start_18
    monitor-exit v0

    return-object v1

    :catchall_1a
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method static declared-synchronized zzd()V
    .registers 4

    const-class v0, Lcom/google/android/gms/internal/measurement/zzen;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzen;->zzb:Ljava/util/Map;

    .line 1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzen;

    .line 2
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzen;->zzc:Landroid/content/ContentResolver;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzen;->zze:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_d

    :cond_21
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzen;->zzb:Ljava/util/Map;

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_28

    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final zzb()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzg:Ljava/util/Map;

    if-nez v0, :cond_38

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzf:Ljava/lang/Object;

    .line 1
    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzg:Ljava/util/Map;

    if-nez v0, :cond_33

    .line 2
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_35

    :try_start_f
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzel;

    .line 3
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/measurement/zzel;-><init>(Lcom/google/android/gms/internal/measurement/zzen;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzep;->zza(Lcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_1a} :catch_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_1a} :catch_20
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_1a} :catch_20
    .catchall {:try_start_f .. :try_end_1a} :catchall_1e

    .line 5
    :try_start_1a
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_35

    goto :goto_2b

    :catchall_1e
    move-exception v2

    goto :goto_2f

    :catch_20
    :try_start_20
    const-string v2, "ConfigurationContentLoader"

    const-string v3, "PhenotypeFlag unable to load ContentProvider, using default values"

    .line 4
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_1e

    .line 5
    :try_start_27
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v2, 0x0

    :goto_2b
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzg:Ljava/util/Map;

    move-object v0, v2

    goto :goto_33

    :goto_2f
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 6
    throw v2

    .line 7
    :cond_33
    :goto_33
    monitor-exit v1

    goto :goto_38

    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_35

    throw v0

    :cond_38
    :goto_38
    if-eqz v0, :cond_3b

    return-object v0

    .line 8
    :cond_3b
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzf:Ljava/lang/Object;

    .line 1
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzg:Ljava/util/Map;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfg;->zzc()V

    .line 3
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_26

    monitor-enter p0

    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzh:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzeo;

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzeo;->zza()V

    goto :goto_11

    .line 6
    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw v0

    :catchall_26
    move-exception v1

    .line 3
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public final bridge synthetic zze(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zzb()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method final synthetic zzf()Ljava/util/Map;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzc:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzd:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzen;->zza:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_14

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_14
    :try_start_14
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_22

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_4b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_22
    const/16 v2, 0x100

    if-gt v1, v2, :cond_2c

    :try_start_26
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2, v1}, Landroidx/collection/ArrayMap;-><init>(I)V

    goto :goto_33

    :cond_2c
    new-instance v2, Ljava/util/HashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v3}, Ljava/util/HashMap;-><init>(IF)V

    :goto_33
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_4b

    goto :goto_33

    :cond_47
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_4b
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method
