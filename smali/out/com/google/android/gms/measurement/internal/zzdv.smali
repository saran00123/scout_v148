.class public final Lcom/google/android/gms/measurement/internal/zzdv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.2"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzf:Ljava/lang/Object;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/measurement/internal/zzdt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/measurement/internal/zzdt<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zze:Ljava/lang/Object;

.field private volatile zzg:Ljava/lang/Object;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "overrideLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private volatile zzh:Ljava/lang/Object;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "cachingLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzdv;->zzf:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/measurement/internal/zzdt;Lcom/google/android/gms/measurement/internal/zzds;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zze:Ljava/lang/Object;

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zzg:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zzh:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zzc:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zzd:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zzb:Lcom/google/android/gms/measurement/internal/zzdt;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zze:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zzg:Ljava/lang/Object;

    .line 1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_6f

    if-eqz p1, :cond_9

    return-object p1

    :cond_9
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzdu;->zza:Lcom/google/android/gms/measurement/internal/zzz;

    if-eqz p1, :cond_6c

    sget-object p1, Lcom/google/android/gms/measurement/internal/zzdv;->zzf:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_10
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzz;->zza()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zzh:Ljava/lang/Object;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zzc:Ljava/lang/Object;

    goto :goto_1f

    .line 3
    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zzh:Ljava/lang/Object;

    :goto_1f
    monitor-exit p1

    return-object v0

    .line 4
    :cond_21
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_69

    .line 5
    :try_start_22
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzdw;->zzc()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzdv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzz;->zza()Z

    move-result v1
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_3a} :catch_57

    if-nez v1, :cond_4f

    const/4 v1, 0x0

    .line 9
    :try_start_3d
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzdv;->zzb:Lcom/google/android/gms/measurement/internal/zzdt;

    if-eqz v2, :cond_45

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/measurement/internal/zzdt;->zza()Ljava/lang/Object;

    move-result-object v1
    :try_end_45
    .catch Ljava/lang/IllegalStateException; {:try_start_3d .. :try_end_45} :catch_45
    .catch Ljava/lang/SecurityException; {:try_start_3d .. :try_end_45} :catch_57

    :catch_45
    :cond_45
    :try_start_45
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdv;->zzf:Ljava/lang/Object;

    monitor-enter v2
    :try_end_48
    .catch Ljava/lang/SecurityException; {:try_start_45 .. :try_end_48} :catch_57

    :try_start_48
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzdv;->zzh:Ljava/lang/Object;

    .line 8
    monitor-exit v2

    goto :goto_2a

    :catchall_4c
    move-exception p1

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw p1

    .line 6
    :cond_4f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Refreshing flag cache must be done on a worker thread."

    .line 9
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_57
    .catch Ljava/lang/SecurityException; {:try_start_4e .. :try_end_57} :catch_57

    .line 8
    :catch_57
    :cond_57
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zzb:Lcom/google/android/gms/measurement/internal/zzdt;

    if-nez p1, :cond_5e

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zzc:Ljava/lang/Object;

    return-object p1

    .line 10
    :cond_5e
    :try_start_5e
    invoke-interface {p1}, Lcom/google/android/gms/measurement/internal/zzdt;->zza()Ljava/lang/Object;

    move-result-object p1
    :try_end_62
    .catch Ljava/lang/SecurityException; {:try_start_5e .. :try_end_62} :catch_66
    .catch Ljava/lang/IllegalStateException; {:try_start_5e .. :try_end_62} :catch_63

    return-object p1

    .line 8
    :catch_63
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zzc:Ljava/lang/Object;

    return-object p1

    :catch_66
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zzc:Ljava/lang/Object;

    return-object p1

    :catchall_69
    move-exception v0

    .line 4
    :try_start_6a
    monitor-exit p1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v0

    .line 10
    :cond_6c
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zzc:Ljava/lang/Object;

    return-object p1

    :catchall_6f
    move-exception p1

    .line 1
    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw p1
.end method
