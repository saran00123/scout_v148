.class final Lcom/google/android/gms/maps/SupportMapFragment$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/internal/MapLifecycleDelegate;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/SupportMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final fragment:Landroidx/fragment/app/Fragment;

.field private final zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    iput-object p2, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza;->fragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V
    .registers 4

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    new-instance v1, Lcom/google/android/gms/maps/zzak;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzak;-><init>(Lcom/google/android/gms/maps/SupportMapFragment$zza;Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->getMapAsync(Lcom/google/android/gms/maps/internal/zzap;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    .line 73
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "MapOptions"

    .line 13
    :try_start_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    invoke-static {p1, v1}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 16
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 18
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 19
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 20
    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-static {v1, p1}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception p1

    .line 24
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .line 25
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    invoke-static {p3, v0}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 29
    invoke-interface {v1, p1, p2, v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onCreateView(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/os/Bundle;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 30
    invoke-static {v0, p3}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_20

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :catch_20
    move-exception p1

    .line 33
    new-instance p2, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final onDestroy()V
    .registers 3

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onDestroy()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 58
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onDestroyView()V
    .registers 3

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onDestroyView()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 54
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onEnterAmbient(Landroid/os/Bundle;)V
    .registers 4

    .line 74
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    invoke-static {p1, v0}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 76
    iget-object v1, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v1, v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onEnterAmbient(Landroid/os/Bundle;)V

    .line 77
    invoke-static {v0, p1}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p1

    .line 80
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final onExitAmbient()V
    .registers 3

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onExitAmbient()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 84
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "MapOptions"

    .line 5
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 6
    :try_start_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    invoke-static {p3, v0}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v1, p1, p2, v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onInflate(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Bundle;)V

    .line 9
    invoke-static {v0, p3}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p1

    .line 12
    new-instance p2, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final onLowMemory()V
    .registers 3

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onLowMemory()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 62
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onPause()V
    .registers 3

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onPause()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 46
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onResume()V
    .registers 3

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onResume()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 42
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 63
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    invoke-static {p1, v0}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v1, v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 66
    invoke-static {v0, p1}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p1

    .line 69
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final onStart()V
    .registers 3

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onStart()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 38
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onStop()V
    .registers 3

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onStop()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 50
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
