.class public final Lcom/google/android/gms/measurement/internal/zzkd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzgg;


# static fields
.field private static volatile zzb:Lcom/google/android/gms/measurement/internal/zzkd;


# instance fields
.field private final zzA:Lcom/google/android/gms/measurement/internal/zzkj;

.field zza:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzfc;

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzeo;

.field private zze:Lcom/google/android/gms/measurement/internal/zzai;

.field private zzf:Lcom/google/android/gms/measurement/internal/zzeq;

.field private zzg:Lcom/google/android/gms/measurement/internal/zzjt;

.field private zzh:Lcom/google/android/gms/measurement/internal/zzy;

.field private final zzi:Lcom/google/android/gms/measurement/internal/zzkf;

.field private zzj:Lcom/google/android/gms/measurement/internal/zzhs;

.field private zzk:Lcom/google/android/gms/measurement/internal/zzjc;

.field private final zzl:Lcom/google/android/gms/measurement/internal/zzfl;

.field private zzm:Z

.field private zzn:Z

.field private zzo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzp:I

.field private zzq:I

.field private zzr:Z

.field private zzs:Z

.field private zzt:Z

.field private zzu:Ljava/nio/channels/FileLock;

.field private zzv:Ljava/nio/channels/FileChannel;

.field private zzw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzy:J

.field private final zzz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzaf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzke;Lcom/google/android/gms/measurement/internal/zzfl;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzm:Z

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkb;

    .line 1
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzkb;-><init>(Lcom/google/android/gms/measurement/internal/zzkd;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzA:Lcom/google/android/gms/measurement/internal/zzkj;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzke;->zza:Landroid/content/Context;

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzC(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzy;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzy:J

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkf;

    .line 4
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzkf;-><init>(Lcom/google/android/gms/measurement/internal/zzkd;)V

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzjv;->zzY()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzi:Lcom/google/android/gms/measurement/internal/zzkf;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzeo;

    .line 6
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzeo;-><init>(Lcom/google/android/gms/measurement/internal/zzkd;)V

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzjv;->zzY()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzd:Lcom/google/android/gms/measurement/internal/zzeo;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzfc;

    .line 8
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzfc;-><init>(Lcom/google/android/gms/measurement/internal/zzkd;)V

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzjv;->zzY()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzc:Lcom/google/android/gms/measurement/internal/zzfc;

    new-instance p2, Ljava/util/HashMap;

    .line 10
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzz:Ljava/util/Map;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjw;

    .line 12
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzjw;-><init>(Lcom/google/android/gms/measurement/internal/zzkd;Lcom/google/android/gms/measurement/internal/zzke;)V

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzh(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzkd;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzb:Lcom/google/android/gms/measurement/internal/zzkd;

    if-nez v0, :cond_27

    const-class v0, Lcom/google/android/gms/measurement/internal/zzkd;

    monitor-enter v0

    :try_start_11
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzb:Lcom/google/android/gms/measurement/internal/zzkd;

    if-nez v1, :cond_22

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzke;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzke;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/measurement/internal/zzkd;

    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkd;-><init>(Lcom/google/android/gms/measurement/internal/zzke;Lcom/google/android/gms/measurement/internal/zzfl;)V

    sput-object p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzb:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 5
    :cond_22
    monitor-exit v0

    goto :goto_27

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_24

    throw p0

    :cond_27
    :goto_27
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzb:Lcom/google/android/gms/measurement/internal/zzkd;

    return-object p0
.end method

.method static synthetic zzaa(Lcom/google/android/gms/measurement/internal/zzkd;Lcom/google/android/gms/measurement/internal/zzke;)V
    .registers 5

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzai;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Lcom/google/android/gms/measurement/internal/zzkd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjv;->zzY()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzc:Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzad;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzjc;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzjc;-><init>(Lcom/google/android/gms/measurement/internal/zzkd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjv;->zzY()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzk:Lcom/google/android/gms/measurement/internal/zzjc;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzy;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Lcom/google/android/gms/measurement/internal/zzkd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjv;->zzY()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzh:Lcom/google/android/gms/measurement/internal/zzy;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzhs;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzhs;-><init>(Lcom/google/android/gms/measurement/internal/zzkd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjv;->zzY()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzj:Lcom/google/android/gms/measurement/internal/zzhs;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzjt;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzjt;-><init>(Lcom/google/android/gms/measurement/internal/zzkd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjv;->zzY()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzg:Lcom/google/android/gms/measurement/internal/zzjt;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzeq;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzeq;-><init>(Lcom/google/android/gms/measurement/internal/zzkd;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzeq;

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzp:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzq:I

    if-eq p1, v0, :cond_6e

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all upload components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6e
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzm:Z

    return-void
.end method

.method static synthetic zzab(Lcom/google/android/gms/measurement/internal/zzkd;)Lcom/google/android/gms/measurement/internal/zzfl;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    return-object p0
.end method

.method static final zzac(Lcom/google/android/gms/internal/measurement/zzda;ILjava/lang/String;)V
    .registers 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzda;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_21

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return-void

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4
    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdf;->zzn()Lcom/google/android/gms/internal/measurement/zzde;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzde;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzde;

    int-to-long v1, p1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzde;->zzd(J)Lcom/google/android/gms/internal/measurement/zzde;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzdf;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdf;->zzn()Lcom/google/android/gms/internal/measurement/zzde;

    move-result-object v0

    const-string v1, "_ev"

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzde;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzde;

    .line 10
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzde;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzde;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzdf;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzda;->zzf(Lcom/google/android/gms/internal/measurement/zzdf;)Lcom/google/android/gms/internal/measurement/zzda;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzda;->zzf(Lcom/google/android/gms/internal/measurement/zzdf;)Lcom/google/android/gms/internal/measurement/zzda;

    return-void
.end method

.method static final zzad(Lcom/google/android/gms/internal/measurement/zzda;Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzda;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzda;->zzj(I)Lcom/google/android/gms/internal/measurement/zzda;

    return-void

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_22
    return-void
.end method

.method private final zzae(Ljava/lang/String;J)Z
    .registers 42
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    :try_start_9
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkc;

    const/4 v10, 0x0

    .line 2
    invoke-direct {v2, v1, v10}, Lcom/google/android/gms/measurement/internal/zzkc;-><init>(Lcom/google/android/gms/measurement/internal/zzkd;Lcom/google/android/gms/measurement/internal/zzjw;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v3

    const/4 v4, 0x0

    iget-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzy:J

    move-wide/from16 v5, p2

    move-object v9, v2

    .line 4
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzU(Ljava/lang/String;JJLcom/google/android/gms/measurement/internal/zzkc;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zzc:Ljava/util/List;

    if-eqz v3, :cond_e2b

    .line 5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    goto/16 :goto_e2b

    .line 7
    :cond_28
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhs;->zzbu()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzdi;->zzh()Lcom/google/android/gms/internal/measurement/zzdi;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 9
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 10
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzdw;->zzT:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v5

    move-object v14, v10

    move-object/from16 v16, v14

    const/4 v9, 0x0

    const/4 v10, -0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, -0x1

    const/16 v17, 0x0

    :goto_50
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zzc:Ljava/util/List;

    .line 11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_56
    .catchall {:try_start_9 .. :try_end_56} :catchall_e3e

    const-string v6, "_fr"

    const-string v8, "_et"

    const-string v7, "_e"

    move-wide/from16 v19, v11

    if-ge v9, v4, :cond_683

    :try_start_60
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zzc:Ljava/util/List;

    .line 12
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzdb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhs;->zzbu()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzda;

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzf()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v12

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 14
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v11

    move/from16 v21, v13

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Lcom/google/android/gms/measurement/internal/zzfc;->zzi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11
    :try_end_82
    .catchall {:try_start_60 .. :try_end_82} :catchall_e3e

    const-string v12, "_err"

    if-eqz v11, :cond_100

    :try_start_86
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 15
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v6

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v6

    const-string v7, "Dropping blacklisted raw event. appId"

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 17
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 18
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v11

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 20
    invoke-virtual {v6, v7, v8, v11}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzf()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfc;->zzl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f5

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzf()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 23
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfc;->zzm(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ce

    goto :goto_f5

    .line 24
    :cond_ce
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f5

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 25
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v22

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzA:Lcom/google/android/gms/measurement/internal/zzkj;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 26
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0xb

    const-string v26, "_ev"

    .line 27
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v23, v6

    .line 28
    invoke-virtual/range {v22 .. v28}, Lcom/google/android/gms/measurement/internal/zzkk;->zzM(Lcom/google/android/gms/measurement/internal/zzkj;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_f5
    :goto_f5
    move-object v8, v3

    move/from16 v22, v5

    move v7, v9

    move-wide/from16 v11, v19

    move/from16 v13, v21

    const/4 v5, -0x1

    goto/16 :goto_67c

    .line 29
    :cond_100
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v11

    const-string v13, "_ai"

    .line 30
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_180

    const-string v11, "_ai"

    .line 31
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/measurement/zzda;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzda;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 32
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v11

    .line 33
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v11

    const-string v13, "Renaming ad_impression to _ai"

    invoke-virtual {v11, v13}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 34
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v11

    .line 35
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzei;->zzn()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x5

    .line 36
    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_180

    const/4 v11, 0x0

    .line 37
    :goto_136
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzb()I

    move-result v13

    if-ge v11, v13, :cond_180

    const-string v13, "ad_platform"

    .line 38
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/measurement/zzda;->zzc(I)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v22

    move/from16 v23, v9

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17b

    .line 39
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/measurement/zzda;->zzc(I)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzdf;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_17b

    const-string v9, "admob"

    .line 40
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/measurement/zzda;->zzc(I)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzdf;->zzd()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17b

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 41
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v9

    .line 42
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzei;->zzh()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v9

    const-string v13, "AdMob ad impression logged from app. Potentially duplicative."

    .line 43
    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    :cond_17b
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v23

    goto :goto_136

    :cond_180
    move/from16 v23, v9

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzf()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v9

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 45
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Lcom/google/android/gms/measurement/internal/zzfc;->zzj(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9
    :try_end_194
    .catchall {:try_start_86 .. :try_end_194} :catchall_e3e

    const-string v11, "_c"

    if-nez v9, :cond_1eb

    .line 46
    :try_start_198
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v13

    .line 47
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move/from16 v22, v5

    .line 48
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_1a8
    .catchall {:try_start_198 .. :try_end_1a8} :catchall_e3e

    move/from16 v24, v15

    const v15, 0x171c4

    if-eq v5, v15, :cond_1ce

    const v15, 0x17331

    if-eq v5, v15, :cond_1c4

    const v15, 0x17333

    if-eq v5, v15, :cond_1ba

    goto :goto_1d8

    :cond_1ba
    const-string v5, "_ui"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d8

    const/4 v5, 0x1

    goto :goto_1d9

    :cond_1c4
    const-string v5, "_ug"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d8

    const/4 v5, 0x2

    goto :goto_1d9

    :cond_1ce
    const-string v5, "_in"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d8

    const/4 v5, 0x0

    goto :goto_1d9

    :cond_1d8
    :goto_1d8
    const/4 v5, -0x1

    :goto_1d9
    if-eqz v5, :cond_1ef

    const/4 v13, 0x1

    if-eq v5, v13, :cond_1ef

    const/4 v13, 0x2

    if-eq v5, v13, :cond_1ef

    move-object/from16 v26, v3

    move-object v15, v6

    move-object/from16 v25, v8

    move-object/from16 v18, v14

    const/4 v9, 0x0

    goto/16 :goto_3b5

    :cond_1eb
    move/from16 v22, v5

    move/from16 v24, v15

    :cond_1ef
    move-object/from16 v18, v14

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 49
    :goto_1f4
    :try_start_1f4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzb()I

    move-result v14
    :try_end_1f8
    .catchall {:try_start_1f4 .. :try_end_1f8} :catchall_e3e

    move-object/from16 v25, v8

    const-string v8, "_r"

    if-ge v5, v14, :cond_252

    .line 50
    :try_start_1fe
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzda;->zzc(I)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_226

    .line 51
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzda;->zzc(I)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhs;->zzbu()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzde;

    const-wide/16 v13, 0x1

    .line 52
    invoke-virtual {v8, v13, v14}, Lcom/google/android/gms/internal/measurement/zzde;->zzd(J)Lcom/google/android/gms/internal/measurement/zzde;

    .line 53
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzdf;

    .line 54
    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/internal/measurement/zzda;->zzd(ILcom/google/android/gms/internal/measurement/zzdf;)Lcom/google/android/gms/internal/measurement/zzda;

    const/4 v13, 0x1

    goto :goto_24d

    .line 55
    :cond_226
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzda;->zzc(I)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24d

    .line 56
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzda;->zzc(I)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhs;->zzbu()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzde;

    const-wide/16 v14, 0x1

    .line 57
    invoke-virtual {v8, v14, v15}, Lcom/google/android/gms/internal/measurement/zzde;->zzd(J)Lcom/google/android/gms/internal/measurement/zzde;

    .line 58
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzdf;

    .line 59
    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/internal/measurement/zzda;->zzd(ILcom/google/android/gms/internal/measurement/zzdf;)Lcom/google/android/gms/internal/measurement/zzda;

    const/4 v15, 0x1

    :cond_24d
    :goto_24d
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, v25

    goto :goto_1f4

    :cond_252
    if-nez v13, :cond_285

    if-eqz v9, :cond_285

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 60
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v5

    .line 61
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v5

    const-string v13, "Marking event as conversion"

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 62
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v14

    move-object/from16 v26, v3

    .line 63
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v5, v13, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdf;->zzn()Lcom/google/android/gms/internal/measurement/zzde;

    move-result-object v3

    .line 66
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/measurement/zzde;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzde;

    const-wide/16 v13, 0x1

    .line 67
    invoke-virtual {v3, v13, v14}, Lcom/google/android/gms/internal/measurement/zzde;->zzd(J)Lcom/google/android/gms/internal/measurement/zzde;

    .line 68
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzda;->zzg(Lcom/google/android/gms/internal/measurement/zzde;)Lcom/google/android/gms/internal/measurement/zzda;

    goto :goto_287

    :cond_285
    move-object/from16 v26, v3

    :goto_287
    if-nez v15, :cond_2b5

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 69
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    const-string v5, "Marking event as real-time"

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 71
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v13

    .line 72
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 73
    invoke-virtual {v3, v5, v13}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdf;->zzn()Lcom/google/android/gms/internal/measurement/zzde;

    move-result-object v3

    .line 75
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/measurement/zzde;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzde;

    const-wide/16 v13, 0x1

    .line 76
    invoke-virtual {v3, v13, v14}, Lcom/google/android/gms/internal/measurement/zzde;->zzd(J)Lcom/google/android/gms/internal/measurement/zzde;

    .line 77
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzda;->zzg(Lcom/google/android/gms/internal/measurement/zzde;)Lcom/google/android/gms/internal/measurement/zzda;

    .line 78
    :cond_2b5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v27

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzy()J

    move-result-wide v28

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 80
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1

    .line 81
    invoke-virtual/range {v27 .. v35}, Lcom/google/android/gms/measurement/internal/zzai;->zzu(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    iget-wide v13, v3, Lcom/google/android/gms/measurement/internal/zzag;->zze:J

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 83
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v5

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzdw;->zzn:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v3, v5, v15}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)I

    move-result v3

    move-object v15, v6

    int-to-long v5, v3

    cmp-long v3, v13, v5

    if-lez v3, :cond_2ef

    .line 84
    invoke-static {v4, v8}, Lcom/google/android/gms/measurement/internal/zzkd;->zzad(Lcom/google/android/gms/internal/measurement/zzda;Ljava/lang/String;)V

    goto :goto_2f1

    :cond_2ef
    const/16 v17, 0x1

    .line 85
    :goto_2f1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkk;->zzh(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b5

    if-eqz v9, :cond_3b5

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v27

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzy()J

    move-result-wide v28

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 88
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    .line 89
    invoke-virtual/range {v27 .. v35}, Lcom/google/android/gms/measurement/internal/zzai;->zzu(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzag;->zzc:J

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 90
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 91
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v8

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzdw;->zzm:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v3, v8, v13}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)I

    move-result v3

    int-to-long v13, v3

    cmp-long v3, v5, v13

    if-lez v3, :cond_3b5

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 92
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 93
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    const-string v5, "Too many conversions. Not logging as conversion. appId"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 94
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 95
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, -0x1

    .line 96
    :goto_34f
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzb()I

    move-result v13

    if-ge v3, v13, :cond_379

    .line 97
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzda;->zzc(I)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v13

    .line 98
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_36b

    .line 99
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzhs;->zzbu()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzde;

    move v8, v3

    goto :goto_376

    .line 100
    :cond_36b
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_376

    const/4 v5, 0x1

    :cond_376
    :goto_376
    add-int/lit8 v3, v3, 0x1

    goto :goto_34f

    :cond_379
    if-eqz v5, :cond_382

    if-eqz v6, :cond_381

    .line 110
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzda;->zzj(I)Lcom/google/android/gms/internal/measurement/zzda;

    goto :goto_3b5

    :cond_381
    const/4 v6, 0x0

    :cond_382
    if-eqz v6, :cond_39c

    .line 105
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzho;->zzay()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzde;

    .line 106
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/measurement/zzde;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzde;

    const-wide/16 v5, 0xa

    .line 107
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzde;->zzd(J)Lcom/google/android/gms/internal/measurement/zzde;

    .line 108
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdf;

    .line 109
    invoke-virtual {v4, v8, v3}, Lcom/google/android/gms/internal/measurement/zzda;->zzd(ILcom/google/android/gms/internal/measurement/zzdf;)Lcom/google/android/gms/internal/measurement/zzda;

    goto :goto_3b5

    :cond_39c
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 101
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 102
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    const-string v5, "Did not find conversion parameter. appId"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 103
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 104
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3b5
    :goto_3b5
    if-eqz v9, :cond_476

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zza()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v8, -0x1

    .line 112
    :goto_3c3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_3f3

    const-string v9, "value"

    .line 113
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3dd

    move v6, v5

    goto :goto_3f0

    :cond_3dd
    const-string v9, "currency"

    .line 114
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3f0

    move v8, v5

    :cond_3f0
    :goto_3f0
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c3

    :cond_3f3
    const/4 v5, -0x1

    if-ne v6, v5, :cond_3f8

    goto/16 :goto_477

    .line 115
    :cond_3f8
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzdf;->zze()Z

    move-result v5

    if-nez v5, :cond_42d

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzdf;->zzi()Z

    move-result v5

    if-nez v5, :cond_42d

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 128
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzh()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    const-string v5, "Value must be specified with a numeric type."

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzda;->zzj(I)Lcom/google/android/gms/internal/measurement/zzda;

    .line 131
    invoke-static {v4, v11}, Lcom/google/android/gms/measurement/internal/zzkd;->zzad(Lcom/google/android/gms/internal/measurement/zzda;Ljava/lang/String;)V

    const/16 v3, 0x12

    const-string v5, "value"

    .line 132
    invoke-static {v4, v3, v5}, Lcom/google/android/gms/measurement/internal/zzkd;->zzac(Lcom/google/android/gms/internal/measurement/zzda;ILjava/lang/String;)V

    goto :goto_476

    :cond_42d
    const/4 v5, -0x1

    if-ne v8, v5, :cond_431

    goto :goto_459

    .line 116
    :cond_431
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzdf;->zzd()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_459

    const/4 v8, 0x0

    .line 118
    :goto_443
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_477

    .line 119
    invoke-virtual {v3, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    .line 120
    invoke-static {v9}, Ljava/lang/Character;->isLetter(I)Z

    move-result v12

    if-eqz v12, :cond_459

    .line 121
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_443

    .line 132
    :cond_459
    :goto_459
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 122
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 123
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzh()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    const-string v8, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 124
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzda;->zzj(I)Lcom/google/android/gms/internal/measurement/zzda;

    .line 126
    invoke-static {v4, v11}, Lcom/google/android/gms/measurement/internal/zzkd;->zzad(Lcom/google/android/gms/internal/measurement/zzda;Ljava/lang/String;)V

    const/16 v3, 0x13

    const-string v6, "currency"

    .line 127
    invoke-static {v4, v3, v6}, Lcom/google/android/gms/measurement/internal/zzkd;->zzac(Lcom/google/android/gms/internal/measurement/zzda;ILjava/lang/String;)V

    goto :goto_477

    :cond_476
    :goto_476
    const/4 v5, -0x1

    .line 133
    :cond_477
    :goto_477
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d4

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdb;

    move-object v6, v15

    invoke-static {v3, v6}, Lcom/google/android/gms/measurement/internal/zzkf;->zzz(Lcom/google/android/gms/internal/measurement/zzdb;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v3

    if-nez v3, :cond_4cf

    if-eqz v16, :cond_4c5

    .line 135
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/zzda;->zzn()J

    move-result-wide v8

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzn()J

    move-result-wide v11

    sub-long/2addr v8, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v11, 0x3e8

    cmp-long v3, v8, v11

    if-gtz v3, :cond_4c5

    .line 136
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/zzho;->zzay()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzda;

    .line 137
    invoke-direct {v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzkd;->zzag(Lcom/google/android/gms/internal/measurement/zzda;Lcom/google/android/gms/internal/measurement/zzda;)Z

    move-result v6

    if-eqz v6, :cond_4bd

    move-object/from16 v8, v26

    .line 138
    invoke-virtual {v8, v10, v3}, Lcom/google/android/gms/internal/measurement/zzdi;->zze(ILcom/google/android/gms/internal/measurement/zzda;)Lcom/google/android/gms/internal/measurement/zzdi;

    move/from16 v13, v24

    const/4 v3, 0x0

    const/16 v16, 0x0

    goto :goto_4c2

    :cond_4bd
    move-object/from16 v8, v26

    move-object v3, v4

    move/from16 v13, v21

    :goto_4c2
    move-object/from16 v18, v3

    goto :goto_4cb

    :cond_4c5
    move-object/from16 v8, v26

    move-object/from16 v18, v4

    move/from16 v13, v21

    :goto_4cb
    move-object/from16 v9, v25

    goto/16 :goto_605

    :cond_4cf
    move-object/from16 v8, v26

    move/from16 v13, v24

    goto :goto_4cb

    :cond_4d4
    move-object/from16 v8, v26

    const-string v3, "_vs"

    .line 139
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_537

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdb;

    move-object/from16 v9, v25

    invoke-static {v3, v9}, Lcom/google/android/gms/measurement/internal/zzkf;->zzz(Lcom/google/android/gms/internal/measurement/zzdb;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v3

    if-nez v3, :cond_533

    if-eqz v18, :cond_52b

    .line 161
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzda;->zzn()J

    move-result-wide v11

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzn()J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    cmp-long v3, v11, v13

    if-gtz v3, :cond_52b

    .line 162
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzho;->zzay()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzda;

    .line 163
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkd;->zzag(Lcom/google/android/gms/internal/measurement/zzda;Lcom/google/android/gms/internal/measurement/zzda;)Z

    move-result v6

    if-eqz v6, :cond_51e

    move/from16 v13, v24

    .line 164
    invoke-virtual {v8, v13, v3}, Lcom/google/android/gms/internal/measurement/zzdi;->zze(ILcom/google/android/gms/internal/measurement/zzda;)Lcom/google/android/gms/internal/measurement/zzdi;

    move v3, v10

    const/4 v10, 0x0

    const/16 v16, 0x0

    goto :goto_526

    :cond_51e
    move/from16 v13, v24

    move-object/from16 v16, v4

    move-object/from16 v10, v18

    move/from16 v3, v21

    :goto_526
    move-object/from16 v18, v10

    move v10, v3

    goto/16 :goto_605

    :cond_52b
    move/from16 v13, v24

    move-object/from16 v16, v4

    move/from16 v10, v21

    goto/16 :goto_605

    :cond_533
    move/from16 v13, v24

    goto/16 :goto_605

    :cond_537
    move/from16 v13, v24

    move-object/from16 v9, v25

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 140
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 141
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v6

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzdw;->zzak:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v3, v6, v11}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v3

    if-eqz v3, :cond_605

    const-string v3, "_ab"

    .line 142
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_605

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdb;

    invoke-static {v3, v9}, Lcom/google/android/gms/measurement/internal/zzkf;->zzz(Lcom/google/android/gms/internal/measurement/zzdb;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v3

    if-nez v3, :cond_605

    if-eqz v18, :cond_605

    .line 144
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzda;->zzn()J

    move-result-wide v11

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzn()J

    move-result-wide v14

    sub-long/2addr v11, v14

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/16 v14, 0xfa0

    cmp-long v3, v11, v14

    if-gtz v3, :cond_605

    .line 145
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzho;->zzay()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzda;

    .line 146
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkd;->zzah(Lcom/google/android/gms/internal/measurement/zzda;Lcom/google/android/gms/internal/measurement/zzda;)V

    .line 147
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 148
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzdb;

    const-string v11, "_sn"

    invoke-static {v6, v11}, Lcom/google/android/gms/measurement/internal/zzkf;->zzz(Lcom/google/android/gms/internal/measurement/zzdb;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v6

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    .line 151
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzdb;

    const-string v12, "_sc"

    invoke-static {v11, v12}, Lcom/google/android/gms/measurement/internal/zzkf;->zzz(Lcom/google/android/gms/internal/measurement/zzdb;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v11

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzdb;

    const-string v14, "_si"

    invoke-static {v12, v14}, Lcom/google/android/gms/measurement/internal/zzkf;->zzz(Lcom/google/android/gms/internal/measurement/zzdb;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v12

    if-eqz v6, :cond_5c7

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzdf;->zzd()Ljava/lang/String;

    move-result-object v6

    goto :goto_5c9

    :cond_5c7
    const-string v6, ""

    .line 153
    :goto_5c9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5d7

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    const-string v14, "_sn"

    invoke-static {v4, v14, v6}, Lcom/google/android/gms/measurement/internal/zzkf;->zzx(Lcom/google/android/gms/internal/measurement/zzda;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5d7
    if-eqz v11, :cond_5de

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdf;->zzd()Ljava/lang/String;

    move-result-object v6

    goto :goto_5e0

    :cond_5de
    const-string v6, ""

    .line 155
    :goto_5e0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5ee

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    const-string v11, "_sc"

    invoke-static {v4, v11, v6}, Lcom/google/android/gms/measurement/internal/zzkf;->zzx(Lcom/google/android/gms/internal/measurement/zzda;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5ee
    if-eqz v12, :cond_600

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    const-string v6, "_si"

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzdf;->zzf()J

    move-result-wide v11

    .line 158
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v4, v6, v11}, Lcom/google/android/gms/measurement/internal/zzkf;->zzx(Lcom/google/android/gms/internal/measurement/zzda;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    :cond_600
    invoke-virtual {v8, v13, v3}, Lcom/google/android/gms/internal/measurement/zzdi;->zze(ILcom/google/android/gms/internal/measurement/zzda;)Lcom/google/android/gms/internal/measurement/zzdi;

    const/16 v18, 0x0

    :cond_605
    :goto_605
    if-nez v22, :cond_664

    .line 165
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_664

    .line 166
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzda;->zzb()I

    move-result v3

    if-nez v3, :cond_631

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 167
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 168
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    const-string v6, "Engagement event does not contain any parameters. appId"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 169
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 170
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_664

    .line 171
    :cond_631
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    .line 172
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdb;

    invoke-static {v3, v9}, Lcom/google/android/gms/measurement/internal/zzkf;->zzA(Lcom/google/android/gms/internal/measurement/zzdb;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_65c

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 173
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 174
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    const-string v6, "Engagement event does not include duration. appId"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 175
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 176
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_664

    .line 177
    :cond_65c
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long v11, v19, v6

    move-wide/from16 v19, v11

    .line 170
    :cond_664
    :goto_664
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zzc:Ljava/util/List;

    .line 178
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzdb;

    move/from16 v7, v23

    invoke-interface {v3, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v21, 0x1

    .line 179
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/zzdi;->zzf(Lcom/google/android/gms/internal/measurement/zzda;)Lcom/google/android/gms/internal/measurement/zzdi;

    move v15, v13

    move-object/from16 v14, v18

    move-wide/from16 v11, v19

    move v13, v3

    :goto_67c
    add-int/lit8 v9, v7, 0x1

    move-object v3, v8

    move/from16 v5, v22

    goto/16 :goto_50

    :cond_683
    move/from16 v22, v5

    move-object v9, v8

    move/from16 v21, v13

    move-object v8, v3

    if-eqz v22, :cond_6de

    move-wide/from16 v11, v19

    move/from16 v4, v21

    const/4 v3, 0x0

    :goto_690
    if-ge v3, v4, :cond_6e0

    .line 180
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/zzdi;->zzd(I)Lcom/google/android/gms/internal/measurement/zzdb;

    move-result-object v5

    .line 181
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzdb;->zzd()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6b1

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-static {v5, v6}, Lcom/google/android/gms/measurement/internal/zzkf;->zzz(Lcom/google/android/gms/internal/measurement/zzdb;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v10

    if-eqz v10, :cond_6b1

    .line 187
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/zzdi;->zzi(I)Lcom/google/android/gms/internal/measurement/zzdi;

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_6db

    .line 183
    :cond_6b1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-static {v5, v9}, Lcom/google/android/gms/measurement/internal/zzkf;->zzz(Lcom/google/android/gms/internal/measurement/zzdb;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v5

    if-eqz v5, :cond_6db

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzdf;->zze()Z

    move-result v10

    if-eqz v10, :cond_6c9

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzdf;->zzf()J

    move-result-wide v13

    .line 184
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_6ca

    :cond_6c9
    const/4 v10, 0x0

    :goto_6ca
    if-eqz v10, :cond_6db

    .line 185
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v5, v13, v15

    if-lez v5, :cond_6db

    .line 186
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    add-long/2addr v11, v13

    :cond_6db
    :goto_6db
    const/4 v5, 0x1

    add-int/2addr v3, v5

    goto :goto_690

    :cond_6de
    move-wide/from16 v11, v19

    :cond_6e0
    const/4 v3, 0x0

    .line 188
    invoke-direct {v1, v8, v11, v12, v3}, Lcom/google/android/gms/measurement/internal/zzkd;->zzaf(Lcom/google/android/gms/internal/measurement/zzdi;JZ)V

    .line 189
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzb()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6ec
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_6f0
    .catchall {:try_start_1fe .. :try_end_6f0} :catchall_e3e

    const-string v5, "_se"

    if-eqz v4, :cond_711

    :try_start_6f4
    const-string v4, "_s"

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzdb;

    .line 190
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzdb;->zzd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6ec

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v3

    .line 192
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzG()Ljava/lang/String;

    move-result-object v4

    .line 193
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_711
    const-string v3, "_sid"

    .line 194
    invoke-static {v8, v3}, Lcom/google/android/gms/measurement/internal/zzkf;->zzu(Lcom/google/android/gms/internal/measurement/zzdi;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_71e

    const/4 v3, 0x1

    .line 195
    invoke-direct {v1, v8, v11, v12, v3}, Lcom/google/android/gms/measurement/internal/zzkd;->zzaf(Lcom/google/android/gms/internal/measurement/zzdi;JZ)V

    goto :goto_740

    .line 196
    :cond_71e
    invoke-static {v8, v5}, Lcom/google/android/gms/measurement/internal/zzkf;->zzu(Lcom/google/android/gms/internal/measurement/zzdi;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_740

    .line 197
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/zzdi;->zzq(I)Lcom/google/android/gms/internal/measurement/zzdi;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 198
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 199
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    const-string v4, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 200
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 201
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    :cond_740
    :goto_740
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 203
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 204
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    const-string v5, "Checking account type status for ad personalization signals"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 205
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkd;->zzf()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v4

    .line 206
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfc;->zzf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7d6

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 207
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v4

    .line 208
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v4

    if-eqz v4, :cond_7d6

    .line 209
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v4

    if-eqz v4, :cond_7d6

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 210
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    .line 211
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzf()Z

    move-result v4

    if-eqz v4, :cond_7d6

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 212
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 213
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    const-string v5, "Turning off ad personalization due to account type"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdu;->zzj()Lcom/google/android/gms/internal/measurement/zzdt;

    move-result-object v4

    const-string v5, "_npa"

    .line 215
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzdt;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdt;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 216
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    .line 217
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzd()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzdt;->zza(J)Lcom/google/android/gms/internal/measurement/zzdt;

    const-wide/16 v5, 0x1

    .line 218
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzdt;->zze(J)Lcom/google/android/gms/internal/measurement/zzdt;

    .line 219
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdu;

    const/4 v4, 0x0

    .line 220
    :goto_7b6
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzk()I

    move-result v5

    if-ge v4, v5, :cond_7d3

    const-string v5, "_npa"

    .line 221
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/zzdi;->zzl(I)Lcom/google/android/gms/internal/measurement/zzdu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzdu;->zzc()Ljava/lang/String;

    move-result-object v6

    .line 222
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d0

    .line 224
    invoke-virtual {v8, v4, v3}, Lcom/google/android/gms/internal/measurement/zzdi;->zzm(ILcom/google/android/gms/internal/measurement/zzdu;)Lcom/google/android/gms/internal/measurement/zzdi;

    goto :goto_7d6

    :cond_7d0
    add-int/lit8 v4, v4, 0x1

    goto :goto_7b6

    .line 223
    :cond_7d3
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/zzdi;->zzn(Lcom/google/android/gms/internal/measurement/zzdu;)Lcom/google/android/gms/internal/measurement/zzdi;

    :cond_7d6
    :goto_7d6
    const-wide v3, 0x7fffffffffffffffL

    .line 225
    invoke-virtual {v8, v3, v4}, Lcom/google/android/gms/internal/measurement/zzdi;->zzt(J)Lcom/google/android/gms/internal/measurement/zzdi;

    const-wide/high16 v3, -0x8000000000000000L

    invoke-virtual {v8, v3, v4}, Lcom/google/android/gms/internal/measurement/zzdi;->zzv(J)Lcom/google/android/gms/internal/measurement/zzdi;

    const/4 v3, 0x0

    .line 226
    :goto_7e4
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzc()I

    move-result v4

    if-ge v3, v4, :cond_817

    .line 227
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/zzdi;->zzd(I)Lcom/google/android/gms/internal/measurement/zzdb;

    move-result-object v4

    .line 228
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzdb;->zzf()J

    move-result-wide v5

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzs()J

    move-result-wide v9

    cmp-long v5, v5, v9

    if-gez v5, :cond_801

    .line 229
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzdb;->zzf()J

    move-result-wide v5

    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/measurement/zzdi;->zzt(J)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 230
    :cond_801
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzdb;->zzf()J

    move-result-wide v5

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzu()J

    move-result-wide v9

    cmp-long v5, v5, v9

    if-lez v5, :cond_814

    .line 231
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzdb;->zzf()J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/measurement/zzdi;->zzv(J)Lcom/google/android/gms/internal/measurement/zzdi;

    :cond_814
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e4

    .line 232
    :cond_817
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzac()Lcom/google/android/gms/internal/measurement/zzdi;

    .line 233
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzZ()Lcom/google/android/gms/internal/measurement/zzdi;

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzl()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v9

    .line 235
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzG()Ljava/lang/String;

    move-result-object v10

    .line 236
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzb()Ljava/util/List;

    move-result-object v11

    .line 237
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzj()Ljava/util/List;

    move-result-object v12

    .line 238
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzs()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 239
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzu()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 240
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v3

    .line 241
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/zzdi;->zzY(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzdi;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 242
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 243
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zzx(Ljava/lang/String;)Z

    move-result v3
    :try_end_854
    .catchall {:try_start_6f4 .. :try_end_854} :catchall_e3e

    if-eqz v3, :cond_b73

    :try_start_856
    new-instance v3, Ljava/util/HashMap;

    .line 244
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    .line 245
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 246
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v5

    .line 247
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzkk;->zzf()Ljava/security/SecureRandom;

    move-result-object v5

    const/4 v6, 0x0

    .line 248
    :goto_86b
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzc()I

    move-result v7

    if-ge v6, v7, :cond_b3d

    .line 249
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/measurement/zzdi;->zzd(I)Lcom/google/android/gms/internal/measurement/zzdb;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhs;->zzbu()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzda;

    .line 250
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v9

    const-string v10, "_ep"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_885
    .catchall {:try_start_856 .. :try_end_885} :catchall_e27

    const-string v10, "_sr"

    if-eqz v9, :cond_8f7

    .line 251
    :try_start_889
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzdb;

    const-string v11, "_en"

    invoke-static {v9, v11}, Lcom/google/android/gms/measurement/internal/zzkf;->zzA(Lcom/google/android/gms/internal/measurement/zzdb;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 252
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzao;

    if-nez v11, :cond_8b3

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v11

    .line 254
    invoke-interface {v3, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_8b3
    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzi:Ljava/lang/Long;

    if-nez v9, :cond_8ec

    .line 256
    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzj:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    cmp-long v9, v12, v14

    if-lez v9, :cond_8cb

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzj:Ljava/lang/Long;

    .line 258
    invoke-static {v7, v10, v9}, Lcom/google/android/gms/measurement/internal/zzkf;->zzx(Lcom/google/android/gms/internal/measurement/zzda;Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    :cond_8cb
    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzk:Ljava/lang/Boolean;

    if-eqz v9, :cond_8e3

    .line 260
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8e3

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    const-string v9, "_efs"

    const-wide/16 v10, 0x1

    .line 262
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v7, v9, v12}, Lcom/google/android/gms/measurement/internal/zzkf;->zzx(Lcom/google/android/gms/internal/measurement/zzda;Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    :cond_8e3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzdb;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_8ec
    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zze(ILcom/google/android/gms/internal/measurement/zzda;)Lcom/google/android/gms/internal/measurement/zzdi;
    :try_end_8ef
    .catchall {:try_start_889 .. :try_end_8ef} :catchall_e3e

    :goto_8ef
    move-object v15, v2

    move-object/from16 p3, v5

    move-object v1, v8

    const-wide/16 v8, 0x1

    goto/16 :goto_b33

    .line 265
    :cond_8f7
    :try_start_8f7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzf()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v9

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 266
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v11

    const-string v12, "measurement.account.time_zone_offset_minutes"

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzfc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 267
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_90b
    .catchall {:try_start_8f7 .. :try_end_90b} :catchall_e27

    if-nez v13, :cond_927

    .line 268
    :try_start_90d
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_911
    .catch Ljava/lang/NumberFormatException; {:try_start_90d .. :try_end_911} :catch_912
    .catchall {:try_start_90d .. :try_end_911} :catchall_e3e

    goto :goto_929

    :catch_912
    move-exception v0

    move-object v12, v0

    .line 423
    :try_start_914
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 269
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v9

    .line 270
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v9

    const-string v13, "Unable to parse timezone offset. appId"

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 271
    invoke-virtual {v9, v13, v11, v12}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_927
    .catchall {:try_start_914 .. :try_end_927} :catchall_e3e

    :cond_927
    const-wide/16 v11, 0x0

    .line 268
    :goto_929
    :try_start_929
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 272
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v9

    .line 273
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzda;->zzn()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14, v11, v12}, Lcom/google/android/gms/measurement/internal/zzkk;->zzab(JJ)J

    move-result-wide v13

    .line 274
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzdb;

    move-wide/from16 v19, v11

    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "_dbg"

    .line 275
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_94b
    .catchall {:try_start_929 .. :try_end_94b} :catchall_e27

    if-nez v15, :cond_981

    .line 276
    :try_start_94d
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzdb;->zza()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_955
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_981

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzdf;

    move-object/from16 p3, v9

    .line 277
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_97e

    .line 278
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzdf;->zzf()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_979
    .catchall {:try_start_94d .. :try_end_979} :catchall_e3e

    if-nez v9, :cond_97c

    goto :goto_981

    :cond_97c
    const/4 v11, 0x1

    goto :goto_993

    :cond_97e
    move-object/from16 v9, p3

    goto :goto_955

    .line 279
    :cond_981
    :goto_981
    :try_start_981
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzf()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v9

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 280
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzfc;->zzk(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11
    :try_end_993
    .catchall {:try_start_981 .. :try_end_993} :catchall_e27

    :goto_993
    if-gtz v11, :cond_9ba

    :try_start_995
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 281
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v9

    .line 282
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v9

    const-string v10, "Sample rate must be positive. event, rate"

    .line 283
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v12, v11}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzdb;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zze(ILcom/google/android/gms/internal/measurement/zzda;)Lcom/google/android/gms/internal/measurement/zzdi;
    :try_end_9b8
    .catchall {:try_start_995 .. :try_end_9b8} :catchall_e3e

    goto/16 :goto_8ef

    .line 286
    :cond_9ba
    :try_start_9ba
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzao;

    if-nez v9, :cond_a19

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v9

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v12, v15}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v9

    if-nez v9, :cond_a19

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 288
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v9

    .line 289
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v9

    const-string v12, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 290
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v15

    .line 291
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {v9, v12, v15, v1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzao;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 293
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v22

    .line 294
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v23

    const-wide/16 v24, 0x1

    const-wide/16 v26, 0x1

    const-wide/16 v28, 0x1

    .line 295
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzda;->zzn()J

    move-result-wide v30

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v21, v1

    invoke-direct/range {v21 .. v37}, Lcom/google/android/gms/measurement/internal/zzao;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v9, v1

    .line 296
    :cond_a19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzdb;

    const-string v12, "_eid"

    invoke-static {v1, v12}, Lcom/google/android/gms/measurement/internal/zzkf;->zzA(Lcom/google/android/gms/internal/measurement/zzdb;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_a2e

    const/4 v12, 0x1

    goto :goto_a2f

    :cond_a2e
    const/4 v12, 0x0

    .line 297
    :goto_a2f
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v15, 0x1

    if-ne v11, v15, :cond_a62

    .line 298
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzdb;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a5d

    iget-object v1, v9, Lcom/google/android/gms/measurement/internal/zzao;->zzi:Ljava/lang/Long;

    if-nez v1, :cond_a51

    iget-object v1, v9, Lcom/google/android/gms/measurement/internal/zzao;->zzj:Ljava/lang/Long;

    if-nez v1, :cond_a51

    iget-object v1, v9, Lcom/google/android/gms/measurement/internal/zzao;->zzk:Ljava/lang/Boolean;

    if-eqz v1, :cond_a5d

    :cond_a51
    const/4 v1, 0x0

    .line 300
    invoke-virtual {v9, v1, v1, v1}, Lcom/google/android/gms/measurement/internal/zzao;->zzc(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v9

    .line 301
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_a5d
    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zze(ILcom/google/android/gms/internal/measurement/zzda;)Lcom/google/android/gms/internal/measurement/zzdi;

    goto/16 :goto_8ef

    .line 303
    :cond_a62
    invoke-virtual {v5, v11}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v15

    if-nez v15, :cond_a9e

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    move-object v15, v2

    int-to-long v1, v11

    .line 305
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v7, v10, v1}, Lcom/google/android/gms/measurement/internal/zzkf;->zzx(Lcom/google/android/gms/internal/measurement/zzda;Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzdb;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a88

    const/4 v2, 0x0

    .line 308
    invoke-virtual {v9, v2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zzc(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v9

    .line 309
    :cond_a88
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzda;->zzn()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11, v13, v14}, Lcom/google/android/gms/measurement/internal/zzao;->zzb(JJ)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    .line 311
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 p3, v5

    move-object v1, v8

    const-wide/16 v8, 0x1

    goto/16 :goto_b30

    :cond_a9e
    move-object v15, v2

    .line 312
    iget-object v2, v9, Lcom/google/android/gms/measurement/internal/zzao;->zzh:Ljava/lang/Long;

    if-eqz v2, :cond_ab0

    .line 313
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-object/from16 v16, v1

    move-object/from16 p3, v5

    move-object/from16 v26, v8

    move-object/from16 v21, v9

    goto :goto_aca

    :cond_ab0
    move-object/from16 v2, p0

    move-object/from16 p3, v5

    .line 327
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 314
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v5

    move-object/from16 v16, v1

    .line 315
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzda;->zzp()J

    move-result-wide v1

    move-object/from16 v26, v8

    move-object/from16 v21, v9

    move-wide/from16 v8, v19

    invoke-virtual {v5, v1, v2, v8, v9}, Lcom/google/android/gms/measurement/internal/zzkk;->zzab(JJ)J

    move-result-wide v19

    :goto_aca
    cmp-long v1, v19, v13

    if-eqz v1, :cond_b16

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    const-string v1, "_efs"

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkf;->zzx(Lcom/google/android/gms/internal/measurement/zzda;Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    int-to-long v1, v11

    .line 318
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v7, v10, v1}, Lcom/google/android/gms/measurement/internal/zzkf;->zzx(Lcom/google/android/gms/internal/measurement/zzda;Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzdb;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b03

    const/4 v2, 0x1

    .line 321
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v2, v21

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v1, v5}, Lcom/google/android/gms/measurement/internal/zzao;->zzc(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v1

    goto :goto_b06

    :cond_b03
    move-object/from16 v2, v21

    move-object v1, v2

    .line 322
    :goto_b06
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzda;->zzn()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11, v13, v14}, Lcom/google/android/gms/measurement/internal/zzao;->zzb(JJ)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v1

    .line 324
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b2e

    :cond_b16
    move-object/from16 v2, v21

    const-wide/16 v8, 0x1

    .line 325
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b2e

    .line 326
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v16

    const/4 v10, 0x0

    invoke-virtual {v2, v5, v10, v10}, Lcom/google/android/gms/measurement/internal/zzao;->zzc(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    .line 327
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b2e
    :goto_b2e
    move-object/from16 v1, v26

    .line 328
    :goto_b30
    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zze(ILcom/google/android/gms/internal/measurement/zzda;)Lcom/google/android/gms/internal/measurement/zzdi;

    :goto_b33
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, p3

    move-object v8, v1

    move-object v2, v15

    move-object/from16 v1, p0

    goto/16 :goto_86b

    :cond_b3d
    move-object v15, v2

    move-object v1, v8

    .line 329
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdi;->zzc()I

    move-result v5

    if-ge v2, v5, :cond_b4f

    .line 330
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdi;->zzh()Lcom/google/android/gms/internal/measurement/zzdi;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/measurement/zzdi;->zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 331
    :cond_b4f
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzao;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzh(Lcom/google/android/gms/measurement/internal/zzao;)V

    goto :goto_b57

    :cond_b71
    move-object v2, v15

    goto :goto_b74

    :cond_b73
    move-object v1, v8

    :goto_b74
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 333
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v4
    :try_end_b82
    .catchall {:try_start_9ba .. :try_end_b82} :catchall_e27

    if-nez v4, :cond_ba0

    move-object/from16 v5, p0

    :try_start_b86
    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 335
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 336
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    const-string v6, "Bundling raw events w/o app info. appId"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 337
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 338
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_bfd

    :cond_ba0
    move-object/from16 v5, p0

    .line 339
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdi;->zzc()I

    move-result v6

    if-lez v6, :cond_bfd

    .line 340
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_bb6

    .line 341
    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zzy(J)Lcom/google/android/gms/internal/measurement/zzdi;

    goto :goto_bb9

    .line 342
    :cond_bb6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdi;->zzz()Lcom/google/android/gms/internal/measurement/zzdi;

    .line 343
    :goto_bb9
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_bc4

    goto :goto_bc5

    :cond_bc4
    move-wide v6, v8

    :goto_bc5
    cmp-long v8, v6, v10

    if-eqz v8, :cond_bcd

    .line 344
    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zzw(J)Lcom/google/android/gms/internal/measurement/zzdi;

    goto :goto_bd0

    .line 345
    :cond_bcd
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdi;->zzx()Lcom/google/android/gms/internal/measurement/zzdi;

    .line 346
    :goto_bd0
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzN()V

    .line 347
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzI()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/measurement/zzdi;->zzS(I)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 348
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdi;->zzs()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzq(J)V

    .line 349
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdi;->zzu()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    .line 350
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzab()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_bf3

    .line 351
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/measurement/zzdi;->zzT(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdi;

    goto :goto_bf6

    .line 352
    :cond_bf3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdi;->zzU()Lcom/google/android/gms/internal/measurement/zzdi;

    .line 353
    :goto_bf6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 354
    :cond_bfd
    :goto_bfd
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdi;->zzc()I

    move-result v4

    if-lez v4, :cond_d82

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 355
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzas()Lcom/google/android/gms/measurement/internal/zzz;

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzf()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v4

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzfc;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcp;

    move-result-object v4

    if-eqz v4, :cond_c27

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcp;->zza()Z

    move-result v6

    if-nez v6, :cond_c1f

    goto :goto_c27

    .line 361
    :cond_c1f
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcp;->zzb()J

    move-result-wide v6

    .line 363
    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zzad(J)Lcom/google/android/gms/internal/measurement/zzdi;

    goto :goto_c52

    .line 356
    :cond_c27
    :goto_c27
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 357
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzdj;->zzP()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c39

    const-wide/16 v6, -0x1

    .line 362
    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zzad(J)Lcom/google/android/gms/internal/measurement/zzdi;

    goto :goto_c52

    .line 7
    :cond_c39
    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 358
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 359
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    const-string v6, "Did not find measurement config or missing version info. appId"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzdj;

    .line 360
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 361
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    :goto_c52
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzdj;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    .line 365
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 367
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdj;->zzn()Z

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 364
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzy()V

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 368
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    .line 369
    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 370
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdj;->zzo()J

    move-result-wide v8

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 371
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    .line 370
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzae;->zzA()J

    move-result-wide v10

    sub-long v10, v6, v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_ca5

    .line 372
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdj;->zzo()J

    move-result-wide v8

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 373
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    .line 372
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzae;->zzA()J

    move-result-wide v10

    add-long/2addr v10, v6

    cmp-long v8, v8, v10

    if-lez v8, :cond_cc8

    :cond_ca5
    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 374
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v8

    .line 375
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v8

    const-string v9, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    .line 376
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 377
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 378
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdj;->zzo()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 379
    invoke-virtual {v8, v9, v10, v6, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 380
    :cond_cc8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgb;->zzbp()[B

    move-result-object v6
    :try_end_ccc
    .catchall {:try_start_b86 .. :try_end_ccc} :catchall_e3c

    :try_start_ccc
    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 381
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    move-result-object v7

    .line 382
    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzkf;->zzs([B)[B

    move-result-object v6
    :try_end_cd6
    .catch Ljava/io/IOException; {:try_start_ccc .. :try_end_cd6} :catch_d69
    .catchall {:try_start_ccc .. :try_end_cd6} :catchall_e3c

    :try_start_cd6
    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 387
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v7

    .line 388
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v7

    const-string v8, "Saving bundle, size"

    array-length v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v7, Landroid/content/ContentValues;

    .line 389
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "app_id"

    .line 390
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "bundle_end_timestamp"

    .line 391
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdj;->zzo()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "data"

    .line 392
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v6, "has_realtime"

    .line 393
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdj;->zzab()Z

    move-result v6

    if-eqz v6, :cond_d26

    const-string v6, "retry_count"

    .line 395
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdj;->zzac()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_d26
    .catchall {:try_start_cd6 .. :try_end_d26} :catchall_e3c

    .line 364
    :cond_d26
    :try_start_d26
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v8, "queue"

    const/4 v9, 0x0

    .line 396
    invoke-virtual {v6, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_d82

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 397
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v6

    .line 398
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v6

    const-string v7, "Failed to insert bundle (got -1). appId"

    .line 399
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d4e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d26 .. :try_end_d4e} :catch_d4f
    .catchall {:try_start_d26 .. :try_end_d4e} :catchall_e3c

    goto :goto_d82

    :catch_d4f
    move-exception v0

    move-object v6, v0

    .line 386
    :try_start_d51
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 400
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 401
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    const-string v7, "Error storing bundle. appId"

    .line 402
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v7, v1, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d82

    :catch_d69
    move-exception v0

    move-object v6, v0

    .line 271
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 383
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 384
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    const-string v7, "Data loss. Failed to serialize bundle. appId"

    .line 385
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 386
    invoke-virtual {v4, v7, v1, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 403
    :cond_d82
    :goto_d82
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Ljava/util/List;

    .line 404
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    .line 405
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 406
    :goto_d99
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_db6

    if-eqz v6, :cond_da6

    const-string v7, ","

    .line 407
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_da6
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_d99

    :cond_db6
    const-string v6, ")"

    .line 409
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    .line 410
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 411
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v4, v6, :cond_deb

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 412
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 413
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v6, "Deleted fewer rows from raw events table than expected"

    .line 414
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 415
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 416
    invoke-virtual {v1, v6, v4, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 417
    :cond_deb
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_df3
    .catchall {:try_start_d51 .. :try_end_df3} :catchall_e3c

    const/4 v4, 0x2

    :try_start_df4
    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const/4 v6, 0x1

    aput-object v3, v4, v6

    const-string v6, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    .line 418
    invoke-virtual {v2, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e01
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_df4 .. :try_end_e01} :catch_e02
    .catchall {:try_start_df4 .. :try_end_e01} :catchall_e3c

    goto :goto_e17

    :catch_e02
    move-exception v0

    move-object v2, v0

    .line 402
    :try_start_e04
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 419
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 420
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v4, "Failed to remove unused event metadata. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 421
    invoke-virtual {v1, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 422
    :goto_e17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_e1e
    .catchall {:try_start_e04 .. :try_end_e1e} :catchall_e3c

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    const/4 v1, 0x1

    return v1

    :catchall_e27
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_e40

    :cond_e2b
    :goto_e2b
    move-object v5, v1

    .line 6
    :try_start_e2c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_e33
    .catchall {:try_start_e2c .. :try_end_e33} :catchall_e3c

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    const/4 v1, 0x0

    return v1

    :catchall_e3c
    move-exception v0

    goto :goto_e40

    :catchall_e3e
    move-exception v0

    move-object v5, v1

    :goto_e40
    move-object v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 423
    throw v1
.end method

.method private final zzaf(Lcom/google/android/gms/internal/measurement/zzdi;JZ)V
    .registers 15
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-eq v0, p4, :cond_6

    const-string v1, "_lte"

    goto :goto_8

    :cond_6
    const-string v1, "_se"

    .line 1
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzdi;->zzG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzk(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v2

    if-eqz v2, :cond_40

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzki;->zze:Ljava/lang/Object;

    if-nez v3, :cond_1b

    goto :goto_40

    .line 17
    :cond_1b
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzki;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzdi;->zzG()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    .line 8
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzki;->zze:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_5b

    .line 1
    :cond_40
    :goto_40
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzki;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzdi;->zzG()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 10
    :goto_5b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdu;->zzj()Lcom/google/android/gms/internal/measurement/zzdt;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzdt;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdt;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    .line 13
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzdt;->zza(J)Lcom/google/android/gms/internal/measurement/zzdt;

    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/zzki;->zze:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 14
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzdt;->zze(J)Lcom/google/android/gms/internal/measurement/zzdt;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzdu;

    .line 16
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzkf;->zzu(Lcom/google/android/gms/internal/measurement/zzdi;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_8a

    .line 18
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzdi;->zzm(ILcom/google/android/gms/internal/measurement/zzdu;)Lcom/google/android/gms/internal/measurement/zzdi;

    goto :goto_8d

    .line 17
    :cond_8a
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzdi;->zzn(Lcom/google/android/gms/internal/measurement/zzdu;)Lcom/google/android/gms/internal/measurement/zzdi;

    :goto_8d
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_b2

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzj(Lcom/google/android/gms/measurement/internal/zzki;)Z

    if-eq v0, p4, :cond_9f

    const-string p1, "lifetime"

    goto :goto_a1

    :cond_9f
    const-string p1, "session-scoped"

    :goto_a1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    iget-object p3, v9, Lcom/google/android/gms/measurement/internal/zzki;->zze:Ljava/lang/Object;

    const-string p4, "Updated engagement user property. scope, value"

    .line 22
    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b2
    return-void
.end method

.method private final zzag(Lcom/google/android/gms/internal/measurement/zzda;Lcom/google/android/gms/internal/measurement/zzda;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdb;

    const-string v1, "_sc"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkf;->zzz(Lcom/google/android/gms/internal/measurement/zzdb;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_21

    move-object v0, v1

    goto :goto_25

    .line 7
    :cond_21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdf;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzdb;

    const-string v3, "_pc"

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzkf;->zzz(Lcom/google/android/gms/internal/measurement/zzdb;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v2

    if-nez v2, :cond_37

    goto :goto_3b

    .line 7
    :cond_37
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzdf;->zzd()Ljava/lang/String;

    move-result-object v1

    :goto_3b
    if-eqz v1, :cond_48

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzah(Lcom/google/android/gms/internal/measurement/zzda;Lcom/google/android/gms/internal/measurement/zzda;)V

    const/4 p1, 0x1

    return p1

    :cond_48
    const/4 p1, 0x0

    return p1
.end method

.method private final zzah(Lcom/google/android/gms/internal/measurement/zzda;Lcom/google/android/gms/internal/measurement/zzda;)V
    .registers 11

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzda;->zzk()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdb;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkf;->zzz(Lcom/google/android/gms/internal/measurement/zzdb;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdf;->zze()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdf;->zzf()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2d

    goto :goto_65

    .line 5
    :cond_2d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdf;->zzf()J

    move-result-wide v2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdb;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkf;->zzz(Lcom/google/android/gms/internal/measurement/zzdb;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdf;->zzf()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_4d

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdf;->zzf()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 7
    :cond_4d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzkf;->zzx(Lcom/google/android/gms/internal/measurement/zzda;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzkf;->zzx(Lcom/google/android/gms/internal/measurement/zzda;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_65
    :goto_65
    return-void
.end method

.method private final zzai()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzE()Z

    move-result v0

    if-nez v0, :cond_27

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    return v0

    :cond_27
    :goto_27
    const/4 v0, 0x1

    return v0
.end method

.method private final zzaj()V
    .registers 21
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zza:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_53

    const-wide/32 v1, 0x36ee80

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    .line 5
    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zza:J

    sub-long/2addr v5, v7

    .line 6
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_51

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 10
    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzj()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzb()V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzk()Lcom/google/android/gms/measurement/internal/zzjt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjt;->zzd()V

    return-void

    :cond_51
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zza:J

    :cond_53
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzL()Z

    move-result v1

    if-eqz v1, :cond_280

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzai()Z

    move-result v1

    if-nez v1, :cond_63

    goto/16 :goto_280

    .line 17
    :cond_63
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 19
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 20
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    .line 21
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdw;->zzz:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdv;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzF()Z

    move-result v5

    const/4 v10, 0x1

    if-nez v5, :cond_9a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzx()Z

    move-result v5

    if-eqz v5, :cond_99

    goto :goto_9a

    :cond_99
    const/4 v10, 0x0

    :cond_9a
    :goto_9a
    if-eqz v10, :cond_e0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 23
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v5

    .line 24
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzae;->zzu()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_ca

    const-string v11, ".none."

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ca

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 28
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdw;->zzu:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 29
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdv;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_f5

    .line 48
    :cond_ca
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 26
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdw;->zzt:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 27
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdv;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_f5

    :cond_e0
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 30
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdw;->zzs:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 31
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdv;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 29
    :goto_f5
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 32
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v5

    .line 33
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzex;->zzc:Lcom/google/android/gms/measurement/internal/zzeu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zza()J

    move-result-wide v13

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 34
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v5

    .line 35
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzex;->zzd:Lcom/google/android/gms/measurement/internal/zzeu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zza()J

    move-result-wide v15

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v5

    move/from16 v17, v10

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzB()J

    move-result-wide v9

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v5

    move-wide/from16 v18, v7

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzD()J

    move-result-wide v6

    .line 38
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_12c

    :cond_129
    move-wide v1, v3

    goto/16 :goto_1a9

    :cond_12c
    sub-long/2addr v5, v1

    .line 39
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v5, v1, v5

    sub-long/2addr v13, v1

    .line 40
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    sub-long/2addr v15, v1

    .line 41
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    sub-long v9, v1, v9

    sub-long/2addr v1, v7

    .line 42
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-long v7, v5, v18

    if-eqz v17, :cond_151

    cmp-long v13, v1, v3

    if-lez v13, :cond_151

    .line 43
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long/2addr v7, v11

    .line 44
    :cond_151
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    move-result-object v13

    invoke-virtual {v13, v1, v2, v11, v12}, Lcom/google/android/gms/measurement/internal/zzkf;->zzq(JJ)Z

    move-result v13

    if-nez v13, :cond_15d

    add-long/2addr v1, v11

    goto :goto_15e

    :cond_15d
    move-wide v1, v7

    :goto_15e
    cmp-long v7, v9, v3

    if-eqz v7, :cond_1a9

    cmp-long v5, v9, v5

    if-ltz v5, :cond_1a9

    move-wide v5, v1

    const/4 v1, 0x0

    :goto_168
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    const/16 v2, 0x14

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzdw;->zzB:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v8, 0x0

    .line 46
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzdv;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v11, 0x0

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_129

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 47
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdw;->zzA:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 48
    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/zzdv;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    const-wide/16 v12, 0x1

    shl-long/2addr v12, v1

    mul-long/2addr v7, v12

    add-long/2addr v5, v7

    cmp-long v2, v5, v9

    if-gtz v2, :cond_1a8

    add-int/lit8 v1, v1, 0x1

    goto :goto_168

    :cond_1a8
    move-wide v1, v5

    :cond_1a9
    :goto_1a9
    cmp-long v5, v1, v3

    if-nez v5, :cond_1cb

    .line 38
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzj()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzb()V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzk()Lcom/google/android/gms/measurement/internal/zzjt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjt;->zzd()V

    return-void

    .line 53
    :cond_1cb
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzh()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeo;->zzb()Z

    move-result v5

    if-eqz v5, :cond_262

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 54
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v5

    .line 55
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzex;->zze:Lcom/google/android/gms/measurement/internal/zzeu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zza()J

    move-result-wide v5

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 56
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzdw;->zzq:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v8, 0x0

    .line 57
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzdv;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    move-result-object v9

    invoke-virtual {v9, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzkf;->zzq(JJ)Z

    move-result v9

    if-nez v9, :cond_206

    add-long/2addr v5, v7

    .line 59
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 60
    :cond_206
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzj()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeq;->zzb()V

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 61
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    .line 62
    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-gtz v5, :cond_247

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzdw;->zzv:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzdv;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 65
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v3

    .line 66
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzex;->zzc:Lcom/google/android/gms/measurement/internal/zzeu;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 67
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    .line 66
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb(J)V

    :cond_247
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 68
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Upload scheduled in approximately ms"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzk()Lcom/google/android/gms/measurement/internal/zzjt;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zzc(J)V

    return-void

    :cond_262
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzj()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zza()V

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzk()Lcom/google/android/gms/measurement/internal/zzjt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjt;->zzd()V

    return-void

    .line 13
    :cond_280
    :goto_280
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzj()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzb()V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzk()Lcom/google/android/gms/measurement/internal/zzjt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjt;->zzd()V

    return-void
.end method

.method private final zzak()V
    .registers 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzr:Z

    if-nez v0, :cond_44

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzs:Z

    if-nez v0, :cond_44

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzt:Z

    if-eqz v0, :cond_16

    goto :goto_44

    .line 8
    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzo:Ljava/util/List;

    if-nez v0, :cond_2a

    return-void

    .line 11
    :cond_2a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 12
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2e

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzo:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 2
    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzr:Z

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzs:Z

    .line 6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzt:Z

    .line 7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    .line 8
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzal(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;
    .registers 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v3

    int-to-long v5, v0

    cmp-long p1, v3, v5

    if-nez p1, :cond_58

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_58

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_57
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_57} :catch_5d

    return-object p1

    .line 9
    :cond_58
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_5d
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzam(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;
    .registers 35
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_d4

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto/16 :goto_d4

    .line 5
    :cond_1b
    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzal(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 6
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_3c

    .line 28
    :cond_28
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "App version does not match; dropping. appId"

    .line 31
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    .line 7
    :cond_3c
    :goto_3c
    new-instance v30, Lcom/google/android/gms/measurement/internal/zzp;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v6

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()J

    move-result-wide v9

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzB()J

    move-result-wide v15

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzF()Z

    move-result v13

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v17

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()J

    move-result-wide v23

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v21

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v25

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/Boolean;

    move-result-object v26

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzD()J

    move-result-wide v27

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaj()Ljava/util/List;

    move-result-object v29

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb()Z

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 23
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v11

    .line 22
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzdw;->zzah:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v11, v2, v12}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v11

    if-eqz v11, :cond_8e

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    goto :goto_90

    :cond_8e
    move-object/from16 v31, v3

    .line 25
    :goto_90
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 25
    invoke-virtual {v1, v3, v11}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 27
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzx(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd()Ljava/lang/String;

    move-result-object v1

    goto :goto_ac

    :cond_aa
    const-string v1, ""

    :goto_ac
    move-object/from16 v32, v1

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-object v7, v8

    move-wide v8, v9

    move-wide v10, v15

    move-object/from16 v15, v17

    move-wide/from16 v16, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-wide/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v28, v31

    move-object/from16 v29, v32

    .line 28
    invoke-direct/range {v1 .. v29}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v30

    .line 2
    :cond_d4
    :goto_d4
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v4, "No app data available; dropping"

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3
.end method

.method private final zzan(Lcom/google/android/gms/measurement/internal/zzp;)Z
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 1
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdw;->zzah:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_2f

    :cond_2e
    return v1

    :cond_2f
    :goto_2f
    return v2

    .line 3
    :cond_30
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_41

    goto :goto_42

    :cond_41
    return v1

    :cond_42
    :goto_42
    return v2
.end method

.method private static final zzao(Lcom/google/android/gms/measurement/internal/zzjv;)V
    .registers 4

    if-eqz p0, :cond_32

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjv;->zzW()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 0
    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final zzA(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Lcom/google/android/gms/measurement/internal/zzas;)Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzej;->zzd:Landroid/os/Bundle;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzI(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkk;->zzH(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    .line 7
    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzd(Ljava/lang/String;)I

    move-result v1

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzG(Lcom/google/android/gms/measurement/internal/zzej;I)V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzej;->zzb()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 11
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzdw;->zzac:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const-string v1, "_cmp"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_79

    .line 19
    :cond_4c
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v1, "_cis"

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "referrer API v2"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v1, "gclid"

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 17
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkg;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    const-string v3, "_lgclid"

    const-string v7, "auto"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzN(Lcom/google/android/gms/measurement/internal/zzkg;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 19
    :cond_79
    :goto_79
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzB(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method

.method final zzB(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 22
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    .line 6
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 7
    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzkf;->zzy(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v4

    if-nez v4, :cond_28

    return-void

    .line 9
    :cond_28
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v4, :cond_30

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzX(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 11
    :cond_30
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzt:Ljava/util/List;

    if-eqz v4, :cond_74

    .line 12
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 16
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzf()Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v5, 0x1

    const-string v7, "ga_safelisted"

    .line 17
    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzas;

    .line 18
    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v4}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    move-object v13, v5

    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    move-object v0, v5

    goto :goto_74

    .line 20
    :cond_60
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    .line 15
    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 19
    :cond_74
    :goto_74
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    .line 20
    :try_start_7b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v4

    .line 21
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    const-wide/16 v5, 0x0

    cmp-long v5, v11, v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v13, 0x1

    if-gez v5, :cond_ad

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 22
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    const-string v8, "Invalid time querying timed out conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 24
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 25
    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_bd

    .line 37
    :cond_ad
    new-array v8, v7, [Ljava/lang/String;

    aput-object v3, v8, v6

    .line 27
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v13

    const-string v9, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 20
    invoke-virtual {v4, v9, v8}, Lcom/google/android/gms/measurement/internal/zzai;->zzr(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 28
    :goto_bd
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c1
    :goto_c1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v8, :cond_c1

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 29
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v9

    .line 30
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v9

    const-string v10, "User property timed out"

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 31
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v15

    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 32
    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-virtual {v15, v13}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v15, v8, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 33
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkg;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 34
    invoke-virtual {v9, v10, v14, v13, v15}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzaa;->zzg:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v9, :cond_100

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzas;

    .line 35
    invoke-direct {v10, v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    invoke-virtual {v1, v10, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzC(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 36
    :cond_100
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v9

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-virtual {v9, v3, v8}, Lcom/google/android/gms/measurement/internal/zzai;->zzp(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    goto :goto_c1

    .line 37
    :cond_10d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v4

    .line 38
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    if-gez v5, :cond_138

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    const-string v8, "Invalid time querying expired conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 41
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 42
    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_149

    .line 58
    :cond_138
    new-array v8, v7, [Ljava/lang/String;

    aput-object v3, v8, v6

    .line 44
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-string v9, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 37
    invoke-virtual {v4, v9, v8}, Lcom/google/android/gms/measurement/internal/zzai;->zzr(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 43
    :goto_149
    new-instance v8, Ljava/util/ArrayList;

    .line 45
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_156
    :goto_156
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v9, :cond_156

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 47
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v10

    .line 48
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v10

    const-string v13, "User property expired"

    iget-object v14, v9, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 49
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v15

    iget-object v7, v9, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 50
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v15, v9, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 51
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkg;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 52
    invoke-virtual {v10, v13, v14, v7, v15}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v7

    iget-object v10, v9, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v3, v10}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v9, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v7, :cond_19b

    .line 54
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_19b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v7

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v3, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzp(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    goto :goto_156

    .line 56
    :cond_1a8
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1ac
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzas;

    .line 57
    invoke-direct {v8, v7, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzC(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_1ac

    .line 58
    :cond_1c1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v4

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 59
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    if-gez v5, :cond_1fb

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 61
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v5

    .line 62
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v5

    const-string v6, "Invalid time querying triggered conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 63
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v4

    .line 64
    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 66
    invoke-virtual {v5, v6, v3, v4, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_210

    :cond_1fb
    const/4 v5, 0x3

    .line 91
    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v7, v5, v3

    .line 68
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const-string v3, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    .line 58
    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzr(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 67
    :goto_210
    new-instance v13, Ljava/util/ArrayList;

    .line 69
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_21d
    :goto_21d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v14, :cond_21d

    iget-object v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    .line 71
    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    .line 72
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkg;->zza()Ljava/lang/Object;

    move-result-object v10

    move-object v4, v15

    move-wide v8, v11

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/google/android/gms/measurement/internal/zzai;->zzj(Lcom/google/android/gms/measurement/internal/zzki;)Z

    move-result v4

    if-eqz v4, :cond_269

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 79
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 80
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 81
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/zzki;->zzc:Ljava/lang/String;

    .line 82
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/zzki;->zze:Ljava/lang/Object;

    .line 83
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_28c

    .line 86
    :cond_269
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 74
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 75
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 76
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/zzki;->zzc:Ljava/lang/String;

    .line 77
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/zzki;->zze:Ljava/lang/Object;

    .line 78
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    :goto_28c
    iget-object v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v4, :cond_293

    .line 84
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_293
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzkg;

    .line 85
    invoke-direct {v4, v15}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Lcom/google/android/gms/measurement/internal/zzki;)V

    iput-object v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    const/4 v4, 0x1

    iput-boolean v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/google/android/gms/measurement/internal/zzai;->zzn(Lcom/google/android/gms/measurement/internal/zzaa;)Z

    goto/16 :goto_21d

    .line 87
    :cond_2a6
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzC(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 88
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2ad
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzas;

    .line 89
    invoke-direct {v4, v3, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzC(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_2ad

    .line 90
    :cond_2c2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_2c9
    .catchall {:try_start_7b .. :try_end_2c9} :catchall_2d1

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :catchall_2d1
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 92
    throw v0
.end method

.method final zzC(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 34
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "raw_events"

    const-string v5, "_sno"

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v8

    .line 5
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    .line 7
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzkf;->zzy(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v9

    if-nez v9, :cond_2e

    return-void

    .line 9
    :cond_2e
    iget-boolean v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v9, :cond_36

    .line 10
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzkd;->zzX(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 11
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzf()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v9, v8, v10}, Lcom/google/android/gms/measurement/internal/zzfc;->zzi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    const-string v15, "_err"

    const/4 v13, 0x0

    if-eqz v9, :cond_e2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v5

    .line 15
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blacklisted event. appId"

    .line 16
    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzf()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzfc;->zzl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_95

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzf()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzfc;->zzm(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_79

    goto :goto_95

    .line 29
    :cond_79
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e1

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v9

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzA:Lcom/google/android/gms/measurement/internal/zzkj;

    const/16 v12, 0xb

    .line 31
    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const/4 v15, 0x0

    const-string v13, "_ev"

    move-object v11, v8

    .line 32
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzkk;->zzM(Lcom/google/android/gms/measurement/internal/zzkj;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 19
    :cond_95
    :goto_95
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v2

    if-eqz v2, :cond_e1

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzL()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzJ()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    .line 22
    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 23
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 24
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    .line 25
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdw;->zzy:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v5, v13}, Lcom/google/android/gms/measurement/internal/zzdv;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_e1

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    const-string v4, "Fetching config for blacklisted app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzH(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_e1
    return-void

    .line 33
    :cond_e2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Lcom/google/android/gms/measurement/internal/zzas;)Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 34
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v9

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 35
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v10

    .line 36
    invoke-virtual {v10, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzd(Ljava/lang/String;)I

    move-result v10

    .line 37
    invoke-virtual {v9, v2, v10}, Lcom/google/android/gms/measurement/internal/zzkk;->zzG(Lcom/google/android/gms/measurement/internal/zzej;I)V

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzej;->zzb()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 39
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v9

    .line 40
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzei;->zzn()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x2

    .line 41
    invoke-static {v9, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_170

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 42
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v9

    .line 43
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v9

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 44
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v10

    .line 45
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzed;->zzb()Z

    move-result v11

    if-nez v11, :cond_129

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_16b

    .line 74
    :cond_129
    new-instance v11, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "origin="

    .line 48
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    .line 49
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ",name="

    .line 50
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 45
    invoke-virtual {v10, v12}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 51
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ",params="

    .line 52
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    if-nez v12, :cond_151

    move-object v10, v13

    goto :goto_164

    .line 45
    :cond_151
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzed;->zzb()Z

    move-result v16

    if-nez v16, :cond_15c

    .line 53
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzaq;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_164

    .line 54
    :cond_15c
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzaq;->zzf()Landroid/os/Bundle;

    move-result-object v12

    .line 45
    invoke-virtual {v10, v12}, Lcom/google/android/gms/measurement/internal/zzed;->zzf(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    .line 55
    :goto_164
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_16b
    const-string v11, "Logging event"

    .line 45
    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    :cond_170
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    .line 58
    :try_start_177
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzkd;->zzX(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    const-string v9, "ecommerce_purchase"

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 59
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_182
    .catchall {:try_start_177 .. :try_end_182} :catchall_b56

    const-string v10, "refund"

    if-nez v9, :cond_19b

    :try_start_186
    const-string v9, "purchase"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 60
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19b

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 61
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_199

    goto :goto_19b

    :cond_199
    const/4 v11, 0x0

    goto :goto_19c

    :cond_19b
    :goto_19b
    const/4 v11, 0x1

    :goto_19c
    const-string v9, "_iap"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 62
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b2

    if-eqz v11, :cond_1aa

    const/4 v11, 0x1

    goto :goto_1b2

    :cond_1aa
    move-wide/from16 v26, v6

    move-object/from16 v29, v15

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_342

    :cond_1b2
    :goto_1b2
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v12, "currency"

    .line 63
    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/zzaq;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_1ba
    .catchall {:try_start_186 .. :try_end_1ba} :catchall_b56

    const-string v12, "value"

    if-eqz v11, :cond_222

    :try_start_1be
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 64
    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzaq;->zzc(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    const-wide v19, 0x412e848000000000L    # 1000000.0

    mul-double v17, v17, v19

    const-wide/16 v21, 0x0

    cmpl-double v11, v17, v21

    if-nez v11, :cond_1e2

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 65
    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzaq;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    long-to-double v11, v11

    mul-double v17, v11, v19

    :cond_1e2
    const-wide/high16 v11, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v11, v17, v11

    if-gtz v11, :cond_1fc

    const-wide/high16 v11, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v11, v17, v11

    if-ltz v11, :cond_1fc

    .line 72
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 73
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22c

    neg-long v11, v11

    goto :goto_22c

    .line 78
    :cond_1fc
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 66
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    const-string v3, "Data lost. Currency value is too big. appId"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 68
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 69
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_21a
    .catchall {:try_start_1be .. :try_end_21a} :catchall_b56

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :cond_222
    :try_start_222
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 74
    invoke-virtual {v10, v12}, Lcom/google/android/gms/measurement/internal/zzaq;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 75
    :cond_22c
    :goto_22c
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1aa

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 76
    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "[A-Z]{3}"

    .line 77
    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1aa

    const-string v10, "_ltv_"

    .line 78
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_252

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_250
    move-object v13, v9

    goto :goto_258

    .line 95
    :cond_252
    new-instance v9, Ljava/lang/String;

    .line 78
    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_250

    .line 79
    :goto_258
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v9

    invoke-virtual {v9, v8, v13}, Lcom/google/android/gms/measurement/internal/zzai;->zzk(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v9

    if-eqz v9, :cond_299

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzki;->zze:Ljava/lang/Object;

    .line 80
    instance-of v10, v9, Ljava/lang/Long;

    if-nez v10, :cond_269

    goto :goto_299

    .line 92
    :cond_269
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    new-instance v17, Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    move-object/from16 v20, v15

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 93
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v15

    .line 94
    invoke-interface {v15}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v21

    add-long/2addr v9, v11

    .line 95
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v9, v17

    move-object v10, v8

    const/4 v12, 0x1

    move-object v11, v14

    move-wide/from16 v26, v6

    move v6, v12

    const/4 v14, 0x0

    move-object v12, v13

    move v7, v14

    move-wide/from16 v13, v21

    move-object/from16 v29, v20

    invoke-direct/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v9, v17

    goto :goto_306

    :cond_299
    :goto_299
    move-wide/from16 v26, v6

    move-object/from16 v29, v15

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v9

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 82
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v10

    .line 83
    sget-object v14, Lcom/google/android/gms/measurement/internal/zzdw;->zzD:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 84
    invoke-virtual {v10, v8, v14}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .line 85
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V
    :try_end_2ba
    .catchall {:try_start_222 .. :try_end_2ba} :catchall_b56

    :try_start_2ba
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    aput-object v8, v15, v7

    aput-object v8, v15, v6

    .line 86
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/16 v16, 0x2

    aput-object v10, v15, v16

    const-string v10, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    .line 87
    invoke-virtual {v14, v10, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2d2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2ba .. :try_end_2d2} :catch_2d3
    .catchall {:try_start_2ba .. :try_end_2d2} :catchall_b56

    goto :goto_2e8

    :catch_2d3
    move-exception v0

    move-object v10, v0

    .line 373
    :try_start_2d5
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 88
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v9

    .line 89
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v9

    const-string v14, "Error pruning currencies. appId"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v9, v14, v15, v10}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    :goto_2e8
    new-instance v16, Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 90
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    .line 91
    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v17

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v9, v16

    move-object v10, v8

    move-object v11, v14

    move-object v12, v13

    move-wide/from16 v13, v17

    invoke-direct/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v9, v16

    .line 96
    :goto_306
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzj(Lcom/google/android/gms/measurement/internal/zzki;)Z

    move-result v10

    if-nez v10, :cond_342

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 97
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v10

    .line 98
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v10

    const-string v11, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 99
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v13

    iget-object v14, v9, Lcom/google/android/gms/measurement/internal/zzki;->zzc:Ljava/lang/String;

    .line 100
    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzki;->zze:Ljava/lang/Object;

    .line 101
    invoke-virtual {v10, v11, v12, v13, v9}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 102
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v9

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzA:Lcom/google/android/gms/measurement/internal/zzkj;

    const/16 v12, 0x9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v8

    .line 103
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzkk;->zzM(Lcom/google/android/gms/measurement/internal/zzkj;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_342
    :goto_342
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 104
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkk;->zzh(Ljava/lang/String;)Z

    move-result v20

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    move-object/from16 v10, v29

    .line 105
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 106
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    if-nez v9, :cond_35c

    const-wide/16 v13, 0x0

    goto :goto_37c

    .line 174
    :cond_35c
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzap;

    .line 107
    invoke-direct {v10, v9}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;)V

    const-wide/16 v11, 0x0

    .line 108
    :cond_363
    :goto_363
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_37b

    .line 109
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzap;->zza()Ljava/lang/String;

    move-result-object v15

    .line 110
    invoke-virtual {v9, v15}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 111
    instance-of v13, v15, [Landroid/os/Parcelable;

    if-eqz v13, :cond_363

    .line 112
    check-cast v15, [Landroid/os/Parcelable;

    array-length v13, v15

    int-to-long v13, v13

    add-long/2addr v11, v13

    goto :goto_363

    :cond_37b
    move-wide v13, v11

    :goto_37c
    const-wide/16 v22, 0x1

    add-long v13, v13, v22

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v9

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzy()J

    move-result-wide v10

    const/4 v15, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v8

    const-wide/16 v6, 0x0

    move/from16 v16, v20

    move/from16 v17, v18

    move/from16 v18, v21

    .line 115
    invoke-virtual/range {v9 .. v19}, Lcom/google/android/gms/measurement/internal/zzai;->zzv(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v9

    iget-wide v10, v9, Lcom/google/android/gms/measurement/internal/zzag;->zzb:J

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 116
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    .line 117
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzdw;->zzj:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/zzdv;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    sub-long/2addr v10, v12

    cmp-long v12, v10, v6

    const-wide/16 v15, 0x3e8

    if-lez v12, :cond_3e3

    rem-long/2addr v10, v15

    cmp-long v2, v10, v22

    if-nez v2, :cond_3d4

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 118
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v9, Lcom/google/android/gms/measurement/internal/zzag;->zzb:J

    .line 120
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 121
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    :cond_3d4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_3db
    .catchall {:try_start_2d5 .. :try_end_3db} :catchall_b56

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :cond_3e3
    if-eqz v20, :cond_43e

    :try_start_3e5
    iget-wide v10, v9, Lcom/google/android/gms/measurement/internal/zzag;->zza:J

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 123
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzdw;->zzl:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 124
    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/zzdv;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    sub-long/2addr v10, v12

    cmp-long v12, v10, v6

    if-lez v12, :cond_43e

    rem-long/2addr v10, v15

    cmp-long v3, v10, v22

    if-nez v3, :cond_41c

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 366
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 367
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v9, Lcom/google/android/gms/measurement/internal/zzag;->zza:J

    .line 368
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 369
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_41c
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 370
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v9

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzA:Lcom/google/android/gms/measurement/internal/zzkj;

    const/16 v12, 0x10

    const-string v13, "_ev"

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const/4 v15, 0x0

    move-object v11, v8

    .line 371
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzkk;->zzM(Lcom/google/android/gms/measurement/internal/zzkj;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_436
    .catchall {:try_start_3e5 .. :try_end_436} :catchall_b56

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :cond_43e
    const v10, 0xf4240

    if-eqz v21, :cond_48e

    :try_start_443
    iget-wide v11, v9, Lcom/google/android/gms/measurement/internal/zzag;->zzd:J

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 125
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v13

    .line 126
    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzdw;->zzk:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v13, v15, v14}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)I

    move-result v13

    .line 127
    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v14, 0x0

    .line 128
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-long v13, v13

    sub-long/2addr v11, v13

    cmp-long v13, v11, v6

    if-lez v13, :cond_48e

    cmp-long v2, v11, v22

    if-nez v2, :cond_47f

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 361
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 362
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v9, Lcom/google/android/gms/measurement/internal/zzag;->zzd:J

    .line 363
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 364
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    :cond_47f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_486
    .catchall {:try_start_443 .. :try_end_486} :catchall_b56

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :cond_48e
    :try_start_48e
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 129
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaq;->zzf()Landroid/os/Bundle;

    move-result-object v14

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 130
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v9

    const-string v11, "_o"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    .line 131
    invoke-virtual {v9, v14, v11, v12}, Lcom/google/android/gms/measurement/internal/zzkk;->zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 132
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v9

    .line 133
    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zzkk;->zzT(Ljava/lang/String;)Z

    move-result v9
    :try_end_4ab
    .catchall {:try_start_48e .. :try_end_4ab} :catchall_b56

    const-string v15, "_r"

    if-eqz v9, :cond_4c7

    :try_start_4af
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 134
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v9

    .line 135
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "_dbg"

    invoke-virtual {v9, v14, v12, v11}, Lcom/google/android/gms/measurement/internal/zzkk;->zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 136
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v9

    .line 137
    invoke-virtual {v9, v14, v15, v11}, Lcom/google/android/gms/measurement/internal/zzkk;->zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4c7
    const-string v9, "_s"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 138
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4ee

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v9

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 140
    invoke-virtual {v9, v11, v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzk(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v9

    if-eqz v9, :cond_4ee

    iget-object v11, v9, Lcom/google/android/gms/measurement/internal/zzki;->zze:Ljava/lang/Object;

    .line 141
    instance-of v11, v11, Ljava/lang/Long;

    if-eqz v11, :cond_4ee

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 142
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v11

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzki;->zze:Ljava/lang/Object;

    .line 143
    invoke-virtual {v11, v14, v5, v9}, Lcom/google/android/gms/measurement/internal/zzkk;->zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    :cond_4ee
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v5

    .line 145
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V
    :try_end_4fb
    .catchall {:try_start_4af .. :try_end_4fb} :catchall_b56

    :try_start_4fb
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 146
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzdw;->zzo:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 147
    invoke-virtual {v11, v8, v12}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)I

    move-result v11

    .line 148
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10
    :try_end_50f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4fb .. :try_end_50f} :catch_52a
    .catchall {:try_start_4fb .. :try_end_50f} :catchall_b56

    const/4 v13, 0x0

    .line 149
    :try_start_510
    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 147
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    aput-object v8, v11, v13

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const-string v10, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    .line 150
    invoke-virtual {v9, v4, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5
    :try_end_526
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_510 .. :try_end_526} :catch_528
    .catchall {:try_start_510 .. :try_end_526} :catchall_b56

    int-to-long v9, v5

    goto :goto_541

    :catch_528
    move-exception v0

    goto :goto_52c

    :catch_52a
    move-exception v0

    const/4 v13, 0x0

    :goto_52c
    move-object v9, v0

    .line 89
    :try_start_52d
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 151
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v5

    .line 152
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v5

    const-string v10, "Error deleting over the limit events. appId"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 153
    invoke-virtual {v5, v10, v11, v9}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide v9, v6

    :goto_541
    cmp-long v5, v9, v6

    if-lez v5, :cond_55c

    .line 150
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 154
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v5

    .line 155
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v5

    const-string v11, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 156
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 157
    invoke-virtual {v5, v11, v12, v9}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55c
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzan;

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    const-wide/16 v16, 0x0

    move-object v9, v5

    move-object v2, v12

    move-object v12, v8

    move/from16 v30, v13

    move-object v13, v2

    move-object/from16 v28, v4

    move-object v2, v14

    move-object/from16 p1, v15

    const/4 v4, 0x0

    move-wide v14, v6

    move-object/from16 v18, v2

    .line 158
    invoke-direct/range {v9 .. v18}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Lcom/google/android/gms/measurement/internal/zzfl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v8, v6}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    if-nez v2, :cond_603

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/zzai;->zzG(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 161
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    .line 162
    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zze(Ljava/lang/String;)I

    move-result v2

    int-to-long v9, v2

    cmp-long v2, v6, v9

    if-ltz v2, :cond_5e5

    if-eqz v20, :cond_5e5

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 164
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    const-string v3, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 166
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v6

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    .line 167
    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzed;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 168
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v6

    .line 169
    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zze(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 170
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 171
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v9

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzA:Lcom/google/android/gms/measurement/internal/zzkj;

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v8

    .line 172
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzkk;->zzM(Lcom/google/android/gms/measurement/internal/zzkj;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5dd
    .catchall {:try_start_52d .. :try_end_5dd} :catchall_b56

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :cond_5e5
    :try_start_5e5
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzao;

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    iget-wide v6, v5, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v9, v2

    move-object v10, v8

    move-wide/from16 v18, v6

    .line 163
    invoke-direct/range {v9 .. v25}, Lcom/google/android/gms/measurement/internal/zzao;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_611

    .line 204
    :cond_603
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    iget-wide v7, v2, Lcom/google/android/gms/measurement/internal/zzao;->zzf:J

    .line 173
    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzfl;J)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v5

    iget-wide v6, v5, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    .line 174
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/zzao;->zza(J)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    .line 175
    :goto_611
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzh(Lcom/google/android/gms/measurement/internal/zzao;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 176
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    .line 179
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    .line 181
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    .line 182
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 183
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdj;->zzaj()Lcom/google/android/gms/internal/measurement/zzdi;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzdi;->zza(I)Lcom/google/android/gms/internal/measurement/zzdi;

    const-string v7, "android"

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 184
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_654

    .line 185
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zzH(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 186
    :cond_654
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_661

    .line 187
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zzF(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 188
    :cond_661
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_66e

    .line 189
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zzI(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 190
    :cond_66e
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    const-wide/32 v9, -0x80000000

    cmp-long v9, v7, v9

    if-eqz v9, :cond_67b

    long-to-int v7, v7

    .line 191
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zzab(I)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 192
    :cond_67b
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzJ(J)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 193
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_68d

    .line 194
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 195
    :cond_68d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 196
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 195
    invoke-virtual {v7, v4, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v7

    if-eqz v7, :cond_6b5

    .line 197
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 198
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzkd;->zzx(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    .line 199
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zzk(Lcom/google/android/gms/measurement/internal/zzaf;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    .line 200
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zzap(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 201
    :cond_6b5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb()Z

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 202
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v7

    .line 201
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzdw;->zzah:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v7

    if-eqz v7, :cond_701

    .line 205
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzdi;->zzV()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6df

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6df

    .line 206
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zzao(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 207
    :cond_6df
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzdi;->zzV()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_718

    .line 208
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzdi;->zzan()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_718

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    .line 209
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_718

    .line 210
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zzai(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdi;

    goto :goto_718

    .line 203
    :cond_701
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzdi;->zzV()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_718

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_718

    .line 204
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zzai(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 211
    :cond_718
    :goto_718
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_723

    .line 212
    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzR(J)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 213
    :cond_723
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzal(J)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    move-result-object v7

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 215
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v8

    .line 216
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzdw;->zza(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_7be

    .line 217
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v9

    if-nez v9, :cond_742

    goto/16 :goto_7be

    .line 260
    :cond_742
    new-instance v13, Ljava/util/ArrayList;

    .line 218
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzdw;->zzO:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 219
    invoke-virtual {v9, v4}, Lcom/google/android/gms/measurement/internal/zzdv;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 220
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_75b
    :goto_75b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7b8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 221
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "measurement.id."

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_773
    .catchall {:try_start_5e5 .. :try_end_773} :catchall_b56

    if-eqz v11, :cond_75b

    .line 222
    :try_start_775
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_75b

    .line 223
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v10

    if-lt v10, v9, :cond_75b

    iget-object v10, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 225
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v10

    .line 226
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v10

    const-string v11, "Too many experiment IDs. Number of IDs"

    .line 227
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7a5
    .catch Ljava/lang/NumberFormatException; {:try_start_775 .. :try_end_7a5} :catch_7a6
    .catchall {:try_start_775 .. :try_end_7a5} :catchall_b56

    goto :goto_7b8

    :catch_7a6
    move-exception v0

    move-object v10, v0

    .line 354
    :try_start_7a8
    iget-object v11, v7, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 228
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v11

    .line 229
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v11

    const-string v12, "Experiment ID NumberFormatException"

    invoke-virtual {v11, v12, v10}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_75b

    .line 230
    :cond_7b8
    :goto_7b8
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_7bf

    :cond_7be
    :goto_7be
    move-object v13, v4

    :cond_7bf
    if-eqz v13, :cond_7c4

    .line 231
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/measurement/zzdi;->zzak(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 232
    :cond_7c4
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 233
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzkd;->zzx(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    .line 234
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zzk(Lcom/google/android/gms/measurement/internal/zzaf;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    .line 235
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 236
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 237
    invoke-virtual {v8, v4, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v8

    if-eqz v8, :cond_7eb

    .line 238
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v8

    if-eqz v8, :cond_817

    :cond_7eb
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzk:Lcom/google/android/gms/measurement/internal/zzjc;

    .line 239
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 240
    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/measurement/internal/zzjc;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf;)Landroid/util/Pair;

    move-result-object v8

    .line 241
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_817

    .line 242
    iget-boolean v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    if-eqz v9, :cond_817

    .line 243
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/measurement/zzdi;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 244
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v9, :cond_817

    .line 245
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzN(Z)Lcom/google/android/gms/internal/measurement/zzdi;

    :cond_817
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 246
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    .line 247
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgf;->zzv()V

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdi;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 248
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    .line 249
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgf;->zzv()V

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzB(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdi;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 250
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    .line 251
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzb()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzE(I)Lcom/google/android/gms/internal/measurement/zzdi;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 252
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    .line 253
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdi;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 254
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzdw;->zzav:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 255
    invoke-virtual {v8, v4, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v8

    if-nez v8, :cond_861

    .line 256
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzdi;->zzae(J)Lcom/google/android/gms/internal/measurement/zzdi;

    :cond_861
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 257
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzF()Z

    move-result v8

    if-eqz v8, :cond_88a

    .line 258
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 259
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 258
    invoke-virtual {v8, v4, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v8

    if-eqz v8, :cond_87e

    .line 261
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzdi;->zzG()Ljava/lang/String;

    goto :goto_881

    .line 260
    :cond_87e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzdi;->zzG()Ljava/lang/String;

    .line 262
    :goto_881
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_88a

    .line 263
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzdi;->zzaf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 264
    :cond_88a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v8

    if-nez v8, :cond_936

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 265
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzfl;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 267
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 266
    invoke-virtual {v9, v4, v10}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v9

    if-eqz v9, :cond_8b8

    .line 269
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzkd;->zzD(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    goto :goto_8bf

    .line 268
    :cond_8b8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzE()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 270
    :goto_8bf
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzo(Ljava/lang/String;)V

    .line 271
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 273
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 274
    invoke-virtual {v9, v4, v10}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v9

    if-eqz v9, :cond_8e4

    .line 275
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v9

    if-eqz v9, :cond_8e1

    goto :goto_8e4

    :cond_8e1
    :goto_8e1
    const-wide/16 v9, 0x0

    goto :goto_8f0

    :cond_8e4
    :goto_8e4
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzk:Lcom/google/android/gms/measurement/internal/zzjc;

    .line 276
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzjc;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 277
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(Ljava/lang/String;)V

    goto :goto_8e1

    .line 278
    :goto_8f0
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzH(J)V

    .line 279
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzq(J)V

    .line 280
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    .line 281
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzu(Ljava/lang/String;)V

    .line 282
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzw(J)V

    .line 283
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzy(Ljava/lang/String;)V

    .line 284
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzA(J)V

    .line 285
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzC(J)V

    .line 286
    iget-boolean v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzG(Z)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 287
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzdw;->zzav:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 288
    invoke-virtual {v9, v4, v10}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v9

    if-nez v9, :cond_92a

    .line 289
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzae(J)V

    .line 290
    :cond_92a
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzE(J)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 292
    :cond_936
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 293
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 294
    invoke-virtual {v9, v4, v10}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v9

    if-eqz v9, :cond_94d

    .line 295
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v7

    if-eqz v7, :cond_95e

    .line 296
    :cond_94d
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_95e

    .line 297
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zzP(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 298
    :cond_95e
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_96f

    .line 299
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzdi;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 300
    :cond_96f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v7

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v7, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move/from16 v7, v30

    .line 301
    :goto_97b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_9b0

    .line 302
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdu;->zzj()Lcom/google/android/gms/internal/measurement/zzdt;

    move-result-object v8

    .line 303
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzki;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzdt;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdt;

    .line 304
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzki;

    iget-wide v9, v9, Lcom/google/android/gms/measurement/internal/zzki;->zzd:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzdt;->zza(J)Lcom/google/android/gms/internal/measurement/zzdt;

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    move-result-object v9

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzki;->zze:Ljava/lang/Object;

    invoke-virtual {v9, v8, v10}, Lcom/google/android/gms/measurement/internal/zzkf;->zzc(Lcom/google/android/gms/internal/measurement/zzdt;Ljava/lang/Object;)V

    .line 306
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzdi;->zzo(Lcom/google/android/gms/internal/measurement/zzdt;)Lcom/google/android/gms/internal/measurement/zzdi;
    :try_end_9ad
    .catchall {:try_start_7a8 .. :try_end_9ad} :catchall_b56

    add-int/lit8 v7, v7, 0x1

    goto :goto_97b

    .line 307
    :cond_9b0
    :try_start_9b0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzdj;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    .line 308
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgb;->zzbp()[B

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 311
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    move-result-object v9

    .line 312
    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zzkf;->zzr([B)J

    move-result-wide v9

    new-instance v11, Landroid/content/ContentValues;

    .line 313
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "app_id"

    .line 314
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "metadata_fingerprint"

    .line 315
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v12, "metadata"

    .line 316
    invoke-virtual {v11, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_9f4
    .catch Ljava/io/IOException; {:try_start_9b0 .. :try_end_9f4} :catch_b0a
    .catchall {:try_start_9b0 .. :try_end_9f4} :catchall_b56

    .line 307
    :try_start_9f4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v12, "raw_events_metadata"

    const/4 v13, 0x4

    .line 317
    invoke-virtual {v8, v12, v4, v11, v13}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_9fe
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9f4 .. :try_end_9fe} :catch_af0
    .catch Ljava/io/IOException; {:try_start_9f4 .. :try_end_9fe} :catch_b0a
    .catchall {:try_start_9f4 .. :try_end_9fe} :catchall_b56

    .line 327
    :try_start_9fe
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzan;->zzf:Lcom/google/android/gms/measurement/internal/zzaq;

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzap;

    .line 328
    invoke-direct {v7, v3}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;)V

    .line 329
    :goto_a09
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a21

    .line 330
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzap;->zza()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v8, p1

    .line 331
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1e

    :goto_a1b
    move/from16 v30, v6

    goto :goto_a5c

    :cond_a1e
    move-object/from16 p1, v8

    goto :goto_a09

    .line 332
    :cond_a21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzf()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v3

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfc;->zzj(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v11

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzy()J

    move-result-wide v12

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v11 .. v19}, Lcom/google/android/gms/measurement/internal/zzai;->zzu(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    if-eqz v3, :cond_a5c

    iget-wide v7, v7, Lcom/google/android/gms/measurement/internal/zzag;->zze:J

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 335
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzdw;->zzn:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 336
    invoke-virtual {v3, v11, v12}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)I

    move-result v3

    int-to-long v11, v3

    cmp-long v3, v7, v11

    if-gez v3, :cond_a5c

    goto :goto_a1b

    .line 327
    :cond_a5c
    :goto_a5c
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    .line 337
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    .line 338
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 339
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    move-result-object v3

    .line 340
    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzkf;->zzf(Lcom/google/android/gms/measurement/internal/zzan;)Lcom/google/android/gms/internal/measurement/zzdb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgb;->zzbp()[B

    move-result-object v3

    new-instance v6, Landroid/content/ContentValues;

    .line 341
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "app_id"

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    .line 342
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "name"

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    .line 343
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "timestamp"

    iget-wide v11, v5, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    .line 344
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "metadata_fingerprint"

    .line 345
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "data"

    .line 346
    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "realtime"

    .line 347
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_aad
    .catchall {:try_start_9fe .. :try_end_aad} :catchall_b56

    .line 327
    :try_start_aad
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object/from16 v7, v28

    .line 348
    invoke-virtual {v3, v7, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v3, v3, v6

    if-nez v3, :cond_ad3

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 349
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 350
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    const-string v4, "Failed to insert raw event (got -1). appId"

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 351
    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ad2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_aad .. :try_end_ad2} :catch_ad8
    .catchall {:try_start_aad .. :try_end_ad2} :catchall_b56

    goto :goto_b23

    :cond_ad3
    const-wide/16 v3, 0x0

    .line 360
    :try_start_ad5
    iput-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zza:J

    goto :goto_b23

    :catch_ad8
    move-exception v0

    move-object v3, v0

    .line 322
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 352
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 353
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    const-string v4, "Error storing raw event. appId"

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 354
    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_aef
    .catchall {:try_start_ad5 .. :try_end_aef} :catchall_b56

    goto :goto_b23

    :catch_af0
    move-exception v0

    move-object v4, v0

    .line 326
    :try_start_af2
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 318
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 319
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    const-string v5, "Error storing raw event metadata. appId"

    .line 320
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 321
    invoke-virtual {v3, v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    throw v4
    :try_end_b0a
    .catch Ljava/io/IOException; {:try_start_af2 .. :try_end_b0a} :catch_b0a
    .catchall {:try_start_af2 .. :try_end_b0a} :catchall_b56

    :catch_b0a
    move-exception v0

    move-object v3, v0

    .line 153
    :try_start_b0c
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 323
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 324
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    .line 325
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzdi;->zzG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 326
    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 355
    :goto_b23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_b2a
    .catchall {:try_start_b0c .. :try_end_b2a} :catchall_b56

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzaj()V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 357
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 358
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    .line 359
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v26

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Background event processing time, ms"

    .line 360
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_b56
    move-exception v0

    move-object v2, v0

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 373
    throw v2
.end method

.method final zzD(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    return-object v2

    .line 5
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzE()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zzE()Ljava/lang/String;
    .registers 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzf()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/math/BigInteger;

    .line 3
    invoke-direct {v4, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v0, 0x0

    aput-object v4, v3, v0

    const-string v0, "%032x"

    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzF()V
    .registers 23
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzt:Z

    const/4 v3, 0x0

    :try_start_12
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzas()Lcom/google/android/gms/measurement/internal/zzz;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzy()Lcom/google/android/gms/measurement/internal/zzjb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjb;->zzC()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_38

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v2, "Upload data called on the client side before use of service was decided"

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_12 .. :try_end_32} :catchall_5b3

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzt:Z

    .line 9
    :goto_34
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    return-void

    .line 10
    :cond_38
    :try_start_38
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 185
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v2, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_38 .. :try_end_4d} :catchall_5b3

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzt:Z

    goto :goto_34

    .line 9
    :cond_50
    :try_start_50
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zza:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_5e

    .line 184
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzaj()V
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_5b3

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzt:Z

    goto :goto_34

    .line 9
    :cond_5e
    :try_start_5e
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzw:Ljava/util/List;

    if-eqz v0, :cond_7d

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v2, "Uploading requested multiple times"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_5e .. :try_end_7a} :catchall_5b3

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzt:Z

    goto :goto_34

    .line 15
    :cond_7d
    :try_start_7d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzh()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeo;->zzb()Z

    move-result v0

    if-nez v0, :cond_9c

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 181
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v2, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    .line 183
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzaj()V
    :try_end_99
    .catchall {:try_start_7d .. :try_end_99} :catchall_5b3

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzt:Z

    goto :goto_34

    .line 9
    :cond_9c
    :try_start_9c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 19
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzdw;->zzP:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)I

    move-result v0

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 20
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    .line 21
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzae;->zzz()J

    move-result-wide v10

    sub-long v10, v4, v10

    move v8, v3

    :goto_bf
    if-ge v8, v0, :cond_ca

    .line 22
    invoke-direct {v1, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzkd;->zzae(Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_ca

    add-int/lit8 v8, v8, 0x1

    goto :goto_bf

    :cond_ca
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 24
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzex;->zzc:Lcom/google/android/gms/measurement/internal/zzeu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zza()J

    move-result-wide v10

    cmp-long v0, v10, v6

    if-eqz v0, :cond_f3

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v4, v10

    .line 27
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 28
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    :cond_f3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzw()Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v7, -0x1

    if-nez v0, :cond_523

    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzy:J

    cmp-long v0, v10, v7

    if-nez v0, :cond_14e

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v10
    :try_end_10d
    .catchall {:try_start_9c .. :try_end_10d} :catchall_5b3

    :try_start_10d
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v11, "select rowid from raw_events order by rowid desc limit 1;"

    .line 32
    invoke-virtual {v0, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_117
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10d .. :try_end_117} :catch_131
    .catchall {:try_start_10d .. :try_end_117} :catchall_12e

    .line 33
    :try_start_117
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_11b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_117 .. :try_end_11b} :catch_12c
    .catchall {:try_start_117 .. :try_end_11b} :catchall_12a

    if-nez v0, :cond_123

    if-eqz v11, :cond_145

    .line 34
    :goto_11f
    :try_start_11f
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_122
    .catchall {:try_start_11f .. :try_end_122} :catchall_5b3

    goto :goto_145

    .line 35
    :cond_123
    :try_start_123
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_127
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_123 .. :try_end_127} :catch_12c
    .catchall {:try_start_123 .. :try_end_127} :catchall_12a

    if-eqz v11, :cond_145

    goto :goto_11f

    :catchall_12a
    move-exception v0

    goto :goto_148

    :catch_12c
    move-exception v0

    goto :goto_133

    :catchall_12e
    move-exception v0

    move-object v11, v9

    goto :goto_148

    :catch_131
    move-exception v0

    move-object v11, v9

    .line 187
    :goto_133
    :try_start_133
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 36
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v10

    .line 37
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v10

    const-string v12, "Error querying raw events"

    invoke-virtual {v10, v12, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_142
    .catchall {:try_start_133 .. :try_end_142} :catchall_12a

    if-eqz v11, :cond_145

    goto :goto_11f

    .line 34
    :cond_145
    :goto_145
    :try_start_145
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzy:J

    goto :goto_14e

    :goto_148
    if-eqz v11, :cond_14d

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 38
    :cond_14d
    throw v0

    .line 34
    :cond_14e
    :goto_14e
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzdw;->zzf:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 40
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)I

    move-result v0

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 41
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzdw;->zzg:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 42
    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)I

    move-result v7

    .line 43
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    if-lez v0, :cond_178

    move v10, v2

    goto :goto_179

    :cond_178
    move v10, v3

    .line 45
    :goto_179
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    if-lez v7, :cond_180

    move v10, v2

    goto :goto_181

    :cond_180
    move v10, v3

    .line 46
    :goto_181
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 47
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_187
    .catchall {:try_start_145 .. :try_end_187} :catchall_5b3

    .line 44
    :try_start_187
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "rowid"

    const-string v13, "data"

    const-string v14, "retry_count"

    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    move-result-object v13

    new-array v15, v2, [Ljava/lang/String;

    aput-object v6, v15, v3

    const-string v12, "queue"

    const-string v14, "app_id=?"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "rowid"

    .line 48
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 49
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_1ab
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_187 .. :try_end_1ab} :catch_29e
    .catchall {:try_start_187 .. :try_end_1ab} :catchall_299

    .line 50
    :try_start_1ab
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1be

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1b5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1ab .. :try_end_1b5} :catch_294
    .catchall {:try_start_1ab .. :try_end_1b5} :catchall_28f

    if-eqz v11, :cond_1ba

    .line 52
    :try_start_1b7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1ba
    .catchall {:try_start_1b7 .. :try_end_1ba} :catchall_5b3

    :cond_1ba
    move-wide/from16 v20, v4

    goto/16 :goto_2be

    .line 147
    :cond_1be
    :try_start_1be
    new-instance v12, Ljava/util/ArrayList;

    .line 53
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move v13, v3

    .line 54
    :goto_1c4
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_1c8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1be .. :try_end_1c8} :catch_294
    .catchall {:try_start_1be .. :try_end_1c8} :catchall_28f

    .line 55
    :try_start_1c8
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 56
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    move-result-object v2
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1d2} :catch_260
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c8 .. :try_end_1d2} :catch_294
    .catchall {:try_start_1c8 .. :try_end_1d2} :catchall_28f

    :try_start_1d2
    new-instance v9, Ljava/io/ByteArrayInputStream;

    .line 57
    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 58
    invoke-direct {v0, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v10, 0x400

    new-array v10, v10, [B
    :try_end_1e5
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_1e5} :catch_24b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d2 .. :try_end_1e5} :catch_294
    .catchall {:try_start_1d2 .. :try_end_1e5} :catchall_28f

    move-wide/from16 v20, v4

    .line 60
    :goto_1e7
    :try_start_1e7
    invoke-virtual {v0, v10}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_244

    .line 62
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 63
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V

    .line 64
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1f7
    .catch Ljava/io/IOException; {:try_start_1e7 .. :try_end_1f7} :catch_249
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e7 .. :try_end_1f7} :catch_28d
    .catchall {:try_start_1e7 .. :try_end_1f7} :catchall_28f

    .line 65
    :try_start_1f7
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_203

    array-length v2, v0
    :try_end_1fe
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f7 .. :try_end_1fe} :catch_28d
    .catchall {:try_start_1f7 .. :try_end_1fe} :catchall_28f

    add-int/2addr v2, v13

    if-le v2, v7, :cond_203

    goto/16 :goto_286

    .line 66
    :cond_203
    :try_start_203
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdj;->zzaj()Lcom/google/android/gms/internal/measurement/zzdi;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzkf;->zzt(Lcom/google/android/gms/internal/measurement/zziw;[B)Lcom/google/android/gms/internal/measurement/zziw;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzdi;
    :try_end_20d
    .catch Ljava/io/IOException; {:try_start_203 .. :try_end_20d} :catch_22f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_203 .. :try_end_20d} :catch_28d
    .catchall {:try_start_203 .. :try_end_20d} :catchall_28f

    const/4 v3, 0x2

    .line 70
    :try_start_20e
    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_21b

    .line 71
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzdi;->zzah(I)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 72
    :cond_21b
    array-length v0, v0

    add-int/2addr v13, v0

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdj;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_276

    :catch_22f
    move-exception v0

    .line 76
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    const-string v3, "Failed to merge queued bundle. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 69
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_243
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20e .. :try_end_243} :catch_28d
    .catchall {:try_start_20e .. :try_end_243} :catchall_28f

    goto :goto_276

    :cond_244
    const/4 v5, 0x0

    .line 61
    :try_start_245
    invoke-virtual {v3, v10, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_248
    .catch Ljava/io/IOException; {:try_start_245 .. :try_end_248} :catch_249
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_245 .. :try_end_248} :catch_28d
    .catchall {:try_start_245 .. :try_end_248} :catchall_28f

    goto :goto_1e7

    :catch_249
    move-exception v0

    goto :goto_24e

    :catch_24b
    move-exception v0

    move-wide/from16 v20, v4

    .line 79
    :goto_24e
    :try_start_24e
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 74
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    const-string v3, "Failed to ungzip content"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    throw v0
    :try_end_25e
    .catch Ljava/io/IOException; {:try_start_24e .. :try_end_25e} :catch_25e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24e .. :try_end_25e} :catch_28d
    .catchall {:try_start_24e .. :try_end_25e} :catchall_28f

    :catch_25e
    move-exception v0

    goto :goto_263

    :catch_260
    move-exception v0

    move-wide/from16 v20, v4

    .line 164
    :goto_263
    :try_start_263
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    const-string v3, "Failed to unzip queued bundle. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 79
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    :goto_276
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_27a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_263 .. :try_end_27a} :catch_28d
    .catchall {:try_start_263 .. :try_end_27a} :catchall_28f

    if-eqz v0, :cond_286

    if-le v13, v7, :cond_27f

    goto :goto_286

    :cond_27f
    move-wide/from16 v4, v20

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_1c4

    :cond_286
    :goto_286
    if-eqz v11, :cond_28b

    .line 52
    :try_start_288
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_28b
    .catchall {:try_start_288 .. :try_end_28b} :catchall_5b0

    :cond_28b
    move-object v0, v12

    goto :goto_2be

    :catch_28d
    move-exception v0

    goto :goto_297

    :catchall_28f
    move-exception v0

    move-object/from16 v17, v11

    goto/16 :goto_51d

    :catch_294
    move-exception v0

    move-wide/from16 v20, v4

    :goto_297
    move-object v9, v11

    goto :goto_2a2

    :catchall_299
    move-exception v0

    const/16 v17, 0x0

    goto/16 :goto_51d

    :catch_29e
    move-exception v0

    move-wide/from16 v20, v4

    const/4 v9, 0x0

    .line 38
    :goto_2a2
    :try_start_2a2
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 81
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    const-string v3, "Error querying bundles. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_2b9
    .catchall {:try_start_2a2 .. :try_end_2b9} :catchall_51a

    if-eqz v9, :cond_2be

    .line 52
    :try_start_2bb
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_2be
    :goto_2be
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5a5

    .line 86
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 87
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v4, 0x0

    .line 88
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v2

    if-eqz v2, :cond_2e0

    .line 89
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzkd;->zzx(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v2

    if-eqz v2, :cond_335

    .line 90
    :cond_2e0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_303

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 91
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdj;

    .line 92
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzdj;->zzG()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2e4

    .line 93
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzdj;->zzG()Ljava/lang/String;

    move-result-object v9

    goto :goto_304

    :cond_303
    const/4 v9, 0x0

    :goto_304
    if-eqz v9, :cond_335

    const/4 v2, 0x0

    .line 94
    :goto_307
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_335

    .line 95
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdj;

    .line 96
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzdj;->zzG()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_322

    goto :goto_332

    .line 97
    :cond_322
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzdj;->zzG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_32a
    .catchall {:try_start_2bb .. :try_end_32a} :catchall_5b0

    if-nez v3, :cond_332

    const/4 v3, 0x0

    .line 98
    :try_start_32d
    invoke-interface {v0, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0
    :try_end_331
    .catchall {:try_start_32d .. :try_end_331} :catchall_5b3

    goto :goto_335

    :cond_332
    :goto_332
    add-int/lit8 v2, v2, 0x1

    goto :goto_307

    .line 99
    :cond_335
    :goto_335
    :try_start_335
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdh;->zzc()Lcom/google/android/gms/internal/measurement/zzdg;

    move-result-object v2

    .line 100
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    .line 101
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 102
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v5

    .line 103
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzae;->zzw(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_370

    .line 104
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 105
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v5

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v8, 0x0

    .line 106
    invoke-virtual {v5, v8, v7}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v5

    if-eqz v5, :cond_36e

    .line 107
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzkd;->zzx(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v5

    if-eqz v5, :cond_370

    :cond_36e
    const/4 v5, 0x1

    goto :goto_371

    :cond_370
    const/4 v5, 0x0

    .line 108
    :goto_371
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 109
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v9, 0x0

    .line 110
    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v7

    if-eqz v7, :cond_390

    .line 111
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzkd;->zzx(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v7

    if-eqz v7, :cond_38e

    goto :goto_390

    :cond_38e
    const/4 v7, 0x0

    goto :goto_391

    :cond_390
    :goto_390
    const/4 v7, 0x1

    .line 112
    :goto_391
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 113
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v10, 0x0

    .line 114
    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v8

    if-eqz v8, :cond_3b0

    .line 115
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzkd;->zzx(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v8

    if-eqz v8, :cond_3ae

    goto :goto_3b0

    :cond_3ae
    const/4 v8, 0x0

    goto :goto_3b1

    :cond_3b0
    :goto_3b0
    const/4 v8, 0x1

    :goto_3b1
    const/4 v9, 0x0

    :goto_3b2
    if-ge v9, v3, :cond_442

    .line 116
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzdj;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzhs;->zzbu()Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzdi;

    .line 117
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 118
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v11

    .line 119
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzae;->zzf()J

    const-wide/32 v11, 0x9858

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzdi;->zzK(J)Lcom/google/android/gms/internal/measurement/zzdi;

    move-wide/from16 v11, v20

    .line 120
    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzdi;->zzr(J)Lcom/google/android/gms/internal/measurement/zzdi;

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 121
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfl;->zzas()Lcom/google/android/gms/measurement/internal/zzz;
    :try_end_3ea
    .catchall {:try_start_335 .. :try_end_3ea} :catchall_5b0

    const/4 v13, 0x0

    .line 122
    :try_start_3eb
    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/measurement/zzdi;->zzX(Z)Lcom/google/android/gms/internal/measurement/zzdi;
    :try_end_3ee
    .catchall {:try_start_3eb .. :try_end_3ee} :catchall_43e

    if-nez v5, :cond_3f3

    .line 123
    :try_start_3f0
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzdi;->zzag()Lcom/google/android/gms/internal/measurement/zzdi;

    .line 124
    :cond_3f3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 125
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v15, 0x0

    .line 126
    invoke-virtual {v13, v15, v14}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v13

    if-eqz v13, :cond_412

    if-nez v7, :cond_40d

    .line 127
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzdi;->zzM()Lcom/google/android/gms/internal/measurement/zzdi;

    .line 128
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzdi;->zzO()Lcom/google/android/gms/internal/measurement/zzdi;

    :cond_40d
    if-nez v8, :cond_412

    .line 129
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzdi;->zzQ()Lcom/google/android/gms/internal/measurement/zzdi;

    :cond_412
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 130
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzdw;->zzV:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 131
    invoke-virtual {v13, v6, v14}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v13

    if-eqz v13, :cond_435

    .line 132
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzdj;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzgb;->zzbp()[B

    move-result-object v13

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/google/android/gms/measurement/internal/zzkf;->zzr([B)J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/google/android/gms/internal/measurement/zzdi;->zzam(J)Lcom/google/android/gms/internal/measurement/zzdi;

    .line 134
    :cond_435
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzdg;->zzb(Lcom/google/android/gms/internal/measurement/zzdi;)Lcom/google/android/gms/internal/measurement/zzdg;

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v20, v11

    goto/16 :goto_3b2

    :catchall_43e
    move-exception v0

    move v2, v13

    goto/16 :goto_5b5

    :cond_442
    move-wide/from16 v11, v20

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzn()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    .line 137
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_464

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzdh;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzkf;->zzh(Lcom/google/android/gms/internal/measurement/zzdh;)Ljava/lang/String;

    move-result-object v9

    goto :goto_465

    :cond_464
    const/4 v9, 0x0

    .line 139
    :goto_465
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzn()Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzho;->zzaA()Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdh;

    .line 140
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgb;->zzbp()[B

    move-result-object v14

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 141
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzdw;->zzp:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v5, 0x0

    .line 142
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzdv;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_480
    .catchall {:try_start_3f0 .. :try_end_480} :catchall_5b0

    .line 143
    :try_start_480
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v7, 0x1

    xor-int/2addr v5, v7

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzw:Ljava/util/List;

    if-eqz v5, :cond_4a2

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 145
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 146
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    const-string v5, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    goto :goto_4a9

    .line 9
    :cond_4a2
    new-instance v5, Ljava/util/ArrayList;

    .line 147
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzw:Ljava/util/List;

    .line 146
    :goto_4a9
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 148
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v4

    .line 149
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzex;->zzd:Lcom/google/android/gms/measurement/internal/zzeu;

    invoke-virtual {v4, v11, v12}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb(J)V

    const-string v4, "?"
    :try_end_4b6
    .catch Ljava/net/MalformedURLException; {:try_start_480 .. :try_end_4b6} :catch_505
    .catchall {:try_start_480 .. :try_end_4b6} :catchall_5b0

    if-lez v3, :cond_4c1

    const/4 v3, 0x0

    .line 150
    :try_start_4b9
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzdg;->zza(I)Lcom/google/android/gms/internal/measurement/zzdj;

    move-result-object v2
    :try_end_4bd
    .catch Ljava/net/MalformedURLException; {:try_start_4b9 .. :try_end_4bd} :catch_505
    .catchall {:try_start_4b9 .. :try_end_4bd} :catchall_5b3

    :try_start_4bd
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA()Ljava/lang/String;

    move-result-object v4

    :cond_4c1
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 151
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    const-string v3, "Uploading data. app, uncompressed size, data"

    array-length v5, v14

    .line 153
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v9}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzs:Z

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzh()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v11

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-direct {v2, v1, v6}, Lcom/google/android/gms/measurement/internal/zzjx;-><init>(Lcom/google/android/gms/measurement/internal/zzkd;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    .line 156
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v11, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 159
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzen;

    const/4 v15, 0x0

    move-object v10, v4

    move-object v12, v6

    move-object/from16 v16, v2

    .line 160
    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzen;-><init>(Lcom/google/android/gms/measurement/internal/zzeo;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzel;)V

    .line 161
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfi;->zzk(Ljava/lang/Runnable;)V
    :try_end_503
    .catch Ljava/net/MalformedURLException; {:try_start_4bd .. :try_end_503} :catch_505
    .catchall {:try_start_4bd .. :try_end_503} :catchall_5b0

    goto/16 :goto_5a5

    .line 84
    :catch_505
    :try_start_505
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 162
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 163
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    const-string v3, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 164
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5a5

    :catchall_51a
    move-exception v0

    move-object/from16 v17, v9

    :goto_51d
    if-eqz v17, :cond_522

    .line 52
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_522
    throw v0

    :cond_523
    move-wide v11, v4

    move-object v5, v9

    .line 34
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzy:J

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 166
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    .line 167
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzae;->zzz()J

    move-result-wide v3

    sub-long v3, v11, v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V
    :try_end_53c
    .catchall {:try_start_505 .. :try_end_53c} :catchall_5b0

    :try_start_53c
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 168
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v6, v4

    const-string v3, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    .line 169
    invoke-virtual {v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_550
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_53c .. :try_end_550} :catch_57e
    .catchall {:try_start_53c .. :try_end_550} :catchall_57b

    .line 170
    :try_start_550
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_56b

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 171
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v3, "No expired configs for apps with pending events"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V
    :try_end_565
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_550 .. :try_end_565} :catch_579
    .catchall {:try_start_550 .. :try_end_565} :catchall_577

    if-eqz v9, :cond_592

    .line 173
    :goto_567
    :try_start_567
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_56a
    .catchall {:try_start_567 .. :try_end_56a} :catchall_5b0

    goto :goto_592

    :cond_56b
    const/4 v3, 0x0

    .line 174
    :try_start_56c
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_570
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56c .. :try_end_570} :catch_579
    .catchall {:try_start_56c .. :try_end_570} :catchall_577

    if-eqz v9, :cond_575

    .line 173
    :try_start_572
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_575
    .catchall {:try_start_572 .. :try_end_575} :catchall_5b0

    :cond_575
    move-object v5, v0

    goto :goto_592

    :catchall_577
    move-exception v0

    goto :goto_5aa

    :catch_579
    move-exception v0

    goto :goto_580

    :catchall_57b
    move-exception v0

    move-object v9, v5

    goto :goto_5aa

    :catch_57e
    move-exception v0

    move-object v9, v5

    .line 69
    :goto_580
    :try_start_580
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 175
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    const-string v3, "Error selecting expired configs"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_58f
    .catchall {:try_start_580 .. :try_end_58f} :catchall_577

    if-eqz v9, :cond_592

    goto :goto_567

    .line 178
    :cond_592
    :goto_592
    :try_start_592
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a5

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    if-eqz v0, :cond_5a5

    .line 180
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzH(Lcom/google/android/gms/measurement/internal/zzg;)V
    :try_end_5a5
    .catchall {:try_start_592 .. :try_end_5a5} :catchall_5b0

    :cond_5a5
    :goto_5a5
    const/4 v2, 0x0

    .line 161
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzt:Z

    goto/16 :goto_34

    :goto_5aa
    if-eqz v9, :cond_5af

    .line 173
    :try_start_5ac
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_5af
    throw v0
    :try_end_5b0
    .catchall {:try_start_5ac .. :try_end_5b0} :catchall_5b0

    :catchall_5b0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_5b5

    :catchall_5b3
    move-exception v0

    move v2, v3

    .line 173
    :goto_5b5
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzt:Z

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 187
    throw v0
.end method

.method final zzG(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .registers 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object p4

    .line 2
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    const/4 p4, 0x0

    if-nez p3, :cond_11

    :try_start_f
    new-array p3, p4, [B

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzw:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzw:Ljava/util/List;
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_180

    const/16 v2, 0xc8

    const/16 v3, 0xcc

    if-eq p1, v2, :cond_1f

    if-ne p1, v3, :cond_12b

    move p1, v3

    :cond_1f
    if-nez p2, :cond_12b

    :try_start_21
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p2

    .line 5
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzex;->zzc:Lcom/google/android/gms/measurement/internal/zzeu;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb(J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p2

    .line 8
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzex;->zzd:Lcom/google/android/gms/measurement/internal/zzeu;

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb(J)V

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzaj()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string v4, "Successful upload. Got network response. code, size"

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V
    :try_end_65
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_65} :catch_f9
    .catchall {:try_start_21 .. :try_end_65} :catchall_180

    .line 14
    :try_start_65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_69
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_75
    .catchall {:try_start_65 .. :try_end_75} :catchall_f0

    .line 15
    :try_start_75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    .line 16
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, p4
    :try_end_90
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_75 .. :try_end_90} :catch_b4
    .catchall {:try_start_75 .. :try_end_90} :catchall_f0

    :try_start_90
    const-string v4, "queue"

    const-string v5, "rowid=?"

    .line 17
    invoke-virtual {v0, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_9b

    goto :goto_69

    .line 18
    :cond_9b
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v4, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_90 .. :try_end_a3} :catch_a3
    .catchall {:try_start_90 .. :try_end_a3} :catchall_f0

    :catch_a3
    move-exception v0

    .line 23
    :try_start_a4
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 19
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p3

    .line 20
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p3

    const-string v4, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    throw v0
    :try_end_b4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a4 .. :try_end_b4} :catch_b4
    .catchall {:try_start_a4 .. :try_end_b4} :catchall_f0

    :catch_b4
    move-exception p3

    .line 26
    :try_start_b5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzx:Ljava/util/List;

    if-eqz v0, :cond_c0

    .line 22
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c0

    goto :goto_69

    .line 23
    :cond_c0
    throw p3

    .line 24
    :cond_c1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_c8
    .catchall {:try_start_b5 .. :try_end_c8} :catchall_f0

    .line 25
    :try_start_c8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzx:Ljava/util/List;

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzh()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeo;->zzb()Z

    move-result p1

    if-eqz p1, :cond_e5

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzai()Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzF()V

    goto :goto_ec

    :cond_e5
    const-wide/16 p1, -0x1

    .line 47
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzy:J

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzaj()V

    .line 29
    :goto_ec
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zza:J

    goto/16 :goto_17a

    :catchall_f0
    move-exception p1

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 26
    throw p1
    :try_end_f9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c8 .. :try_end_f9} :catch_f9
    .catchall {:try_start_c8 .. :try_end_f9} :catchall_180

    :catch_f9
    move-exception p1

    .line 48
    :try_start_fa
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 30
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 31
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    .line 33
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zza:J

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_17a

    .line 28
    :cond_12b
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 36
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p3

    .line 37
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 39
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p2

    .line 40
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzex;->zzd:Lcom/google/android/gms/measurement/internal/zzeu;

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 41
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    .line 40
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_15b

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_170

    :cond_15b
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 43
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzex;->zze:Lcom/google/android/gms/measurement/internal/zzeu;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 44
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 43
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb(J)V

    .line 45
    :cond_170
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzz(Ljava/util/List;)V

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzaj()V
    :try_end_17a
    .catchall {:try_start_fa .. :try_end_17a} :catchall_180

    .line 29
    :goto_17a
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzs:Z

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    return-void

    :catchall_180
    move-exception p1

    .line 46
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzs:Z

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 48
    throw p1
.end method

.method final zzH(Lcom/google/android/gms/measurement/internal/zzg;)V
    .registers 14
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdw;->zzah:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_6d

    .line 49
    :cond_3d
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkd;->zzI(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 5
    :cond_4b
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkd;->zzI(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 10
    :cond_6d
    :goto_6d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    .line 12
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb()Z

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzdw;->zzah:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v2

    goto :goto_aa

    .line 17
    :cond_a6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v2

    .line 20
    :cond_aa
    :goto_aa
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdw;->zzd:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v4, 0x0

    .line 21
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzdv;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdw;->zze:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 22
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzdv;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "config/app/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_d4

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d9

    .line 44
    :cond_d4
    new-instance v2, Ljava/lang/String;

    .line 22
    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 23
    :goto_d9
    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v3

    const-string v5, "app_instance_id"

    invoke-virtual {v2, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "platform"

    const-string v5, "android"

    .line 25
    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzae;->zzf()J

    const-wide/32 v5, 0x9858

    .line 27
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "gmp_version"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 28
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    :try_start_106
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzf()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfc;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcp;

    move-result-object v1

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzf()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfc;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_148

    .line 34
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_148

    .line 35
    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v1, "If-Modified-Since"

    .line 36
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_148
    move-object v10, v4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzr:Z

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzh()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v6

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Lcom/google/android/gms/measurement/internal/zzjy;

    invoke-direct {v11, p0}, Lcom/google/android/gms/measurement/internal/zzjy;-><init>(Lcom/google/android/gms/measurement/internal/zzkd;)V

    .line 39
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    .line 40
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzen;

    const/4 v9, 0x0

    move-object v5, v2

    .line 43
    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzen;-><init>(Lcom/google/android/gms/measurement/internal/zzeo;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzel;)V

    .line 44
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfi;->zzk(Ljava/lang/Runnable;)V
    :try_end_175
    .catch Ljava/net/MalformedURLException; {:try_start_106 .. :try_end_175} :catch_176

    return-void

    .line 7
    :catch_176
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    .line 48
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final zzI(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_14

    :try_start_12
    new-array p4, v0, [B

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    array-length v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "onConfigFetched. Response size"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_183

    .line 8
    :try_start_2f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v1

    const/16 v3, 0xc8

    const/16 v4, 0x130

    if-eq p2, v3, :cond_44

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_44

    if-ne p2, v4, :cond_48

    move p2, v4

    :cond_44
    if-nez p3, :cond_48

    const/4 v3, 0x1

    goto :goto_49

    :cond_48
    move v3, v0

    :goto_49
    if-nez v1, :cond_60

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_16e

    :cond_60
    const/16 v5, 0x194

    if-nez v3, :cond_cc

    if-ne p2, v5, :cond_67

    goto :goto_cc

    .line 18
    :cond_67
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 33
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    .line 34
    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzg;->zzM(J)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 36
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p4

    .line 37
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzf()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzfc;->zzd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 40
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzex;->zzd:Lcom/google/android/gms/measurement/internal/zzeu;

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 41
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    .line 40
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_b2

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_c7

    :cond_b2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 43
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzex;->zze:Lcom/google/android/gms/measurement/internal/zzeu;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 44
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 43
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb(J)V

    .line 45
    :cond_c7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzaj()V

    goto/16 :goto_16e

    :cond_cc
    :goto_cc
    const/4 p3, 0x0

    if-eqz p5, :cond_d8

    const-string v3, "Last-Modified"

    .line 12
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_d9

    :cond_d8
    move-object p5, p3

    :goto_d9
    if-eqz p5, :cond_e8

    .line 13
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e8

    .line 14
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_e9

    :cond_e8
    move-object p5, p3

    :goto_e9
    if-eq p2, v5, :cond_105

    if-ne p2, v4, :cond_ee

    goto :goto_105

    .line 19
    :cond_ee
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzf()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzfc;->zzh(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_f6
    .catchall {:try_start_2f .. :try_end_f6} :catchall_17a

    if-nez p3, :cond_11e

    .line 17
    :try_start_f8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    :goto_fc
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V
    :try_end_ff
    .catchall {:try_start_f8 .. :try_end_ff} :catchall_183

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzr:Z

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    return-void

    .line 15
    :cond_105
    :goto_105
    :try_start_105
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzf()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/google/android/gms/measurement/internal/zzfc;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcp;

    move-result-object p4

    if-nez p4, :cond_11e

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzf()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p4

    invoke-virtual {p4, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/zzfc;->zzh(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_117
    .catchall {:try_start_105 .. :try_end_117} :catchall_17a

    if-nez p3, :cond_11e

    .line 17
    :try_start_119
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1
    :try_end_11d
    .catchall {:try_start_119 .. :try_end_11d} :catchall_183

    goto :goto_fc

    .line 18
    :cond_11e
    :try_start_11e
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 20
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    .line 21
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzg;->zzK(J)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    if-ne p2, v5, :cond_144

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 27
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 28
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzh()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 29
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_157

    .line 31
    :cond_144
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 26
    invoke-virtual {p1, p3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    :goto_157
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzh()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeo;->zzb()Z

    move-result p1

    if-eqz p1, :cond_16b

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzai()Z

    move-result p1

    if-eqz p1, :cond_16b

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzF()V

    goto :goto_16e

    .line 31
    :cond_16b
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzaj()V

    .line 46
    :goto_16e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_175
    .catchall {:try_start_11e .. :try_end_175} :catchall_17a

    .line 17
    :try_start_175
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    goto :goto_fc

    :catchall_17a
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 47
    throw p1
    :try_end_183
    .catchall {:try_start_175 .. :try_end_183} :catchall_183

    :catchall_183
    move-exception p1

    .line 45
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzr:Z

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 48
    throw p1
.end method

.method final zzJ(Ljava/lang/Runnable;)V
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzo:Ljava/util/List;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzo:Ljava/util/List;

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzo:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzK()V
    .registers 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzn:Z

    if-nez v0, :cond_159

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzn:Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzL()Z

    move-result v1

    if-eqz v1, :cond_159

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzv:Ljava/nio/channels/FileChannel;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    const-string v2, "Bad channel to read from"

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v1, :cond_70

    .line 7
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_33

    goto :goto_70

    .line 10
    :cond_33
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 11
    :try_start_37
    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 12
    invoke-virtual {v1, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v5, :cond_57

    const/4 v7, -0x1

    if-eq v1, v7, :cond_7d

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 13
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v7

    .line 14
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v7

    const-string v8, "Unexpected data length. Bytes read"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7d

    .line 15
    :cond_57
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 16
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_5e} :catch_5f

    goto :goto_7d

    :catch_5f
    move-exception v1

    .line 45
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 17
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v7

    .line 18
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v7

    const-string v8, "Failed to read from channel"

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7d

    .line 7
    :cond_70
    :goto_70
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    :cond_7d
    :goto_7d
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzA()Lcom/google/android/gms/measurement/internal/zzea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzea;->zzm()I

    move-result v1

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 20
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v7

    .line 21
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    if-le v6, v1, :cond_aa

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    .line 24
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    .line 26
    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_aa
    if-ge v6, v1, :cond_159

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzv:Ljava/nio/channels/FileChannel;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 27
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v8

    .line 28
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    if-eqz v7, :cond_135

    .line 29
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_c0

    goto :goto_135

    .line 32
    :cond_c0
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 33
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 35
    :try_start_ca
    invoke-virtual {v7, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 36
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v5

    .line 37
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzdw;->zzaq:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v5

    if-eqz v5, :cond_e5

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-gt v5, v8, :cond_e5

    .line 38
    invoke-virtual {v7, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 39
    :cond_e5
    invoke-virtual {v7, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 40
    invoke-virtual {v7, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 41
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_10c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_10c} :catch_124

    :cond_10c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_124
    move-exception v0

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    const-string v3, "Failed to write to channel"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_142

    .line 29
    :cond_135
    :goto_135
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    :goto_142
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    .line 48
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    .line 50
    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_159
    return-void
.end method

.method final zzL()Z
    .registers 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzdw;->zzag:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzu:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_34

    .line 5
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_34

    .line 13
    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    return v1

    .line 5
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    const-string v4, "google_app_measurement.db"

    .line 9
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_4c
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    .line 10
    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzv:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzv:Ljava/nio/channels/FileChannel;

    .line 11
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzu:Ljava/nio/channels/FileLock;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzu:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    return v1

    :cond_73
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_82} :catch_a5
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_82} :catch_94
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_4c .. :try_end_82} :catch_83

    goto :goto_b5

    :catch_83
    move-exception v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b5

    :catch_94
    move-exception v0

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b5

    :catch_a5
    move-exception v0

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_b5
    const/4 v0, 0x0

    return v0
.end method

.method final zzM(Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "app_id=?"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzw:Ljava/util/List;

    if-eqz v1, :cond_14

    new-instance v1, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzx:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzx:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzw:Ljava/util/List;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    :try_start_23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v5, "apps"

    .line 5
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const-string v6, "events"

    .line 6
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "user_attributes"

    .line 7
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "conditional_properties"

    .line 8
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events"

    .line 9
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events_metadata"

    .line 10
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "queue"

    .line 11
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "audience_filter_values"

    .line 12
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "main_event_params"

    .line 13
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "default_event_params"

    .line 14
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    if-lez v5, :cond_9c

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_87
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_87} :catch_88

    goto :goto_9c

    :catch_88
    move-exception v0

    .line 21
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    .line 19
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    :cond_9c
    :goto_9c
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-eqz v0, :cond_a3

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzS(Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_a3
    return-void
.end method

.method final zzN(Lcom/google/android/gms/measurement/internal/zzkg;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 16
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzan(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 5
    :cond_13
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-eqz v0, :cond_1ab

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zzo(Ljava/lang/String;)I

    move-result v5

    const/4 v0, 0x1

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-eqz v5, :cond_55

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 60
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v3

    .line 61
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 62
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    .line 63
    invoke-virtual {v3, v4, v1, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zzC(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    .line 64
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v8, p1

    goto :goto_45

    :cond_44
    move v8, v2

    :goto_45
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzA:Lcom/google/android/gms/measurement/internal/zzkj;

    .line 66
    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v6, "_ev"

    .line 67
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzkk;->zzM(Lcom/google/android/gms/measurement/internal/zzkj;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_55
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v3

    .line 9
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkg;->zza()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzkk;->zzJ(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v9

    if-eqz v9, :cond_9f

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v3

    .line 50
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 51
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    .line 52
    invoke-virtual {v3, v4, v1, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zzC(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v11

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkg;->zza()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8e

    .line 54
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_86

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_8e

    .line 55
    :cond_86
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_8e
    move v12, v2

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzA:Lcom/google/android/gms/measurement/internal/zzkj;

    .line 58
    iget-object v8, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v10, "_ev"

    .line 59
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzkk;->zzM(Lcom/google/android/gms/measurement/internal/zzkj;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v0

    .line 11
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkg;->zza()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkk;->zzK(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b2

    return-void

    .line 13
    :cond_b2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    const-string v2, "_sid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_126

    .line 14
    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzkg;->zzc:J

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzkg;->zzf:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v3, "_sno"

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzk(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v1

    if-eqz v1, :cond_db

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zze:Ljava/lang/Object;

    .line 17
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_db

    .line 26
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_114

    :cond_db
    if-eqz v1, :cond_ee

    .line 47
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzki;->zze:Ljava/lang/Object;

    const-string v3, "Retrieved last session number from database does not contain a valid (long) value"

    .line 20
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    :cond_ee
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v3, "_s"

    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v1

    if-eqz v1, :cond_112

    iget-wide v1, v1, Lcom/google/android/gms/measurement/internal/zzao;->zzc:J

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v3

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "Backfill the session number. Last used session number"

    invoke-virtual {v3, v8, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_114

    :cond_112
    const-wide/16 v1, 0x0

    .line 26
    :goto_114
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzkg;

    const-wide/16 v9, 0x1

    add-long/2addr v1, v9

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "_sno"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v8, p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzN(Lcom/google/android/gms/measurement/internal/zzkg;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_126
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzki;

    .line 29
    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzkg;->zzf:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/measurement/internal/zzkg;->zzc:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzc:Ljava/lang/String;

    .line 33
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Setting user property"

    .line 34
    invoke-virtual {p1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    .line 36
    :try_start_157
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzX(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzj(Lcom/google/android/gms/measurement/internal/zzki;)Z

    move-result p1

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V

    if-nez p1, :cond_19a

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzc:Ljava/lang/String;

    .line 42
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzki;->zze:Ljava/lang/Object;

    .line 43
    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzA:Lcom/google/android/gms/measurement/internal/zzkj;

    .line 45
    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 46
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzkk;->zzM(Lcom/google/android/gms/measurement/internal/zzkj;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_19a
    .catchall {:try_start_157 .. :try_end_19a} :catchall_1a2

    .line 47
    :cond_19a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :catchall_1a2
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 48
    throw p1

    .line 68
    :cond_1ab
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzX(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void
.end method

.method final zzO(Lcom/google/android/gms/measurement/internal/zzkg;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzan(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 5
    :cond_13
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v0, :cond_1b

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzX(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 7
    :cond_1b
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    const-string v1, "_npa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    if-eqz v0, :cond_62

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p1

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkg;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    const/4 v0, 0x1

    .line 28
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_50

    const-wide/16 v0, 0x0

    goto :goto_52

    :cond_50
    const-wide/16 v0, 0x1

    :goto_52
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "_npa"

    const-string v6, "auto"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzN(Lcom/google/android/gms/measurement/internal/zzkg;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    :cond_62
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v1

    .line 11
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    .line 14
    :try_start_84
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzX(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string v0, "User property removed"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v1

    .line 20
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b4
    .catchall {:try_start_84 .. :try_end_b4} :catchall_bc

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :catchall_bc
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 23
    throw p1
.end method

.method final zzP()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzp:I

    return-void
.end method

.method final zzQ()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzq:I

    return-void
.end method

.method final zzR()Lcom/google/android/gms/measurement/internal/zzfl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    return-object v0
.end method

.method final zzS(Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 25
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sys"

    const-string v4, "_pfo"

    const-string v5, "_uwa"

    const-string v0, "app_id=?"

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v6

    .line 2
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    .line 4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzan(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v6

    if-nez v6, :cond_27

    return-void

    .line 7
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_5a

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5a

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    .line 9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5a

    .line 10
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzK(J)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzf()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v6

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzfc;->zze(Ljava/lang/String;)V

    .line 13
    :cond_5a
    iget-boolean v6, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v6, :cond_62

    .line 14
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzX(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 15
    :cond_62
    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzm:J

    cmp-long v6, v9, v7

    if-nez v6, :cond_72

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    .line 17
    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v9

    :cond_72
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 18
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    .line 19
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzam;->zze()V

    .line 20
    iget v6, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzn:I

    const/4 v15, 0x1

    const/4 v13, 0x0

    if-eqz v6, :cond_9f

    if-eq v6, v15, :cond_9e

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 21
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v11

    .line 22
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 23
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v14, "Incorrect app type, assuming installed app. appId, appType"

    .line 24
    invoke-virtual {v11, v14, v12, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v6, v13

    goto :goto_9f

    :cond_9e
    move v6, v15

    .line 25
    :cond_9f
    :goto_9f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    .line 26
    :try_start_a6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v14, "_npa"

    .line 27
    invoke-virtual {v11, v12, v14}, Lcom/google/android/gms/measurement/internal/zzai;->zzk(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v14

    if-eqz v14, :cond_c3

    const-string v11, "auto"

    iget-object v12, v14, Lcom/google/android/gms/measurement/internal/zzki;->zzb:Ljava/lang/String;

    .line 28
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_bf

    goto :goto_c3

    :cond_bf
    move-object/from16 v17, v3

    move v3, v15

    goto :goto_114

    .line 29
    :cond_c3
    :goto_c3
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    if-eqz v11, :cond_ff

    .line 30
    new-instance v12, Lcom/google/android/gms/measurement/internal/zzkg;

    const-string v18, "_npa"

    .line 31
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eq v15, v11, :cond_d4

    move-wide/from16 v19, v7

    goto :goto_d6

    :cond_d4
    const-wide/16 v19, 0x1

    :goto_d6
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    const-wide/16 v7, 0x1

    move-object v11, v12

    move-object v7, v12

    move-object/from16 v12, v18

    move-object/from16 v17, v3

    move v3, v13

    move-object v8, v14

    move-wide v13, v9

    move v3, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_fb

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzki;->zze:Ljava/lang/Object;

    iget-object v11, v7, Lcom/google/android/gms/measurement/internal/zzkg;->zzd:Ljava/lang/Long;

    .line 32
    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_114

    .line 33
    :cond_fb
    invoke-virtual {v1, v7, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzN(Lcom/google/android/gms/measurement/internal/zzkg;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_114

    :cond_ff
    move-object/from16 v17, v3

    move-object v8, v14

    move v3, v15

    if-eqz v8, :cond_114

    .line 34
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzkg;

    const-string v12, "_npa"

    const/4 v15, 0x0

    const-string v16, "auto"

    move-object v11, v7

    move-wide v13, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1, v7, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzO(Lcom/google/android/gms/measurement/internal/zzkg;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 36
    :cond_114
    :goto_114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v7

    if-eqz v7, :cond_1d9

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 37
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v11

    .line 38
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    .line 39
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    .line 40
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v15

    .line 41
    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzkk;->zzB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d9

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 42
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v11

    .line 43
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v11

    const-string v12, "New GMP App Id passed in. Removing cached database data. appId"

    .line 44
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 45
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v11

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 47
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_160
    .catchall {:try_start_a6 .. :try_end_160} :catchall_49e

    .line 46
    :try_start_160
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    new-array v13, v3, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const-string v14, "events"

    .line 48
    invoke-virtual {v12, v14, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    const-string v15, "user_attributes"

    .line 49
    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "conditional_properties"

    .line 50
    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "apps"

    .line 51
    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events"

    .line 52
    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events_metadata"

    .line 53
    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "event_filters"

    .line 54
    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "property_filters"

    .line 55
    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "audience_filter_values"

    .line 56
    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "consent_settings"

    .line 57
    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v14, v0

    if-lez v14, :cond_1d8

    iget-object v0, v11, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v12, "Deleted application data. app, records"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v12, v7, v13}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_160 .. :try_end_1c3} :catch_1c4
    .catchall {:try_start_160 .. :try_end_1c3} :catchall_49e

    goto :goto_1d8

    :catch_1c4
    move-exception v0

    .line 156
    :try_start_1c5
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 60
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v11

    .line 61
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v11

    const-string v12, "Error deleting application data. appId, error"

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 62
    invoke-virtual {v11, v12, v7, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d8
    :goto_1d8
    const/4 v7, 0x0

    :cond_1d9
    if-eqz v7, :cond_239

    .line 63
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v11

    const-wide/32 v13, -0x80000000

    cmp-long v0, v11, v13

    if-eqz v0, :cond_1f4

    .line 64
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v11

    move-object/from16 v19, v4

    iget-wide v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    cmp-long v0, v11, v3

    if-eqz v0, :cond_1f6

    const/4 v0, 0x1

    goto :goto_1f7

    :cond_1f4
    move-object/from16 v19, v4

    :cond_1f6
    const/4 v0, 0x0

    .line 65
    :goto_1f7
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v3

    cmp-long v3, v3, v13

    if-nez v3, :cond_213

    .line 66
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_213

    .line 67
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_213

    const/4 v3, 0x1

    goto :goto_214

    :cond_213
    const/4 v3, 0x0

    :goto_214
    or-int/2addr v0, v3

    if-eqz v0, :cond_23b

    new-instance v0, Landroid/os/Bundle;

    .line 68
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_pv"

    .line 69
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v12, "_au"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v13, v0}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v3

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 71
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzB(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_23b

    :cond_239
    move-object/from16 v19, v4

    .line 72
    :cond_23b
    :goto_23b
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzX(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    if-nez v6, :cond_24e

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v4, "_f"

    .line 76
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    const/4 v3, 0x0

    goto :goto_25b

    .line 73
    :cond_24e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v4, "_v"

    .line 74
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    const/4 v3, 0x1

    :goto_25b
    if-nez v0, :cond_470

    const-wide/32 v6, 0x36ee80

    .line 76
    div-long v11, v9, v6
    :try_end_262
    .catchall {:try_start_1c5 .. :try_end_262} :catchall_49e

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    mul-long/2addr v11, v6

    const-string v0, "_dac"

    const-string v4, "_r"

    const-string v6, "_c"

    const-string v7, "_et"

    if-nez v3, :cond_3ef

    .line 77
    :try_start_270
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkg;

    const-string v13, "_fot"

    .line 78
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v16, "auto"

    move-object v11, v3

    move-object v12, v13

    move-wide v13, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzN(Lcom/google/android/gms/measurement/internal/zzkg;Lcom/google/android/gms/measurement/internal/zzp;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 80
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v3

    .line 81
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzi()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v3

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 83
    invoke-virtual {v3, v11}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 84
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    new-instance v3, Landroid/os/Bundle;

    .line 87
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v11, 0x1

    .line 88
    invoke-virtual {v3, v6, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 89
    invoke-virtual {v3, v4, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v11, 0x0

    .line 90
    invoke-virtual {v3, v5, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v4, v19

    .line 91
    invoke-virtual {v3, v4, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v6, v17

    .line 92
    invoke-virtual {v3, v6, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v13, "_sysu"

    .line 93
    invoke-virtual {v3, v13, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v11, 0x1

    .line 94
    invoke-virtual {v3, v7, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 95
    iget-boolean v13, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzp:Z

    if-eqz v13, :cond_2d0

    .line 96
    invoke-virtual {v3, v0, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 97
    :cond_2d0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 98
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    const-string v12, "first_open_count"

    invoke-virtual {v0, v11, v12}, Lcom/google/android/gms/measurement/internal/zzai;->zzC(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 99
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_30d

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v5, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 103
    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_306
    .catchall {:try_start_270 .. :try_end_306} :catchall_49e

    move-wide/from16 v21, v9

    move-wide v9, v13

    :cond_309
    :goto_309
    const-wide/16 v5, 0x0

    goto/16 :goto_3d3

    .line 155
    :cond_30d
    :try_start_30d
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_31e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30d .. :try_end_31e} :catch_31f
    .catchall {:try_start_30d .. :try_end_31e} :catchall_49e

    goto :goto_336

    :catch_31f
    move-exception v0

    .line 62
    :try_start_320
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 106
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v11

    .line 107
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v11

    const-string v12, "Package info is null, first open report might be inaccurate. appId"

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 108
    invoke-virtual {v11, v12, v15, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_336
    if-eqz v0, :cond_38b

    .line 109
    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v15, 0x0

    cmp-long v11, v11, v15

    if-eqz v11, :cond_38b

    .line 110
    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v21, v9

    iget-wide v8, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v11, v8

    if-eqz v0, :cond_36c

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 111
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 112
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzdw;->zzal:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v0

    if-eqz v0, :cond_366

    const-wide/16 v10, 0x0

    cmp-long v0, v13, v10

    if-nez v0, :cond_364

    const-wide/16 v10, 0x1

    .line 113
    invoke-virtual {v3, v5, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_364
    :goto_364
    const/4 v0, 0x0

    goto :goto_36e

    :cond_366
    const-wide/16 v10, 0x1

    .line 114
    invoke-virtual {v3, v5, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_364

    :cond_36c
    const/4 v9, 0x0

    const/4 v0, 0x1

    .line 113
    :goto_36e
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzkg;

    const-string v12, "_fi"

    const/4 v8, 0x1

    if-eq v8, v0, :cond_378

    const-wide/16 v10, 0x0

    goto :goto_37a

    :cond_378
    const-wide/16 v10, 0x1

    .line 115
    :goto_37a
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v16, "auto"

    move-object v11, v5

    move-wide v9, v13

    move-wide/from16 v13, v21

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzN(Lcom/google/android/gms/measurement/internal/zzkg;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_38a
    .catchall {:try_start_320 .. :try_end_38a} :catchall_49e

    goto :goto_38e

    :cond_38b
    move-wide/from16 v21, v9

    move-wide v9, v13

    :goto_38e
    :try_start_38e
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v0, v5, v11}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_39f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_38e .. :try_end_39f} :catch_3a0
    .catchall {:try_start_38e .. :try_end_39f} :catchall_49e

    goto :goto_3b7

    :catch_3a0
    move-exception v0

    .line 108
    :try_start_3a1
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 119
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v5

    .line 120
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v5

    const-string v11, "Application info is null, first open report might be inaccurate. appId"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 121
    invoke-virtual {v5, v11, v12, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    :goto_3b7
    if-eqz v8, :cond_309

    .line 122
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v0, v5

    if-eqz v0, :cond_3c4

    const-wide/16 v11, 0x1

    .line 123
    invoke-virtual {v3, v6, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 124
    :cond_3c4
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_309

    const-string v0, "_sysu"

    const-wide/16 v5, 0x1

    .line 125
    invoke-virtual {v3, v0, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_309

    :goto_3d3
    cmp-long v0, v9, v5

    if-ltz v0, :cond_3da

    .line 126
    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 127
    :cond_3da
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v12, "_f"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v13, v3}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v0

    move-wide/from16 v15, v21

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 128
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzA(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_43c

    :cond_3ef
    move-wide/from16 v21, v9

    .line 129
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkg;

    const-string v5, "_fvt"

    .line 130
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v16, "auto"

    move-object v11, v3

    move-object v12, v5

    move-wide/from16 v13, v21

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzN(Lcom/google/android/gms/measurement/internal/zzkg;Lcom/google/android/gms/measurement/internal/zzp;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 132
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v3

    .line 133
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    new-instance v3, Landroid/os/Bundle;

    .line 135
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v8, 0x1

    .line 136
    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 137
    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 138
    invoke-virtual {v3, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 139
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzp:Z

    if-eqz v4, :cond_428

    .line 140
    invoke-virtual {v3, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 141
    :cond_428
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v12, "_v"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v13, v3}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v0

    move-wide/from16 v15, v21

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 142
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzA(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 128
    :goto_43c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 143
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 144
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzdw;->zzT:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v0

    if-nez v0, :cond_48f

    new-instance v0, Landroid/os/Bundle;

    .line 145
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v3, 0x1

    .line 146
    invoke-virtual {v0, v7, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "_fr"

    .line 147
    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v12, "_e"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzaq;

    .line 148
    invoke-direct {v13, v0}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v3

    move-wide/from16 v15, v21

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 149
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzA(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_48f

    :cond_470
    move-wide/from16 v21, v9

    .line 150
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzi:Z

    if-eqz v0, :cond_48f

    new-instance v0, Landroid/os/Bundle;

    .line 151
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 152
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v12, "_cd"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v13, v0}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v3

    move-wide/from16 v15, v21

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 153
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzA(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 154
    :cond_48f
    :goto_48f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_496
    .catchall {:try_start_3a1 .. :try_end_496} :catchall_49e

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :catchall_49e
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 156
    throw v0
.end method

.method final zzT(Lcom/google/android/gms/measurement/internal/zzaa;)V
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzam(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzU(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_b
    return-void
.end method

.method final zzU(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    .line 9
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzan(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_2c

    return-void

    .line 10
    :cond_2c
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v0, :cond_34

    .line 11
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzX(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    :cond_34
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 12
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Lcom/google/android/gms/measurement/internal/zzaa;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    .line 14
    :try_start_43
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v1

    if-eqz v1, :cond_7e

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7e

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 19
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7e
    const/4 v2, 0x1

    if-eqz v1, :cond_b4

    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    if-eqz v3, :cond_b4

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzh:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzh:J

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkg;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 24
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/zzkg;->zzc:J

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkg;->zza()Ljava/lang/Object;

    move-result-object v8

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzf:Ljava/lang/String;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    goto :goto_d5

    .line 33
    :cond_b4
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/String;

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d5

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkg;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 22
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkg;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzf:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    move p1, v2

    .line 25
    :cond_d5
    :goto_d5
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    if-eqz v1, :cond_14a

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    .line 26
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzc:J

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkg;->zza()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzj(Lcom/google/android/gms/measurement/internal/zzki;)Z

    move-result v1

    if-eqz v1, :cond_117

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzki;->zzc:Ljava/lang/String;

    .line 37
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzki;->zze:Ljava/lang/Object;

    .line 38
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13a

    .line 47
    :cond_117
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzki;->zzc:Ljava/lang/String;

    .line 32
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzki;->zze:Ljava/lang/Object;

    .line 33
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_13a
    if-eqz p1, :cond_14a

    .line 38
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz p1, :cond_14a

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzas;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    .line 39
    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    .line 40
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzC(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 41
    :cond_14a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzn(Lcom/google/android/gms/measurement/internal/zzaa;)Z

    move-result p1

    if-eqz p1, :cond_17a

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 51
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkg;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 53
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1a3

    .line 55
    :cond_17a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 45
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkg;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 47
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    :goto_1a3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_1aa
    .catchall {:try_start_43 .. :try_end_1aa} :catchall_1b2

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :catchall_1b2
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 56
    throw p1
.end method

.method final zzV(Lcom/google/android/gms/measurement/internal/zzaa;)V
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzam(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzW(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_b
    return-void
.end method

.method final zzW(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 14
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    .line 8
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzan(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_27

    return-void

    .line 9
    :cond_27
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v0, :cond_2f

    .line 10
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzX(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 11
    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    .line 12
    :try_start_36
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzX(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    if-eqz v0, :cond_af

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 17
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzp(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    if-eqz v1, :cond_86

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_86
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v1, :cond_d2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v1, :cond_93

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzf()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_94

    :cond_93
    const/4 v1, 0x0

    :goto_94
    move-object v5, v1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    .line 23
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 24
    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gms/measurement/internal/zzkk;->zzV(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzC(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_d2

    .line 32
    :cond_af
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 26
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 27
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v2

    .line 33
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 29
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzed;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    :cond_d2
    :goto_d2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_d9
    .catchall {:try_start_36 .. :try_end_d9} :catchall_e1

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :catchall_e1
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 33
    throw p1
.end method

.method final zzX(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;
    .registers 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    .line 7
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 9
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 10
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzx(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    .line 11
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzk(Lcom/google/android/gms/measurement/internal/zzaf;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    .line 12
    :cond_42
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 14
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v2

    if-eqz v2, :cond_5a

    goto :goto_5d

    :cond_5a
    const-string v2, ""

    goto :goto_65

    :cond_5d
    :goto_5d
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzk:Lcom/google/android/gms/measurement/internal/zzjc;

    .line 16
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzjc;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    :goto_65
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlu;->zzb()Z

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdw;->zzam:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 17
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v3

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_1be

    if-nez v0, :cond_b7

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 89
    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-direct {v0, v3, v7}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzfl;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 91
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 90
    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 94
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 95
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzD(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 96
    :cond_a1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v1

    if-eqz v1, :cond_124

    .line 97
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(Ljava/lang/String;)V

    goto/16 :goto_124

    .line 92
    :cond_ac
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(Ljava/lang/String;)V

    goto :goto_124

    .line 98
    :cond_b7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 99
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 100
    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 101
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 102
    :cond_ce
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fc

    .line 109
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 111
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 110
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 113
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzD(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    goto :goto_124

    .line 112
    :cond_f4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    goto :goto_124

    .line 103
    :cond_fc
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 104
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 105
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v2

    if-eqz v2, :cond_124

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_124

    .line 107
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v2

    if-eqz v2, :cond_124

    .line 108
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzD(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 114
    :cond_124
    :goto_124
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    .line 115
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzi(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb()Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 117
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdw;->zzah:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v1

    if-eqz v1, :cond_148

    .line 118
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzk(Ljava/lang/String;)V

    .line 119
    :cond_148
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_155

    .line 120
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzo(Ljava/lang/String;)V

    .line 121
    :cond_155
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_15e

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzA(J)V

    .line 123
    :cond_15e
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16b

    .line 124
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzu(Ljava/lang/String;)V

    .line 125
    :cond_16b
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzw(J)V

    .line 126
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_177

    .line 127
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzy(Ljava/lang/String;)V

    .line 128
    :cond_177
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzC(J)V

    .line 129
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzG(Z)V

    .line 130
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18e

    .line 131
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac(Ljava/lang/String;)V

    :cond_18e
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 132
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdw;->zzav:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 133
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v1

    if-nez v1, :cond_1a1

    .line 134
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzae(J)V

    .line 135
    :cond_1a1
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzag(Z)V

    .line 136
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzai(Ljava/lang/Boolean;)V

    .line 137
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzE(J)V

    .line 138
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()Z

    move-result p1

    if-eqz p1, :cond_1bd

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_1bd
    return-object v0

    .line 108
    :cond_1be
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 19
    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v3

    if-eqz v3, :cond_1e1

    .line 21
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzx(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    .line 23
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzk(Lcom/google/android/gms/measurement/internal/zzaf;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    :cond_1e1
    const/4 v3, 0x0

    const/4 v7, 0x1

    if-nez v0, :cond_223

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 24
    iget-object v8, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-direct {v0, v3, v8}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzfl;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 25
    invoke-virtual {v3, v4, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v3

    if-eqz v3, :cond_216

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v3

    if-eqz v3, :cond_20c

    .line 30
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzD(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 31
    :cond_20c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v1

    if-eqz v1, :cond_220

    .line 32
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(Ljava/lang/String;)V

    goto :goto_220

    .line 27
    :cond_216
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(Ljava/lang/String;)V

    :cond_220
    :goto_220
    move v3, v7

    goto/16 :goto_297

    .line 33
    :cond_223
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 34
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 35
    invoke-virtual {v8, v4, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v8

    if-eqz v8, :cond_23a

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v8

    if-eqz v8, :cond_26e

    .line 37
    :cond_23a
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_26e

    .line 44
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 45
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v2

    if-eqz v2, :cond_266

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v2

    if-eqz v2, :cond_220

    .line 49
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzD(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    goto :goto_220

    .line 47
    :cond_266
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    goto :goto_220

    .line 38
    :cond_26e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 40
    invoke-virtual {v2, v4, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v2

    if-eqz v2, :cond_297

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_297

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v2

    if-eqz v2, :cond_297

    .line 43
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzD(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    goto :goto_220

    .line 50
    :cond_297
    :goto_297
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a9

    .line 51
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    move v3, v7

    .line 52
    :cond_2a9
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2bb

    .line 53
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzi(Ljava/lang/String;)V

    move v3, v7

    .line 54
    :cond_2bb
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb()Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 55
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzdw;->zzah:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v1, v2, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v1

    if-eqz v1, :cond_2e2

    .line 56
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e2

    .line 57
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzk(Ljava/lang/String;)V

    move v3, v7

    .line 58
    :cond_2e2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2fc

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2fc

    .line 60
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzo(Ljava/lang/String;)V

    move v3, v7

    .line 61
    :cond_2fc
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    cmp-long v8, v1, v5

    if-eqz v8, :cond_310

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()J

    move-result-wide v8

    cmp-long v1, v1, v8

    if-eqz v1, :cond_310

    .line 62
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzA(J)V

    move v3, v7

    .line 63
    :cond_310
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32a

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32a

    .line 65
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzu(Ljava/lang/String;)V

    move v3, v7

    .line 66
    :cond_32a
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v8

    cmp-long v1, v1, v8

    if-eqz v1, :cond_33a

    .line 67
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzw(J)V

    move v3, v7

    .line 68
    :cond_33a
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_34e

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34e

    .line 69
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzy(Ljava/lang/String;)V

    move v3, v7

    .line 70
    :cond_34e
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzB()J

    move-result-wide v8

    cmp-long v1, v1, v8

    if-eqz v1, :cond_35e

    .line 71
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzC(J)V

    move v3, v7

    .line 72
    :cond_35e
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzF()Z

    move-result v2

    if-eq v1, v2, :cond_36c

    .line 73
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzG(Z)V

    move v3, v7

    .line 74
    :cond_36c
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_386

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzaa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_386

    .line 76
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac(Ljava/lang/String;)V

    move v3, v7

    :cond_386
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 77
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdw;->zzav:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 78
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v1

    if-nez v1, :cond_3a4

    .line 79
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()J

    move-result-wide v8

    cmp-long v1, v1, v8

    if-eqz v1, :cond_3a4

    .line 80
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzae(J)V

    move v3, v7

    .line 81
    :cond_3a4
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v2

    if-eq v1, v2, :cond_3b2

    .line 82
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzag(Z)V

    move v3, v7

    .line 83
    :cond_3b2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/Boolean;

    move-result-object v2

    if-eq v1, v2, :cond_3c0

    .line 84
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzai(Ljava/lang/Boolean;)V

    move v3, v7

    .line 85
    :cond_3c0
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    cmp-long v4, v1, v5

    if-eqz v4, :cond_3d4

    .line 86
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzD()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_3d4

    .line 87
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzE(J)V

    goto :goto_3d6

    :cond_3d4
    if-eqz v3, :cond_3dd

    .line 88
    :goto_3d6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_3dd
    return-object v0
.end method

.method final zzY(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjz;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzjz;-><init>(Lcom/google/android/gms/measurement/internal/zzkd;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfi;->zze(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    :try_start_11
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_19
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_11 .. :try_end_19} :catch_1e
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_19} :catch_1c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_11 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    move-exception v0

    goto :goto_1f

    :catch_1c
    move-exception v0

    goto :goto_1f

    :catch_1e
    move-exception v0

    :goto_1f
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    .line 7
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final zzZ(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzaj()V

    return-void
.end method

.method public final zzas()Lcom/google/android/gms/measurement/internal/zzz;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzat()Lcom/google/android/gms/measurement/internal/zzei;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    return-object v0
.end method

.method public final zzau()Lcom/google/android/gms/measurement/internal/zzfi;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    return-object v0
.end method

.method public final zzaw()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzaw()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zzax()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method protected final zzc()V
    .registers 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzy()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzex;->zzc:Lcom/google/android/gms/measurement/internal/zzeu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzex;->zzc:Lcom/google/android/gms/measurement/internal/zzeu;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb(J)V

    .line 9
    :cond_37
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzaj()V

    return-void
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzae;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzfc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzc:Lcom/google/android/gms/measurement/internal/zzfc;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzao(Lcom/google/android/gms/measurement/internal/zzjv;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzc:Lcom/google/android/gms/measurement/internal/zzfc;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzeo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzd:Lcom/google/android/gms/measurement/internal/zzeo;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzao(Lcom/google/android/gms/measurement/internal/zzjv;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzd:Lcom/google/android/gms/measurement/internal/zzeo;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzai;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzao(Lcom/google/android/gms/measurement/internal/zzjv;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzeq;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzeq;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzk()Lcom/google/android/gms/measurement/internal/zzjt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzg:Lcom/google/android/gms/measurement/internal/zzjt;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzao(Lcom/google/android/gms/measurement/internal/zzjv;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzg:Lcom/google/android/gms/measurement/internal/zzjt;

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/measurement/internal/zzy;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzh:Lcom/google/android/gms/measurement/internal/zzy;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzao(Lcom/google/android/gms/measurement/internal/zzjv;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzh:Lcom/google/android/gms/measurement/internal/zzy;

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/measurement/internal/zzhs;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzj:Lcom/google/android/gms/measurement/internal/zzhs;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzao(Lcom/google/android/gms/measurement/internal/zzjv;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzj:Lcom/google/android/gms/measurement/internal/zzhs;

    return-object v0
.end method

.method public final zzn()Lcom/google/android/gms/measurement/internal/zzkf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzi:Lcom/google/android/gms/measurement/internal/zzkf;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzao(Lcom/google/android/gms/measurement/internal/zzjv;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzi:Lcom/google/android/gms/measurement/internal/zzkf;

    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/measurement/internal/zzjc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzk:Lcom/google/android/gms/measurement/internal/zzjc;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzed;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm()Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v0

    return-object v0
.end method

.method public final zzr()Lcom/google/android/gms/measurement/internal/zzkk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v0

    return-object v0
.end method

.method final zzs()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzm:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzt(Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzX(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void
.end method

.method final zzu(Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 1
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    .line 8
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzx(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzei;->zzk()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v4, "Setting consent, package, consent"

    .line 11
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzv(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf;)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzi(Lcom/google/android/gms/measurement/internal/zzaf;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzM(Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_4e
    return-void
.end method

.method final zzv(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf;)V
    .registers 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 1
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v0

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzz:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    new-instance v1, Landroid/content/ContentValues;

    .line 12
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    .line 13
    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd()Ljava/lang/String;

    move-result-object p2

    const-string v3, "consent_state"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :try_start_57
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v3, "consent_settings"

    const/4 v4, 0x5

    .line 15
    invoke-virtual {p2, v3, v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_90

    iget-object p2, v0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object p2

    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object p2

    const-string v1, "Failed to insert/update consent setting (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 18
    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_57 .. :try_end_7b} :catch_7c

    return-void

    :catch_7c
    move-exception p2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error storing consent setting. appId, error"

    .line 21
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_90
    return-void
.end method

.method final zzx(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;
    .registers 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    .line 1
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzau()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzs()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzz:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzaf;

    if-nez v0, :cond_7f

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjv;->zzX()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "select consent_state from consent_settings where app_id=? limit 1;"

    .line 9
    :try_start_43
    invoke-virtual {v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 10
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 12
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_51
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_51} :catch_68
    .catchall {:try_start_43 .. :try_end_51} :catchall_66

    if-eqz v3, :cond_5e

    .line 11
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_5e

    :cond_57
    if-eqz v3, :cond_5c

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5c
    const-string v0, "G1"

    .line 17
    :cond_5e
    :goto_5e
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzv(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf;)V

    return-object v0

    :catchall_66
    move-exception p1

    goto :goto_79

    :catch_68
    move-exception p1

    .line 11
    :try_start_69
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v1, "Database error"

    invoke-virtual {v0, v1, v5, p1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    throw p1
    :try_end_79
    .catchall {:try_start_69 .. :try_end_79} :catchall_66

    :goto_79
    if-eqz v3, :cond_7e

    .line 11
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 16
    :cond_7e
    throw p1

    :cond_7f
    return-object v0
.end method

.method final zzy()J
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgf;->zzv()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzex;->zzg:Lcom/google/android/gms/measurement/internal/zzeu;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zza()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_3c

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkk;->zzf()Ljava/security/SecureRandom;

    move-result-object v3

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzex;->zzg:Lcom/google/android/gms/measurement/internal/zzeu;

    .line 7
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb(J)V

    :cond_3c
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method final zzz(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .registers 36
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v2

    if-eqz v2, :cond_f8

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto/16 :goto_f8

    .line 5
    :cond_1c
    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzal(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_40

    .line 6
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const-string v5, "_ui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zze()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Could not find package. appId"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5a

    .line 9
    :cond_40
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5a

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzei;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    .line 35
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_5a
    :goto_5a
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzp;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v6

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/String;

    move-result-object v8

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()J

    move-result-wide v9

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzB()J

    move-result-wide v11

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzF()Z

    move-result v16

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v17

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()J

    move-result-wide v24

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v22

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v26

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/Boolean;

    move-result-object v27

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzD()J

    move-result-wide v28

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzaj()Ljava/util/List;

    move-result-object v30

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb()Z

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 26
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v13

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v15

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzdw;->zzah:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {v13, v15, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v1

    const/4 v13, 0x0

    if-eqz v1, :cond_af

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Ljava/lang/String;

    move-result-object v1

    goto :goto_b0

    :cond_af
    move-object v1, v13

    .line 28
    :goto_b0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzdw;->zzay:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 28
    invoke-virtual {v2, v13, v15}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 30
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkd;->zzx(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd()Ljava/lang/String;

    move-result-object v2

    goto :goto_cc

    :cond_ca
    const-string v2, ""

    :goto_cc
    move-object/from16 v31, v2

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v32, v14

    move/from16 v14, v16

    move-object/from16 v16, v17

    move-wide/from16 v17, v24

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-wide/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v29, v1

    move-object/from16 v30, v31

    .line 31
    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzA(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 2
    :cond_f8
    :goto_f8
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkd;->zzl:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzj()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
