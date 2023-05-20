.class abstract Lcom/google/android/gms/measurement/internal/zzw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.2"


# instance fields
.field final zzb:Ljava/lang/String;

.field final zzc:I

.field zzd:Ljava/lang/Boolean;

.field zze:Ljava/lang/Boolean;

.field zzf:Ljava/lang/Long;

.field zzg:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:I

    return-void
.end method

.method private static zzd(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcj;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzei;)Ljava/lang/Boolean;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzcj;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzei;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcj;->zzg:Lcom/google/android/gms/internal/measurement/zzcj;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_f

    if-eqz p4, :cond_e

    .line 2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_12

    :cond_e
    return-object v1

    :cond_f
    if-nez p3, :cond_12

    return-object v1

    :cond_12
    :goto_12
    if-nez p2, :cond_1e

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcj;->zzb:Lcom/google/android/gms/internal/measurement/zzcj;

    if-eq p1, v0, :cond_1e

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 4
    :cond_1e
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcc;->zza:Lcom/google/android/gms/internal/measurement/zzcc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcj;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_80

    return-object v1

    :pswitch_28
    if-nez p4, :cond_2b

    return-object v1

    .line 5
    :cond_2b
    invoke-interface {p4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_34
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_3d
    invoke-virtual {p0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_46
    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_4f
    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_58
    if-nez p5, :cond_5b

    return-object v1

    :cond_5b
    const/4 p1, 0x1

    if-eq p1, p2, :cond_61

    const/16 p1, 0x42

    goto :goto_62

    :cond_61
    const/4 p1, 0x0

    :goto_62
    :try_start_62
    invoke-static {p5, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_72
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_62 .. :try_end_72} :catch_73

    return-object p0

    :catch_73
    if-eqz p6, :cond_7e

    invoke-virtual {p6}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p0

    const-string p1, "Invalid regular expression in REGEXP audience filter. expression"

    .line 11
    invoke-virtual {p0, p1, p5}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7e
    return-object v1

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_58
        :pswitch_4f
        :pswitch_46
        :pswitch_3d
        :pswitch_34
        :pswitch_28
    .end packed-switch
.end method

.method static zze(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eq p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static zzf(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzck;Lcom/google/android/gms/measurement/internal/zzei;)Ljava/lang/Boolean;
    .registers 12
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p0, :cond_7

    return-object v0

    .line 2
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzck;->zza()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzck;->zzb()Lcom/google/android/gms/internal/measurement/zzcj;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzcj;->zza:Lcom/google/android/gms/internal/measurement/zzcj;

    if-ne v1, v2, :cond_17

    goto/16 :goto_95

    .line 3
    :cond_17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzck;->zzb()Lcom/google/android/gms/internal/measurement/zzcj;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzcj;->zzg:Lcom/google/android/gms/internal/measurement/zzcj;

    if-ne v1, v2, :cond_27

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzck;->zzh()I

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_2e

    :cond_26
    return-object v0

    .line 5
    :cond_27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzck;->zzc()Z

    move-result v1

    if-nez v1, :cond_2e

    return-object v0

    .line 6
    :cond_2e
    :goto_2e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzck;->zzb()Lcom/google/android/gms/internal/measurement/zzcj;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzck;->zzf()Z

    move-result v4

    if-nez v4, :cond_4c

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcj;->zzb:Lcom/google/android/gms/internal/measurement/zzcj;

    if-eq v3, v1, :cond_4c

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcj;->zzg:Lcom/google/android/gms/internal/measurement/zzcj;

    if-ne v3, v1, :cond_41

    goto :goto_4c

    .line 9
    :cond_41
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzck;->zzd()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_50

    .line 8
    :cond_4c
    :goto_4c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzck;->zzd()Ljava/lang/String;

    move-result-object v1

    :goto_50
    move-object v5, v1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzck;->zzh()I

    move-result v1

    if-nez v1, :cond_59

    move-object v6, v0

    goto :goto_87

    .line 11
    :cond_59
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzck;->zzg()Ljava/util/List;

    move-result-object p1

    if-nez v4, :cond_86

    new-instance v1, Ljava/util/ArrayList;

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 14
    invoke-virtual {v2, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 15
    :cond_82
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :cond_86
    move-object v6, p1

    .line 10
    :goto_87
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcj;->zzb:Lcom/google/android/gms/internal/measurement/zzcj;

    if-ne v3, p1, :cond_8d

    move-object v7, v5

    goto :goto_8e

    :cond_8d
    move-object v7, v0

    :goto_8e
    move-object v2, p0

    move-object v8, p2

    .line 16
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzw;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcj;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzei;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_95
    :goto_95
    return-object v0
.end method

.method static zzg(JLcom/google/android/gms/internal/measurement/zzcd;)Ljava/lang/Boolean;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    .line 1
    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 p0, 0x0

    invoke-static {v0, p2, p0, p1}, Lcom/google/android/gms/measurement/internal/zzw;->zzj(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzcd;D)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    const/4 p0, 0x0

    return-object p0
.end method

.method static zzh(DLcom/google/android/gms/internal/measurement/zzcd;)Ljava/lang/Boolean;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    .line 1
    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p0, p1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide p0

    invoke-static {v0, p2, p0, p1}, Lcom/google/android/gms/measurement/internal/zzw;->zzj(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzcd;D)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    const/4 p0, 0x0

    return-object p0
.end method

.method static zzi(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcd;)Ljava/lang/Boolean;
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzkf;->zzl(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    new-instance v0, Ljava/math/BigDecimal;

    .line 2
    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzw;->zzj(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzcd;D)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    return-object v1
.end method

.method static zzj(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzcd;D)Ljava/lang/Boolean;
    .registers 13
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd;->zza()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11c

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd;->zzb()Lcom/google/android/gms/internal/measurement/zzcc;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzcc;->zza:Lcom/google/android/gms/internal/measurement/zzcc;

    if-ne v0, v2, :cond_14

    goto/16 :goto_11c

    .line 4
    :cond_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd;->zzb()Lcom/google/android/gms/internal/measurement/zzcc;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzcc;->zze:Lcom/google/android/gms/internal/measurement/zzcc;

    if-ne v0, v2, :cond_2a

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd;->zzg()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd;->zzi()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_31

    :cond_29
    return-object v1

    .line 6
    :cond_2a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd;->zze()Z

    move-result v0

    if-nez v0, :cond_31

    return-object v1

    .line 7
    :cond_31
    :goto_31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd;->zzb()Lcom/google/android/gms/internal/measurement/zzcc;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd;->zzb()Lcom/google/android/gms/internal/measurement/zzcc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzcc;->zze:Lcom/google/android/gms/internal/measurement/zzcc;

    if-ne v2, v3, :cond_68

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkf;->zzl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkf;->zzl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_52

    goto :goto_67

    :cond_52
    :try_start_52
    new-instance v2, Ljava/math/BigDecimal;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigDecimal;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd;->zzj()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_52 .. :try_end_64} :catch_67

    move-object p1, v2

    move-object v2, v1

    goto :goto_7e

    :catch_67
    :cond_67
    :goto_67
    return-object v1

    .line 13
    :cond_68
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkf;->zzl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_73

    return-object v1

    :cond_73
    :try_start_73
    new-instance v2, Ljava/math/BigDecimal;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd;->zzf()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_7c} :catch_11c

    move-object p1, v1

    move-object v3, p1

    .line 12
    :goto_7e
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzcc;->zze:Lcom/google/android/gms/internal/measurement/zzcc;

    if-ne v0, v4, :cond_85

    if-eqz p1, :cond_10f

    goto :goto_89

    :cond_85
    if-nez v2, :cond_89

    goto/16 :goto_10f

    .line 15
    :cond_89
    :goto_89
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzcj;->zza:Lcom/google/android/gms/internal/measurement/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcc;->ordinal()I

    move-result v0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_10d

    const/4 v7, 0x2

    if-eq v0, v7, :cond_fe

    const/4 v8, 0x3

    if-eq v0, v8, :cond_b3

    const/4 p2, 0x4

    if-eq v0, p2, :cond_9f

    goto/16 :goto_10f

    :cond_9f
    if-eqz p1, :cond_10f

    .line 16
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-eq p1, v4, :cond_ae

    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-eq p0, v6, :cond_ae

    move v5, v6

    :cond_ae
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_10f

    :cond_b3
    if-nez v2, :cond_b6

    goto :goto_10f

    :cond_b6
    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-eqz p1, :cond_f2

    new-instance p1, Ljava/math/BigDecimal;

    .line 17
    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v7}, Ljava/math/BigDecimal;-><init>(I)V

    .line 18
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ne p1, v6, :cond_ed

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v7}, Ljava/math/BigDecimal;-><init>(I)V

    .line 19
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v4, :cond_ed

    move v5, v6

    .line 17
    :cond_ed
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_10f

    .line 21
    :cond_f2
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_f9

    move v5, v6

    :cond_f9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_10f

    :cond_fe
    if-nez v2, :cond_101

    goto :goto_10f

    .line 22
    :cond_101
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v6, :cond_108

    move v5, v6

    :cond_108
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_10d
    if-nez v2, :cond_110

    :cond_10f
    :goto_10f
    return-object v1

    .line 23
    :cond_110
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v4, :cond_117

    move v5, v6

    :cond_117
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_11c
    :cond_11c
    :goto_11c
    return-object v1
.end method


# virtual methods
.method abstract zza()I
.end method

.method abstract zzb()Z
.end method

.method abstract zzc()Z
.end method
