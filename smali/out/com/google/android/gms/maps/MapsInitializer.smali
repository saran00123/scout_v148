.class public final Lcom/google/android/gms/maps/MapsInitializer;
.super Ljava/lang/Object;


# static fields
.field private static zzbm:Z = false
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "MapsInitializer.class"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)I
    .registers 4

    const-class v0, Lcom/google/android/gms/maps/MapsInitializer;

    monitor-enter v0

    :try_start_3
    const-string v1, "Context is null"

    .line 1
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-boolean v1, Lcom/google/android/gms/maps/MapsInitializer;->zzbm:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_32

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 3
    monitor-exit v0

    return v2

    .line 4
    :cond_f
    :try_start_f
    invoke-static {p0}, Lcom/google/android/gms/maps/internal/zzbz;->zza(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/zze;

    move-result-object p0
    :try_end_13
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_f .. :try_end_13} :catch_2d
    .catchall {:try_start_f .. :try_end_13} :catchall_32

    .line 8
    :try_start_13
    invoke-interface {p0}, Lcom/google/android/gms/maps/internal/zze;->zze()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zza(Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;)V

    .line 9
    invoke-interface {p0}, Lcom/google/android/gms/maps/internal/zze;->zzf()Lcom/google/android/gms/internal/maps/zze;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->zza(Lcom/google/android/gms/internal/maps/zze;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_21} :catch_26
    .catchall {:try_start_13 .. :try_end_21} :catchall_32

    const/4 p0, 0x1

    .line 13
    :try_start_22
    sput-boolean p0, Lcom/google/android/gms/maps/MapsInitializer;->zzbm:Z
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_32

    .line 14
    monitor-exit v0

    return v2

    :catch_26
    move-exception p0

    .line 12
    :try_start_27
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_2d
    move-exception p0

    .line 6
    iget p0, p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_32

    monitor-exit v0

    return p0

    :catchall_32
    move-exception p0

    monitor-exit v0

    throw p0
.end method
