.class public final Lcom/google/android/gms/measurement/internal/zzeg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.2"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzei;

.field private final zzb:I

.field private final zzc:Z

.field private final zzd:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzei;IZZ)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zza:Lcom/google/android/gms/measurement/internal/zzei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzb:I

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzc:Z

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzd:Z

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zza:Lcom/google/android/gms/measurement/internal/zzei;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzb:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzc:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzd:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzm(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zza:Lcom/google/android/gms/measurement/internal/zzei;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzb:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzc:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzd:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzm(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zza:Lcom/google/android/gms/measurement/internal/zzei;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzb:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzc:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzd:Z

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzm(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zza:Lcom/google/android/gms/measurement/internal/zzei;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzb:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzc:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzd:Z

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzm(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
