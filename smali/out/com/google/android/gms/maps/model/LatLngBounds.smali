.class public final Lcom/google/android/gms/maps/model/LatLngBounds;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "LatLngBoundsCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/model/LatLngBounds;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final northeast:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x3
    .end annotation
.end field

.field public final southwest:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Lcom/google/android/gms/maps/model/zze;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 9
    .param p1    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const-string v0, "null southwest"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "null northeast"

    .line 3
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-wide v0, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v2

    iget-wide v4, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v3, v1

    const-string/jumbo v1, "southern latitude exceeds northern latitude (%s > %s)"

    .line 7
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    return-void
.end method

.method public static builder()Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    .registers 1

    .line 17
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    return-object v0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .registers 2

    .line 57
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->zza(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p0

    return-object p0
.end method

.method private static zza(DD)D
    .registers 4

    sub-double/2addr p0, p2

    const-wide p2, 0x4076800000000000L    # 360.0

    add-double/2addr p0, p2

    rem-double/2addr p0, p2

    return-wide p0
.end method

.method private final zza(D)Z
    .registers 8

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpg-double v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_20

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpg-double v0, v3, p1

    if-gtz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpg-double p1, p1, v3

    if-gtz p1, :cond_1f

    return v2

    :cond_1f
    return v1

    .line 44
    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpg-double v0, v3, p1

    if-lez v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpg-double p1, p1, v3

    if-gtz p1, :cond_31

    goto :goto_32

    :cond_31
    return v1

    :cond_32
    :goto_32
    return v2
.end method

.method private static zzb(DD)D
    .registers 4

    sub-double/2addr p2, p0

    const-wide p0, 0x4076800000000000L    # 360.0

    add-double/2addr p2, p0

    rem-double/2addr p2, p0

    return-wide p2
.end method

.method static synthetic zzc(DD)D
    .registers 4

    .line 58
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/LatLngBounds;->zza(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic zzd(DD)D
    .registers 4

    .line 59
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/LatLngBounds;->zzb(DD)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final contains(Lcom/google/android/gms/maps/model/LatLng;)Z
    .registers 9

    .line 19
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpg-double v2, v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v2, :cond_16

    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpg-double v0, v0, v5

    if-gtz v0, :cond_16

    move v0, v3

    goto :goto_17

    :cond_16
    move v0, v4

    :goto_17
    if-eqz v0, :cond_22

    .line 21
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;->zza(D)Z

    move-result p1

    if-eqz p1, :cond_22

    return v3

    :cond_22
    return v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 48
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/maps/model/LatLngBounds;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 50
    :cond_a
    check-cast p1, Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-object p1, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    return v0

    :cond_21
    return v2
.end method

.method public final getCenter()Lcom/google/android/gms/maps/model/LatLng;
    .registers 11

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 34
    iget-object v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 35
    iget-object v6, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpg-double v8, v6, v4

    if-gtz v8, :cond_19

    goto :goto_1f

    :cond_19
    const-wide v8, 0x4076800000000000L    # 360.0

    add-double/2addr v4, v8

    :goto_1f
    add-double/2addr v4, v6

    div-double/2addr v4, v2

    .line 39
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v2
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    .line 45
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final including(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .registers 16

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 25
    iget-object v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 26
    iget-object v6, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 27
    iget-wide v8, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 28
    invoke-direct {p0, v8, v9}, Lcom/google/android/gms/maps/model/LatLngBounds;->zza(D)Z

    move-result p1

    if-nez p1, :cond_33

    .line 29
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLngBounds;->zza(DD)D

    move-result-wide v10

    invoke-static {v4, v5, v8, v9}, Lcom/google/android/gms/maps/model/LatLngBounds;->zzb(DD)D

    move-result-wide v12

    cmpg-double p1, v10, v12

    if-gez p1, :cond_32

    move-wide v6, v8

    goto :goto_33

    :cond_32
    move-wide v4, v8

    .line 32
    :cond_33
    :goto_33
    new-instance p1, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v8, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v8, v0, v1, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p1, v8, v0}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 52
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    const-string/jumbo v2, "southwest"

    .line 53
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    const-string v2, "northeast"

    .line 54
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 15
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
