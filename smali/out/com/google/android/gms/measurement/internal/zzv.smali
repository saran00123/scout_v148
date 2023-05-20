.class final Lcom/google/android/gms/measurement/internal/zzv;
.super Lcom/google/android/gms/measurement/internal/zzw;
.source "com.google.android.gms:play-services-measurement@@18.0.2"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzy;

.field private final zzh:Lcom/google/android/gms/internal/measurement/zzbw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzy;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzbw;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    return-void
.end method


# virtual methods
.method final zza()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb()I

    move-result v0

    return v0
.end method

.method final zzb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzc()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw;->zzg()Z

    move-result v0

    return v0
.end method

.method final zzd(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzdb;JLcom/google/android/gms/measurement/internal/zzao;Z)Z
    .registers 23

    move-object v0, p0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Z

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzb:Ljava/lang/String;

    .line 3
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdw;->zzaa:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw;->zzm()Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v2, p6

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zzao;->zze:J

    goto :goto_23

    :cond_21
    move-wide/from16 v2, p4

    :goto_23
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzn()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 7
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_93

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    iget v6, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzc:I

    .line 10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 11
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw;->zza()Z

    move-result v7

    if-eqz v7, :cond_5c

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_5d

    :cond_5c
    move-object v7, v5

    :goto_5d
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 12
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 13
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbw;->zzc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Evaluating filter. audience, filter, event"

    .line 14
    invoke-virtual {v4, v9, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 17
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 18
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzkf;->zzi(Lcom/google/android/gms/internal/measurement/zzbw;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Filter definition"

    invoke-virtual {v4, v7, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_93
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw;->zza()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_44d

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb()I

    move-result v4

    const/16 v7, 0x100

    if-le v4, v7, :cond_a8

    goto/16 :goto_44d

    .line 23
    :cond_a8
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw;->zzi()Z

    move-result v4

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 25
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw;->zzj()Z

    move-result v7

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 26
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw;->zzm()Z

    move-result v8

    const/4 v9, 0x1

    if-nez v4, :cond_c4

    if-nez v7, :cond_c4

    if-eqz v8, :cond_c2

    goto :goto_c4

    :cond_c2
    move v4, v6

    goto :goto_c5

    :cond_c4
    :goto_c4
    move v4, v9

    :goto_c5
    if-eqz p7, :cond_f3

    if-nez v4, :cond_f3

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 138
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzc:I

    .line 140
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 141
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw;->zza()Z

    move-result v3

    if-eqz v3, :cond_ed

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_ed
    const-string v3, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 142
    invoke-virtual {v1, v3, v2, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v9

    :cond_f3
    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzdb;->zzd()Ljava/lang/String;

    move-result-object v8

    .line 27
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw;->zzg()Z

    move-result v10

    if-eqz v10, :cond_117

    .line 28
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw;->zzh()Lcom/google/android/gms/internal/measurement/zzcd;

    move-result-object v10

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/measurement/internal/zzv;->zzg(JLcom/google/android/gms/internal/measurement/zzcd;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_10b

    goto/16 :goto_3ed

    .line 29
    :cond_10b
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_117

    .line 129
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_3ed

    :cond_117
    new-instance v2, Ljava/util/HashSet;

    .line 30
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 31
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw;->zzd()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_124
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_161

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzby;

    .line 32
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzby;->zzh()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_159

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 36
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v3

    .line 37
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "null or empty param name in filter. event"

    .line 38
    invoke-virtual {v2, v7, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3ed

    .line 33
    :cond_159
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzby;->zzh()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_124

    .line 39
    :cond_161
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzdb;->zza()Ljava/util/List;

    move-result-object v10

    .line 40
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_16e
    :goto_16e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_201

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzdf;

    .line 41
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16e

    .line 42
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zze()Z

    move-result v12

    if-eqz v12, :cond_1a2

    .line 43
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zze()Z

    move-result v13

    if-eqz v13, :cond_19d

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzf()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_19e

    :cond_19d
    move-object v11, v5

    :goto_19e
    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16e

    .line 44
    :cond_1a2
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzi()Z

    move-result v12

    if-eqz v12, :cond_1c0

    .line 45
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzi()Z

    move-result v13

    if-eqz v13, :cond_1bb

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzj()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    goto :goto_1bc

    :cond_1bb
    move-object v11, v5

    .line 46
    :goto_1bc
    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16e

    .line 47
    :cond_1c0
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzc()Z

    move-result v12

    if-eqz v12, :cond_1d2

    .line 48
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzd()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16e

    :cond_1d2
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 51
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v3

    .line 52
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 53
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v7

    .line 54
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzed;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Unknown value for param. event, param"

    .line 55
    invoke-virtual {v2, v8, v3, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3ed

    .line 56
    :cond_201
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw;->zzd()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_209
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3e9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzby;

    .line 57
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zze()Z

    move-result v10

    if-eqz v10, :cond_223

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zzf()Z

    move-result v10

    if-eqz v10, :cond_223

    move v10, v9

    goto :goto_224

    :cond_223
    move v10, v6

    .line 58
    :goto_224
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zzh()Ljava/lang/String;

    move-result-object v11

    .line 59
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_24d

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 79
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v3

    .line 80
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "Event has empty param name. event"

    .line 81
    invoke-virtual {v2, v7, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3ed

    .line 60
    :cond_24d
    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 61
    instance-of v13, v12, Ljava/lang/Long;

    if-eqz v13, :cond_2a4

    .line 62
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zzc()Z

    move-result v13

    if-nez v13, :cond_286

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 82
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 84
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v3

    .line 85
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 86
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v7

    .line 87
    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzed;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for long param. event, param"

    .line 88
    invoke-virtual {v2, v8, v3, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3ed

    .line 63
    :cond_286
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zzd()Lcom/google/android/gms/internal/measurement/zzcd;

    move-result-object v7

    invoke-static {v11, v12, v7}, Lcom/google/android/gms/measurement/internal/zzv;->zzg(JLcom/google/android/gms/internal/measurement/zzcd;)Ljava/lang/Boolean;

    move-result-object v7

    if-nez v7, :cond_298

    goto/16 :goto_3ed

    .line 64
    :cond_298
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v10, :cond_209

    .line 89
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_3ed

    .line 65
    :cond_2a4
    instance-of v13, v12, Ljava/lang/Double;

    if-eqz v13, :cond_2f7

    .line 66
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zzc()Z

    move-result v13

    if-nez v13, :cond_2d9

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 90
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 92
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v3

    .line 93
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 94
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v7

    .line 95
    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzed;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for double param. event, param"

    .line 96
    invoke-virtual {v2, v8, v3, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3ed

    .line 67
    :cond_2d9
    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zzd()Lcom/google/android/gms/internal/measurement/zzcd;

    move-result-object v7

    invoke-static {v11, v12, v7}, Lcom/google/android/gms/measurement/internal/zzv;->zzh(DLcom/google/android/gms/internal/measurement/zzcd;)Ljava/lang/Boolean;

    move-result-object v7

    if-nez v7, :cond_2eb

    goto/16 :goto_3ed

    .line 68
    :cond_2eb
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v10, :cond_209

    .line 97
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_3ed

    .line 69
    :cond_2f7
    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_38f

    .line 70
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zza()Z

    move-result v13

    if-eqz v13, :cond_314

    .line 71
    check-cast v12, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zzb()Lcom/google/android/gms/internal/measurement/zzck;

    move-result-object v7

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 72
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v11

    .line 71
    invoke-static {v12, v7, v11}, Lcom/google/android/gms/measurement/internal/zzv;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzck;Lcom/google/android/gms/measurement/internal/zzei;)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_32a

    .line 73
    :cond_314
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zzc()Z

    move-result v13

    if-eqz v13, :cond_365

    .line 74
    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzkf;->zzl(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_33a

    .line 75
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzby;->zzd()Lcom/google/android/gms/internal/measurement/zzcd;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/google/android/gms/measurement/internal/zzv;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcd;)Ljava/lang/Boolean;

    move-result-object v7

    :goto_32a
    if-nez v7, :cond_32e

    goto/16 :goto_3ed

    .line 76
    :cond_32e
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v10, :cond_209

    .line 98
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_3ed

    .line 75
    :cond_33a
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 99
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 101
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v3

    .line 102
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 103
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v7

    .line 104
    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzed;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Invalid param value for number filter. event, param"

    .line 105
    invoke-virtual {v2, v8, v3, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3ed

    :cond_365
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 106
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 108
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v3

    .line 109
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 110
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v7

    .line 111
    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzed;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No filter for String param. event, param"

    .line 112
    invoke-virtual {v2, v8, v3, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3ed

    :cond_38f
    if-nez v12, :cond_3bf

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 113
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 115
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v3

    .line 116
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 117
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v5

    .line 118
    invoke-virtual {v5, v11}, Lcom/google/android/gms/measurement/internal/zzed;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Missing param for filter. event, param"

    .line 119
    invoke-virtual {v2, v7, v3, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_3ed

    :cond_3bf
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 121
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 123
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v3

    .line 124
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 125
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v7

    .line 126
    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzed;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Unknown param type. event, param"

    .line 127
    invoke-virtual {v2, v8, v3, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3ed

    .line 128
    :cond_3e9
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 28
    :goto_3ed
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 130
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 131
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    if-nez v5, :cond_3fe

    const-string v3, "null"

    goto :goto_3ff

    :cond_3fe
    move-object v3, v5

    :goto_3ff
    const-string v7, "Event filter result"

    invoke-virtual {v2, v7, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v5, :cond_407

    return v6

    .line 132
    :cond_407
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzd:Ljava/lang/Boolean;

    .line 133
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_414

    return v9

    :cond_414
    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zze:Ljava/lang/Boolean;

    if-eqz v4, :cond_44c

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzdb;->zze()Z

    move-result v2

    if-eqz v2, :cond_44c

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzdb;->zzf()J

    move-result-wide v2

    .line 134
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 135
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw;->zzj()Z

    move-result v3

    if-eqz v3, :cond_43e

    if-eqz v1, :cond_43b

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 136
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw;->zzg()Z

    move-result v1

    if-nez v1, :cond_439

    goto :goto_43b

    :cond_439
    move-object/from16 v2, p1

    :cond_43b
    :goto_43b
    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzg:Ljava/lang/Long;

    goto :goto_44c

    :cond_43e
    if-eqz v1, :cond_44a

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 137
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw;->zzg()Z

    move-result v1

    if-eqz v1, :cond_44a

    move-object/from16 v2, p2

    :cond_44a
    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzf:Ljava/lang/Long;

    :cond_44c
    :goto_44c
    return v9

    .line 19
    :cond_44d
    :goto_44d
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzv;->zza:Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzb:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw;->zza()Z

    move-result v3

    if-eqz v3, :cond_471

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzv;->zzh:Lcom/google/android/gms/internal/measurement/zzbw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw;->zzb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_471
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event filter ID. appId, id"

    .line 23
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v6
.end method
