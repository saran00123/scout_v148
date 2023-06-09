.class public final Lcom/google/android/gms/maps/model/GroundOverlay;
.super Ljava/lang/Object;


# instance fields
.field private final zzcw:Lcom/google/android/gms/internal/maps/zzk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/maps/zzk;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/maps/zzk;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 87
    instance-of v0, p1, Lcom/google/android/gms/maps/model/GroundOverlay;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 89
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    check-cast p1, Lcom/google/android/gms/maps/model/GroundOverlay;

    iget-object p1, p1, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzk;->zzb(Lcom/google/android/gms/internal/maps/zzk;)Z

    move-result p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return p1

    :catch_11
    move-exception p1

    .line 91
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final getBearing()F
    .registers 3

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzk;->getBearing()F

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 51
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;
    .registers 3

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzk;->getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 44
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getHeight()F
    .registers 3

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzk;->getHeight()F

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 37
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getId()Ljava/lang/String;
    .registers 3

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzk;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 10
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .registers 3

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzk;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 17
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getTag()Ljava/lang/Object;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzk;->zzk()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 86
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getTransparency()F
    .registers 3

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzk;->getTransparency()F

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 79
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getWidth()F
    .registers 3

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzk;->getWidth()F

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 34
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getZIndex()F
    .registers 3

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzk;->getZIndex()F

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 58
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final hashCode()I
    .registers 3

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzk;->zzj()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 94
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isClickable()Z
    .registers 3

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzk;->isClickable()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 72
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isVisible()Z
    .registers 3

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzk;->isVisible()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 65
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final remove()V
    .registers 3

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzk;->remove()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 7
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setBearing(F)V
    .registers 3

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzk;->setBearing(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 48
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setClickable(Z)V
    .registers 3

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzk;->setClickable(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 69
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setDimensions(F)V
    .registers 3

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzk;->setDimensions(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 27
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setDimensions(FF)V
    .registers 4

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/maps/zzk;->zza(FF)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 31
    new-instance p2, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final setImage(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/maps/model/BitmapDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "imageDescriptor must not be null"

    .line 18
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :try_start_5
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzk;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p1

    .line 23
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 3

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzk;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 14
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setPositionFromBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .registers 3

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzk;->setPositionFromBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 41
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setTag(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzk;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    .line 83
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setTransparency(F)V
    .registers 3

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzk;->setTransparency(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 76
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setVisible(Z)V
    .registers 3

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzk;->setVisible(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 62
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setZIndex(F)V
    .registers 3

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlay;->zzcw:Lcom/google/android/gms/internal/maps/zzk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzk;->setZIndex(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 55
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
