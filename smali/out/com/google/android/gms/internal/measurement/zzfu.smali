.class final Lcom/google/android/gms/internal/measurement/zzfu;
.super Ljava/lang/ref/WeakReference;
.source "com.google.android.gms:play-services-measurement-base@@18.0.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->zza:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_25

    :cond_e
    const/4 v1, 0x1

    if-ne p0, p1, :cond_12

    return v1

    .line 1
    :cond_12
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfu;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzfu;->zza:I

    iget v3, p1, Lcom/google/android/gms/internal/measurement/zzfu;->zza:I

    if-ne v2, v3, :cond_25

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfu;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfu;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne v2, p1, :cond_25

    return v1

    :cond_25
    :goto_25
    return v0
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->zza:I

    return v0
.end method
