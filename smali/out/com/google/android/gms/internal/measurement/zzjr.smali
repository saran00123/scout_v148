.class final Lcom/google/android/gms/internal/measurement/zzjr;
.super Ljava/util/AbstractSet;
.source "com.google.android.gms:play-services-measurement-base@@18.0.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzjs;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzjs;Lcom/google/android/gms/internal/measurement/zzjl;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjr;->zza:Lcom/google/android/gms/internal/measurement/zzjs;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjr;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjr;->zza:Lcom/google/android/gms/internal/measurement/zzjs;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzjs;->zzf(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public final clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjr;->zza:Lcom/google/android/gms/internal/measurement/zzjs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjs;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjr;->zza:Lcom/google/android/gms/internal/measurement/zzjs;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_1f

    if-eqz v0, :cond_1e

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    return v1

    :cond_1e
    move v2, v1

    :cond_1f
    :goto_1f
    return v2
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjq;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjr;->zza:Lcom/google/android/gms/internal/measurement/zzjs;

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjq;-><init>(Lcom/google/android/gms/internal/measurement/zzjs;Lcom/google/android/gms/internal/measurement/zzjl;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjr;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjr;->zza:Lcom/google/android/gms/internal/measurement/zzjs;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjs;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjr;->zza:Lcom/google/android/gms/internal/measurement/zzjs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjs;->size()I

    move-result v0

    return v0
.end method
