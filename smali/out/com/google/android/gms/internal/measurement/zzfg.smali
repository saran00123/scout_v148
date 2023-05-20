.class public abstract Lcom/google/android/gms/internal/measurement/zzfg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic zzc:I

.field private static final zzd:Ljava/lang/Object;

.field private static volatile zze:Lcom/google/android/gms/internal/measurement/zzff;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile zzf:Z

.field private static final zzg:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/internal/measurement/zzfg<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static final zzh:Lcom/google/android/gms/internal/measurement/zzfi;

.field private static final zzj:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final zza:Lcom/google/android/gms/internal/measurement/zzfe;

.field final zzb:Ljava/lang/String;

.field private final zzi:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile zzk:I

.field private volatile zzl:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzm:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfg;->zzd:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfg;->zze:Lcom/google/android/gms/internal/measurement/zzff;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzfg;->zzf:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfg;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzez;->zza:Lcom/google/android/gms/internal/measurement/zzfj;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>(Lcom/google/android/gms/internal/measurement/zzfj;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfg;->zzh:Lcom/google/android/gms/internal/measurement/zzfi;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfg;->zzj:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzfe;Ljava/lang/String;Ljava/lang/Object;ZLcom/google/android/gms/internal/measurement/zzfa;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x1

    iput p4, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzk:I

    iget-object p4, p1, Lcom/google/android/gms/internal/measurement/zzfe;->zzb:Landroid/net/Uri;

    if-eqz p4, :cond_14

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zza:Lcom/google/android/gms/internal/measurement/zzfe;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzi:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzm:Z

    return-void

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzb(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzfg;->zzf:Z

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfg;->zzd:Ljava/lang/Object;

    .line 1
    monitor-enter v0

    :try_start_5
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfg;->zze:Lcom/google/android/gms/internal/measurement/zzff;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_e

    move-object p0, v2

    :cond_e
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzff;->zza()Landroid/content/Context;

    move-result-object v1

    if-eq v1, p0, :cond_34

    .line 3
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzen;->zzd()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->zzb()V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzeu;->zzc()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzey;

    .line 6
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzey;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzfs;->zza(Lcom/google/android/gms/internal/measurement/zzfo;)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzek;

    .line 8
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/measurement/zzek;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzfo;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzfg;->zze:Lcom/google/android/gms/internal/measurement/zzff;

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 10
    :cond_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_36

    throw p0
.end method

.method static zzc()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfg;->zzj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public final zzd()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zza:Lcom/google/android/gms/internal/measurement/zzfe;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfe;->zzd:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzm:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 15
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "flagName must not be null"

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 0
    :cond_11
    :goto_11
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfg;->zzj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzk:I

    if-ge v1, v0, :cond_123

    monitor-enter p0

    :try_start_1c
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzk:I

    if-ge v1, v0, :cond_11e

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfg;->zze:Lcom/google/android/gms/internal/measurement/zzff;

    sget-boolean v2, Lcom/google/android/gms/internal/measurement/zzfg;->zzf:Z

    const-string v2, "Must call PhenotypeFlag.init() first"

    if-eqz v1, :cond_118

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zza:Lcom/google/android/gms/internal/measurement/zzfe;

    .line 2
    iget-boolean v3, v2, Lcom/google/android/gms/internal/measurement/zzfe;->zzf:Z

    .line 3
    iget-boolean v2, v2, Lcom/google/android/gms/internal/measurement/zzfe;->zzg:Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzff;->zza()Landroid/content/Context;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzeu;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzeu;

    move-result-object v2

    const-string v3, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzeu;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_76

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzei;->zzc:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_76

    const-string v2, "PhenotypeFlag"

    const/4 v4, 0x3

    .line 7
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_74

    const-string v2, "PhenotypeFlag"

    const-string v4, "Bypass reading Phenotype values for flag: "

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzd()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_6b

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_71

    .line 22
    :cond_6b
    new-instance v5, Ljava/lang/String;

    .line 8
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_71
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    move-object v2, v3

    goto :goto_bd

    :cond_76
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zza:Lcom/google/android/gms/internal/measurement/zzfe;

    .line 9
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzfe;->zzb:Landroid/net/Uri;

    if-eqz v2, :cond_a1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzff;->zza()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zza:Lcom/google/android/gms/internal/measurement/zzfe;

    .line 10
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzfe;->zzb:Landroid/net/Uri;

    .line 11
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/zzew;->zza(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_9f

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zza:Lcom/google/android/gms/internal/measurement/zzfe;

    .line 12
    iget-boolean v2, v2, Lcom/google/android/gms/internal/measurement/zzfe;->zzh:Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzff;->zza()Landroid/content/Context;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zza:Lcom/google/android/gms/internal/measurement/zzfe;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzfe;->zzb:Landroid/net/Uri;

    .line 14
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/zzen;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/zzen;

    move-result-object v2

    goto :goto_ad

    :cond_9f
    move-object v2, v3

    goto :goto_ad

    .line 17
    :cond_a1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzff;->zza()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zza:Lcom/google/android/gms/internal/measurement/zzfe;

    .line 15
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzfe;->zza:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfh;->zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v2

    :goto_ad
    if-eqz v2, :cond_74

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/measurement/zzer;->zze(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_74

    .line 17
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_bd
    if-eqz v2, :cond_c0

    goto :goto_e6

    .line 27
    :cond_c0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zza:Lcom/google/android/gms/internal/measurement/zzfe;

    .line 18
    iget-boolean v4, v2, Lcom/google/android/gms/internal/measurement/zzfe;->zze:Z

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzfe;->zzi:Lcom/google/android/gms/internal/measurement/zzfl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzff;->zza()Landroid/content/Context;

    move-result-object v2

    .line 19
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzeu;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzeu;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zza:Lcom/google/android/gms/internal/measurement/zzfe;

    .line 20
    iget-boolean v5, v4, Lcom/google/android/gms/internal/measurement/zzfe;->zze:Z

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzfe;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzb:Ljava/lang/String;

    .line 21
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzeu;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e1

    .line 22
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_e2

    :cond_e1
    move-object v2, v3

    :goto_e2
    if-nez v2, :cond_e6

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzi:Ljava/lang/Object;

    .line 8
    :cond_e6
    :goto_e6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzff;->zzb()Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v1

    .line 23
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzfo;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfm;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfm;->zza()Z

    move-result v4

    if-eqz v4, :cond_113

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfm;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzev;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zza:Lcom/google/android/gms/internal/measurement/zzfe;

    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzfe;->zzb:Landroid/net/Uri;

    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/zzfe;->zza:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzfe;->zzd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzb:Ljava/lang/String;

    .line 26
    invoke-virtual {v1, v4, v3, v2, v5}, Lcom/google/android/gms/internal/measurement/zzev;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10f

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzi:Ljava/lang/Object;

    goto :goto_113

    .line 27
    :cond_10f
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 26
    :cond_113
    :goto_113
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzl:Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzk:I

    goto :goto_11e

    .line 30
    :cond_118
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_11e
    :goto_11e
    monitor-exit p0

    goto :goto_123

    :catchall_120
    move-exception v0

    monitor-exit p0
    :try_end_122
    .catchall {:try_start_1c .. :try_end_122} :catchall_120

    throw v0

    :cond_123
    :goto_123
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zzl:Ljava/lang/Object;

    return-object v0
.end method
