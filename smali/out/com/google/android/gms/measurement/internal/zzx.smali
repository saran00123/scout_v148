.class final Lcom/google/android/gms/measurement/internal/zzx;
.super Lcom/google/android/gms/measurement/internal/zzw;
.source "com.google.android.gms:play-services-measurement@@18.0.2"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzy;

.field private final zzh:Lcom/google/android/gms/internal/measurement/zzcf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzy;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzcf;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/internal/measurement/zzcf;

    return-void
.end method


# virtual methods
.method final zza()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcf;->zzb()I

    move-result v0

    return v0
.end method

.method final zzb()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final zzc()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzd(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzdu;Z)Z
    .registers 15

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzb:Ljava/lang/String;

    .line 3
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdw;->zzY:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcf;->zze()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcf;->zzf()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcf;->zzh()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_30

    if-nez v2, :cond_30

    if-eqz v3, :cond_2e

    goto :goto_30

    :cond_2e
    move v1, v4

    goto :goto_31

    :cond_30
    :goto_30
    move v1, v5

    :goto_31
    const/4 v2, 0x0

    if-eqz p4, :cond_60

    if-nez v1, :cond_60

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzc:I

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 70
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcf;->zza()Z

    move-result p3

    if-eqz p3, :cond_5a

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzcf;->zzb()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5a
    const-string p3, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 71
    invoke-virtual {p1, p3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v5

    :cond_60
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcf;->zzd()Lcom/google/android/gms/internal/measurement/zzby;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzby;->zzf()Z

    move-result v7

    .line 10
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzf()Z

    move-result v8

    if-eqz v8, :cond_ab

    .line 11
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzby;->zzc()Z

    move-result v8

    if-nez v8, :cond_99

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 12
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v6

    .line 13
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 14
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v7

    .line 15
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for long property. property"

    .line 16
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_19c

    .line 17
    :cond_99
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzg()J

    move-result-wide v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzby;->zzd()Lcom/google/android/gms/internal/measurement/zzcd;

    move-result-object v2

    invoke-static {v8, v9, v2}, Lcom/google/android/gms/measurement/internal/zzx;->zzg(JLcom/google/android/gms/internal/measurement/zzcd;)Ljava/lang/Boolean;

    move-result-object v2

    .line 18
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_19c

    .line 19
    :cond_ab
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzh()Z

    move-result v8

    if-eqz v8, :cond_ec

    .line 20
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzby;->zzc()Z

    move-result v8

    if-nez v8, :cond_da

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 21
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v6

    .line 22
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 23
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v7

    .line 24
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for double property. property"

    .line 25
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_19c

    .line 26
    :cond_da
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzi()D

    move-result-wide v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzby;->zzd()Lcom/google/android/gms/internal/measurement/zzcd;

    move-result-object v2

    invoke-static {v8, v9, v2}, Lcom/google/android/gms/measurement/internal/zzx;->zzh(DLcom/google/android/gms/internal/measurement/zzcd;)Ljava/lang/Boolean;

    move-result-object v2

    .line 27
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_19c

    .line 28
    :cond_ec
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzd()Z

    move-result v8

    if-eqz v8, :cond_17b

    .line 29
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzby;->zza()Z

    move-result v8

    if-nez v8, :cond_162

    .line 30
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzby;->zzc()Z

    move-result v8

    if-nez v8, :cond_121

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 31
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v6

    .line 32
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 33
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v7

    .line 34
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No string or number filter defined. property"

    .line 35
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_19c

    .line 36
    :cond_121
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zze()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkf;->zzl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13c

    .line 37
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzby;->zzd()Lcom/google/android/gms/internal/measurement/zzcd;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/zzx;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcd;)Ljava/lang/Boolean;

    move-result-object v2

    .line 38
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_19c

    :cond_13c
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 39
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v6

    .line 40
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 41
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v7

    .line 42
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 43
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zze()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Invalid user property value for Numeric number filter. property, value"

    .line 44
    invoke-virtual {v6, v9, v7, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19c

    .line 45
    :cond_162
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzby;->zzb()Lcom/google/android/gms/internal/measurement/zzck;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 46
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v8

    .line 45
    invoke-static {v2, v6, v8}, Lcom/google/android/gms/measurement/internal/zzx;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzck;Lcom/google/android/gms/measurement/internal/zzei;)Ljava/lang/Boolean;

    move-result-object v2

    .line 47
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_19c

    :cond_17b
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 48
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v6

    .line 49
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 50
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v7

    .line 51
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "User property has no value, property"

    .line 52
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    :goto_19c
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 53
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v6

    .line 54
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v6

    if-nez v2, :cond_1ad

    const-string v7, "null"

    goto :goto_1ae

    :cond_1ad
    move-object v7, v2

    :goto_1ae
    const-string v8, "Property filter result"

    .line 55
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v2, :cond_1b6

    return v4

    .line 56
    :cond_1b6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Ljava/lang/Boolean;

    if-eqz v3, :cond_1c6

    .line 57
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1c5

    goto :goto_1c6

    :cond_1c5
    return v5

    :cond_1c6
    :goto_1c6
    if-eqz p4, :cond_1d0

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 58
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzcf;->zze()Z

    move-result p4

    if-eqz p4, :cond_1d2

    :cond_1d0
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zze:Ljava/lang/Boolean;

    .line 59
    :cond_1d2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_217

    if-eqz v1, :cond_217

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zza()Z

    move-result p4

    if-eqz p4, :cond_217

    .line 60
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzdu;->zzb()J

    move-result-wide p3

    if-eqz p1, :cond_1ea

    .line 61
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_1ea
    if-eqz v0, :cond_202

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcf;->zze()Z

    move-result p1

    if-eqz p1, :cond_202

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcf;->zzf()Z

    move-result p1

    if-nez p1, :cond_202

    if-eqz p2, :cond_202

    .line 63
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_202
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcf;->zzf()Z

    move-result p1

    if-eqz p1, :cond_211

    .line 65
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Ljava/lang/Long;

    goto :goto_217

    .line 66
    :cond_211
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzf:Ljava/lang/Long;

    :cond_217
    :goto_217
    return v5
.end method
